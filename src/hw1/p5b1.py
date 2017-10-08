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
    
    
def runturtle(event):
    global tname
    
    t0 = rospy.Time.now().to_sec()
    targetx = random.random() * 5.0
    targety = random.random() * 10
    
    t1 = rospy.Time.now().to_sec()
    global location
    subpose = rospy.Subscriber(tname + '/pose',Pose,move)
    rospy.wait_for_message(tname + '/pose',Pose,timeout = None)
    pub = rospy.Publisher(tname + '/cmd_vel',Twist,queue_size = 10)
    pose = Pose()
    rate = rospy.Rate(100)
    twist = Twist()
    startangle = 0
    angle = math.atan2(targety - location.y,targetx - location.x)
    angle = angle - location.theta
    if (angle  > 0):
        twist.angular.z = 2.0
    else:
        twist.angular.z = -2.0
    t3 = rospy.Time.now().to_sec()
    while startangle < abs(angle) and not rospy.is_shutdown():
        pub.publish(twist)
        t4 = rospy.Time.now().to_sec()
        startangle = 2.0 * (t4 - t3)
        rate.sleep()
    twist.angular.z = 0
    pub.publish(twist)
    distance = math.sqrt((targety - location.y)**2 + (targetx - location.x)**2)
    startdis = 0
    twist.linear.x = 3.0
    t3 = rospy.Time.now().to_sec()
    while startdis < distance and not rospy.is_shutdown():
        pub.publish(twist)
        t4 = rospy.Time.now().to_sec()
        startdis = 3.0 * (t4 - t3)
        rate.sleep()
    twist.linear.x = 0
    pub.publish(twist)
    
        
        
    

def startturtle():
    rospy.wait_for_service('/spawn')
    try:
        spawn = rospy.ServiceProxy('/spawn',Spawn)
    except rospy.ServiceException, e:
        print "haha, I don't know what's happening"
    rospy.init_node('randomturtle',anonymous = True)
    turtlename = spawn(3.0,3.0,0,'Ross1')
    global tname
    tname = turtlename.name
    rospy.Timer(rospy.Duration(1),runturtle)
    rospy.spin()
    
    
    

if __name__ == '__main__':
    startturtle()








