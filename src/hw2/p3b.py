#!/usr/bin/env python
import rospy
import math
import numpy as np
import time
from foundations_hw2.msg import JointAngles
from geometry_msgs.msg import Pose;
from geometry_msgs.msg import Point;
from std_msgs.msg import Float64;
from hw2.srv import p3a;

def run():
    rospy.init_node('painting',anonymous = True);
    rospy.wait_for_service('IKcomputation');
    intip1 = Point();
    intip2 = Point();
    intip3 = Point();
    intip1.x = 0;
    intip1.y = 0;
    intip1.z = 0.5;
    intip2.x = 0;
    intip2.y = -1;
    intip2.z = 0.5;
    intip3.x = 0;
    intip3.y = -0.5;
    intip3.z = 0;
    joint1 = rospy.Publisher('vrep/youbot/arm/joint1/angle',Float64,queue_size = 10);
    joint2 = rospy.Publisher('vrep/youbot/arm/joint2/angle',Float64,queue_size = 10);
    joint3 = rospy.Publisher('vrep/youbot/arm/joint3/angle',Float64,queue_size = 10);
    joint4 = rospy.Publisher('vrep/youbot/arm/joint4/angle',Float64,queue_size = 10);
    try:
        while (1):
            getjoint = rospy.ServiceProxy('IKcomputation',p3a);
            angle = getjoint(intip1);
            joint1.publish(angle.joint1);
            joint2.publish(angle.joint2);
            joint3.publish(angle.joint3);
            joint4.publish(angle.joint4);
            time.sleep(0.1)
            angle = getjoint(intip2);
            joint1.publish(angle.joint1);
            joint2.publish(angle.joint2);
            joint3.publish(angle.joint3);
            joint4.publish(angle.joint4);
            time.sleep(0.1)
            angle = getjoint(intip3);
            joint1.publish(angle.joint1);
            joint2.publish(angle.joint2);
            joint3.publish(angle.joint3);
            joint4.publish(angle.joint4);
            time.sleep(0.1)
    except rospy.ServiceException, e:
        print "Service call failed: %s"%e;
    return;
        
    


if __name__ == '__main__':
    run();