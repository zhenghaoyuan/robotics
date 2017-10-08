#!/usr/bin/env python
import rospy
import math
import numpy as np
from foundations_hw2.msg import JointAngles
from geometry_msgs.msg import Point
from hw2.srv import *;


pub = None;
def handle_p1b(req):
    angle = req.angle.angles;
    alpha = [0,math.pi/2,0,0];
    a = [0,0.033,0.155,0.135];
    d = [0.1,0,0,0];
    result = np.array([[1,0,0,0],[0,1,0,0],[0,0,1,0],[0,0,0,1]]);
    angles= [0,0,0,0];
    angles[0] = angle[0] + math.pi/2;
    angles[1] = angle[1] + math.pi/2;
    angles[2] = angle[2];
    angles[3] = angle[3] + math.pi/2;
    for i in range(0,4):
        Hr = np.array([[1,0,0,0],[0,math.cos(alpha[i]),-math.sin(alpha[i]),0],[0,math.sin(alpha[i]),math.cos(alpha[i]),0],[0,0,0,1]]);
        Hq = np.array([[1,0,0,a[i]],[0,1,0,0],[0,0,1,0],[0,0,0,1]]);
        Hp = np.array([[math.cos(angles[i]),-math.sin(angles[i]),0,0],[math.sin(angles[i]),math.cos(angles[i]),0,0],[0,0,1,0],[0,0,0,1]]);
        Hi = np.array([[1,0,0,0],[0,1,0,0],[0,0,1,d[i]],[0,0,0,1]]);
        result = np.dot(result,np.dot(np.dot(np.dot(Hr,Hq),Hp),Hi));
    pointp = np.array([0,-0.2175,0,1]).T;
    pointpg = np.dot(result,pointp);
    point = Point();
    point.x = pointpg[0];
    point.y = pointpg[1];
    point.z = pointpg[2];
    return p1bResponse(point);
    

def run():
    rospy.init_node('forwardcompute',anonymous = True);
    s = rospy.Service('forwardcompute',p1b,handle_p1b);
    print "finish computing.";
    rospy.spin();
    '''global pub;
    pub = rospy.Publisher('/vrep/youbot/target/position',Point,queue_size = 10);
    getjoint = rospy.Subscriber('foundations_hw2/arm_config',JointAngles,forwardcomputation);
    rospy.wait_for_message('foundations_hw2/arm_config',JointAngles,timeout = None);'''
    

if __name__ == '__main__':
    run();
