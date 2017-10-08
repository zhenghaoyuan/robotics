#!/usr/bin/env python
import rospy
import math
import time
import random
from turtlesim.srv import *
from geometry_msgs.msg import Twist
from turtlesim.msg import Pose

location = Pose();
tname = ''
def move(data):
    global location
    location = data
    
    
def runturtle():
    rate = rospy.Rate(100)
    global location
    global tname
    pub = rospy.Publisher(tname + '/cmd_vel',Twist,queue_size = 10)
    twist = Twist()
    while (1):
        sub = rospy.Subscriber('/Ross1/pose',Pose,move)
        rospy.wait_for_message('/Ross1/pose',Pose,timeout = None)
        print(location.angular_velocity)
        twist.linear.x = location.linear_velocity
        twist.angular.z = -location.angular_velocity
        pub.publish(twist)
        rate.sleep()
    
        
        
    

def startturtle():
    rospy.wait_for_service('/spawn')
    try:
        spawn = rospy.ServiceProxy('/spawn',Spawn)
    except rospy.ServiceException, e:
        print "haha, I don't know what's happening"
    rospy.init_node('imitationturtle',anonymous = True)
    turtlename = spawn(8.0,3.0,math.pi,'Ross2')
    global tname
    tname = turtlename.name
    runturtle()
    rospy.spin()
    
    
    

if __name__ == '__main__':
    startturtle()