#!/usr/bin/env python
import sys
import rospy
import math
from foundations_hw2.msg import Ackermann
from geometry_msgs.msg import Twist
def velocitycompute(data):
    b = 2.5772;
    velocity = math.sqrt(data.linear.x**2 + data.linear.y**2);
    angular = math.atan(data.angular.z)/b * velocity;
    ac = Ackermann();
    ac.vel = velocity;
    ac.steering_angle = -angular;
    tw = Twist();
    tw.linear = data.linear;
    tw.angular = data.angular;
    pub2.publish(ac);
    pub1.publish(tw);
def run():
    rospy.init_node('publishvelocity',anonymous = True);
    global pub1;
    pub1 = rospy.Publisher('vrep/youbot/base/cmd_vel',Twist,queue_size = 10);
    global pub2;
    pub2 = rospy.Publisher('vrep/ackermann/cmd_vel',Ackermann,queue_size = 10);
    
    rospy.wait_for_message('foundations_hw2/cmd_vel',Twist,timeout = None);
    rospy.Subscriber('foundations_hw2/cmd_vel',Twist,velocitycompute);
    rospy.spin();




if __name__ =='__main__':
    run();
    