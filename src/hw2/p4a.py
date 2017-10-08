#!/usr/bin/env python
import rospy
import math
from foundations_hw2.srv import *;
from foundations_hw2.msg import EulerAngles;
def callback(event):
    global dphi,dtheta,dpsi,euler,pub,count,times,timer;
    euler.phi = euler.phi + dphi;
    euler.theta = euler.theta + dtheta;
    euler.psi = euler.psi + dpsi;
    pub.publish(euler);
    rospy.loginfo(euler);
    count = count + 1;
    if (count >= times):
        timer.shutdown();
    
    
    
def run():
    rospy.init_node('euleranglecal',anonymous = True);
    rospy.wait_for_service('foundations_hw2/interpolate_problem')
    getinter = rospy.ServiceProxy('foundations_hw2/interpolate_problem',Interpolate);
    try:
        interp = getinter();
    except rospy.ServiceException as exc:
        print("service not available");
    global dphi,dtheta,dpsi,euler,pub,times,count,timer;
    count = 0;
    euler = EulerAngles();
    euler.phi = interp.initial.phi;
    euler.theta = interp.initial.theta;
    euler.psi = interp.initial.psi;
    times = interp.seconds*10;
    dphi = (interp.final.phi - interp.initial.phi)/(interp.seconds*10);
    dtheta = (interp.final.theta - interp.initial.theta)/(interp.seconds*10);
    dpsi = (interp.final.psi - interp.initial.psi)/(interp.seconds*10);
    pub = rospy.Publisher('vrep/shape_pose',EulerAngles,queue_size = 10);
    timer = rospy.Timer(rospy.Duration(0.1),callback);
    rospy.spin();
    

if __name__ == '__main__':
    run();