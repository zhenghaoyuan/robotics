#!/usr/bin/env python
import rospy
import math
import time
from geometry_msgs.msg import Point
from geometry_msgs.msg import Twist
from turtlesim.msg import Pose
class turtle():
    def __init__(self):
        self.point = Point()
        self.moveone = 2.0
        rospy.init_node('drawer',anonymous = True)
        i = 0 
        while i < 7:
            pub = rospy.Publisher('turtle1/cmd_vel',Twist,queue_size = 10)
            self.rate = rospy.Rate(100)
            twist = Twist()
            twist.angular.z = 1.5
            startangle = 0
            if i == 0:
                angle = 2.0196
            else:
                angle = 0.8976
            t0 = rospy.Time.now().to_sec()
            while startangle < angle and not rospy.is_shutdown():
                pub.publish(twist)
                t1 = rospy.Time.now().to_sec()
                startangle = 1.5 * (t1 - t0)
                self.rate.sleep()
            twist.angular.z = 0
            pub.publish(twist)
            startdis = 0
            twist.linear.x = 2.0
            t0 = rospy.Time.now().to_sec()
            while startdis < self.moveone and not rospy.is_shutdown():
                pub.publish(twist)
                t1 = rospy.Time.now().to_sec()
                startdis = 2.0 * (t1 - t0)
                self.rate.sleep()
            twist.linear.x = 0
            pub.publish(twist)
            i = i + 1
          
if __name__ == '__main__':
    turtle()
