#!/usr/bin/env python
import rospy
import math
import numpy as np
from foundations_hw2.msg import JointAngles
from geometry_msgs.msg import Point
from hw2.srv import p2b;
from std_msgs.msg import Float64MultiArray;


def callback(data):
    rospy.loginfo(data.angles);
    resp = getj(data);
    
def test():
    rospy.init_node('p2b_test',anonymous = True);
    rospy.wait_for_service('p2b');
    global getj;
    getj = rospy.ServiceProxy('p2b', p2b);
    rospy.wait_for_message('foundations_hw2/arm_config',JointAngles,timeout = None);
    rospy.Subscriber('foundations_hw2/arm_config',JointAngles,callback);
    rospy.spin();

if __name__ =='__main__':
    test();