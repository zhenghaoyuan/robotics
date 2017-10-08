#!/usr/bin/env python
import sys
import rospy
import random
from geometry_msgs.msg import Twist

def my_callback(event):
    pub = rospy.Publisher('turtle1/cmd_vel',Twist,queue_size = 10)
    twist = Twist()
    twist.linear.x = random.random()*2
    twist.angular.z = (random.random() - 0.5) * 4
    pub.publish(twist)
    
    
    
    
if __name__ == '__main__':
    if len(sys.argv) >= 2:
        freq = float(sys.argv[1])
        dur = 1/freq
        rospy.init_node('Timer',anonymous = True)
        rospy.Timer(rospy.Duration(dur),my_callback)
        rospy.spin()
    else:
        print "need frequency parameter"
