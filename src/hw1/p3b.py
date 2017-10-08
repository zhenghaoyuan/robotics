#!/usr/bin/env python
import time
import rospy
from foundations_hw1.srv import *
from turtlesim.msg import Pose
from geometry_msgs.msg import Point
turtle1pose = Pose()
def getpose(data):
    global turtle1pose
    turtle1pose = data
def handle_escape(req):
    catchpose = rospy.Subscriber('turtle1/pose',Pose,getpose)
    time.sleep(0.1)
    point = Point()
    global turtle1pose
    if req.pose.y < 0.2:
        point.y = req.pose.y + 1.5
    elif req.pose.y > 10.99:
        point.y = req.pose.y - 1.5 
    elif turtle1pose.y > req.pose.y:
        point.y = req.pose.y - 0.5
    else:
        point.y = req.pose.y + 0.5
    if req.pose.x < 0.2:
         point.x = req.pose.x + 1.5
    elif req.pose.x > 10.99:
        point.x = req.pose.x - 1.5
    elif turtle1pose.x > req.pose.x:
        point.x = req.pose.x - 0.5
    else:
        point.x = req.pose.x + 0.5
    
    #point.x = (point.y - req.pose.y) * (req.pose.y - turtle1pose.y)/(req.pose.x - turtle1pose.x)
    return EscapeResponse(point)
        
    
    
    
def escape_server():
    rospy.init_node('escapepoint')
    s = rospy.Service('/escape',Escape,handle_escape)
    rospy.spin()
    

    
if __name__ == '__main__':
    escape_server()
    