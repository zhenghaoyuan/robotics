#!/usr/bin/env python
import rospy
import numpy as np
from foundations_hw2.msg import JointAngles
from geometry_msgs.msg import Point
from std_msgs.msg import Float64
from hw2.srv import *;

def run():
    rospy.wait_for_service('forwardcompute');
    try:
        getpoint = rospy.ServiceProxy('forwardcompute',p1b);
        jointangles = JointAngles();
        jointangles.angles[0] = 1;
        jointangles.angles[1] = 2;
        jointangles.angles[2] = 3;
        jointangles.angles[3] = 4;
        jointangles.angles[4] = 5;
        response = getpoint(jointangles);
        print response.point;
    except rospy.ServiceException, e:
        print "fail";
        

        
if __name__ == '__main__':
    run();