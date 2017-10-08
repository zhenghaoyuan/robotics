#!/usr/bin/env python
import sys
import rospy
import math
from turtlesim.srv import *
from geometry_msgs.msg import Twist


def turtlespawn():
    rospy.wait_for_service('/spawn')
    try:
        spawn = rospy.ServiceProxy('/spawn',Spawn)
        turtle1 = spawn(2,2,0,'Leonardo')
        turtle2 = spawn(2,6,0,'Donatello')
        turtle3 = spawn(6,2,0,'Michelangelo')
        turtle4 = spawn(6,6,0,'Raphael')
        
        
    except rospy.ServiceException, e:
        print "haha, I don't know what's happening"
        
    #after create the four turtle,we give them the message for each of them to
    #run in the square
    rospy.init_node('moveturtle',anonymous = True)
    while (1):
        #firstly move forward
        pub1 = rospy.Publisher('Leonardo/cmd_vel',Twist,queue_size = 10)
        pub2 = rospy.Publisher('Donatello/cmd_vel',Twist,queue_size = 10)
        pub3 = rospy.Publisher('Michelangelo/cmd_vel',Twist,queue_size = 10)
        pub4 = rospy.Publisher('Raphael/cmd_vel',Twist,queue_size = 10)
        rate = rospy.Rate(500)
        twist = Twist()
        startdis = 0
        twist.linear.x = 2.0
        t0 = rospy.Time.now().to_sec()
        move = 3.0
        while startdis < move and not rospy.is_shutdown():
            pub1.publish(twist)
            pub2.publish(twist)
            pub3.publish(twist)
            pub4.publish(twist)
            t1 = rospy.Time.now().to_sec()
            startdis = 2.0 * (t1 - t0)
            rate.sleep()
        twist.linear.x = 0
        pub1.publish(twist)
        pub2.publish(twist)
        pub3.publish(twist)
        pub4.publish(twist)
        #turn pi/2 left
        twist.angular.z = 0.5
        angle = round(math.pi/2,5)
        startangle = 0
        t0 = rospy.Time.now().to_sec()
        while startangle < angle and not rospy.is_shutdown():
            pub1.publish(twist)
            pub2.publish(twist)
            pub3.publish(twist)
            pub4.publish(twist)
            t1 = rospy.Time.now().to_sec()
            startangle = 0.5 * (t1 - t0)
            rate.sleep()
        twist.angular.z = 0
        pub1.publish(twist)
        pub2.publish(twist)
        pub3.publish(twist)
        pub4.publish(twist)

            


if __name__ == '__main__':
    turtlespawn()
