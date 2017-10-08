#!/usr/bin/env python
import rospy
import math
import sys
from geometry_msgs.msg import Point
from foundations_hw1.srv import *
from hw1.msg import gradient

def search(x,y):
    stepx = 0.001
    stepy = 0.001
    findx = False
    findy = False
    rospy.wait_for_service('/reward')
    functionf = rospy.ServiceProxy('/reward',Reward)
    pub = rospy.Publisher('turtlegradient',gradient,queue_size = 10)
    
    while findx == False or findy == False:
        if not findx:
            gradientx = (functionf(Point(x + stepx,y,0)).value - functionf(Point(x,y,0)).value)/stepx
        if not findy:
            gradienty = (functionf(Point(x ,y + stepy,0)).value - functionf(Point(x,y,0)).value)/stepy
        if abs(gradientx)< 0.0001:
            findx = True
        else:
            x = x - 0.001*gradientx
        if abs(gradienty) < 0.0001:
            findy = True
        else:
            y = y - 0.001*gradienty
        grad = gradient()
        grad.x = gradientx
        grad.y = gradienty
        pub.publish(grad)
    print "lalala, I find the result"
    rospy.loginfo(str(gradientx))
    rospy.loginfo(str(gradienty))
    rospy.loginfo(str(x))
    rospy.loginfo(str(y))
    
                
    







if __name__ == '__main__':
    startx = float(sys.argv[1])
    starty = float(sys.argv[2])
    rospy.init_node('search_turtle',anonymous=True)
    search(startx,starty)
    