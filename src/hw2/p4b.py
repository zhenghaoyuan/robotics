#!/usr/bin/env python
import rospy
import math
import numpy as np;
from foundations_hw2.srv import *;
from foundations_hw2.msg import EulerAngles;
from tf.transformations import quaternion_from_euler;
from tf.transformations import euler_from_quaternion;
def slerp(q1,q2,t):
    if t == 0:
        return q1;
    dot = q1.dot(q2)
    if abs(dot) > 0.995:
        re = q1 + t*(q2 -q1);
        return re;
    if dot < 0:
        q1 = -q1;
        dot = -dot;
    theta0 = math.acos(dot);
    theta = theta0*t;
    ra = math.sin((1- t)*theta) / math.sin(theta);
    rb = math.sin(t*theta) / math.sin(theta);
    return q1*ra + q2*rb;

def callback(event):
    global q1,q2,pub,count,times,timer,t;
    t = t + 0.1;
    rospy.loginfo(t);
    q3 = slerp(q1,q2,t/times);
    (x,y,z)= euler_from_quaternion(q3);
    eu = EulerAngles();
    rospy.loginfo(x);
    rospy.loginfo(y);
    rospy.loginfo(z);
    eu.psi = x;
    eu.theta = y;
    eu.phi = z;
    pub.publish(eu);
    if (t >= times):
        timer.shutdown();
    
    
    
def run():
    rospy.init_node('euleranglecal',anonymous = True);
    rospy.wait_for_service('foundations_hw2/interpolate_problem')
    getinter = rospy.ServiceProxy('foundations_hw2/interpolate_problem',Interpolate);
    try:
        interp = getinter();
    except rospy.ServiceException as exc:
        print("service not available");
    global q1,q2,pub,times,t,count,timer;
    euler = EulerAngles();
    euler.phi = interp.initial.phi;
    euler.theta = interp.initial.theta;
    euler.psi = interp.initial.psi;
    t = 0;
    q1 =quaternion_from_euler(euler.psi,euler.theta,euler.phi);
    q2 = quaternion_from_euler(interp.final.psi,interp.final.theta,interp.final.phi);
    rospy.loginfo("following is the final place");
    rospy.loginfo(interp.final.psi);
    rospy.loginfo(interp.final.theta);
    rospy.loginfo(interp.final.phi);
    times = interp.seconds;
    
    pub = rospy.Publisher('vrep/shape_pose',EulerAngles,queue_size = 10);
    timer = rospy.Timer(rospy.Duration(0.1),callback);
    rospy.spin();
    

if __name__ == '__main__':
    run();