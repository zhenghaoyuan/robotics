#!/usr/bin/env python
import sys
import rospy
import math
from turtlesim.srv import *
from geometry_msgs.msg import Twist


def run(x,y):
    rospy.wait_for_service('/spawn')
    try:
        spawn = rospy.ServiceProxy('/spawn',Spawn)
    except rospy.ServiceException, e:
        print "haha, I don't know what's happening"
    rospy.init_node('square',anonymous = True)
    #firstly is to spawn the turtle in the target place 
    turtlename = spawn(x,y,0,'')
    while (1):
        pub = rospy.Publisher(turtlename.name + '/cmd_vel',Twist,queue_size = 10)
        rate = rospy.Rate(100)
        twist = Twist()
        startdis = 0
        twist.linear.x = 2.0
        t0 = rospy.Time.now().to_sec()
        move = 1.0
        while startdis < move and not rospy.is_shutdown():
            pub.publish(twist)
            t1 = rospy.Time.now().to_sec()
            startdis = 2.0 * (t1 - t0)
            rate.sleep()
        twist.linear.x = 0
        pub.publish(twist)
        #turn pi/2 left
        twist.angular.z = 0.3
        angle = round(math.pi/2,5)
        startangle = 0
        t0 = rospy.Time.now().to_sec()
        while startangle < angle and not rospy.is_shutdown():
            pub.publish(twist)
            t1 = rospy.Time.now().to_sec()
            startangle = 0.3 * (t1 - t0)
            rate.sleep()
        twist.angular.z = 0
        pub.publish(twist)
    
        
    
    








if __name__ == '__main__':
    if (len(sys.argv) >=3):
        x = float(sys.argv[1])
        y = float(sys.argv[2])
        run(x,y)
    else:
        print "sorry, but you have failed"
