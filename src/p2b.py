#!/usr/bin/env python
import rospy
import sys
from std_msgs.msg import String
from std_msgs.msg import Float64
from std_msgs.msg import Int64MultiArray
from geometry_msgs.msg import Point
from geometry_msgs.msg import Twist


def callback(data):
	rospy.loginfo(data)

def listener():
	strcommand = str(sys.argv)
	dic = {'std_msgs/String':String,'std_msgs/FLoat64':Float64,'std_msgs/Int64MultiArray': Int64MultiArray,'geometry_msgs/Point':Point,'geometry_msgs/Twist':Twist}
	rospy.init_node('listener',anonymous = True)
	rospy.Subscriber(sys.argv[1],dic[sys.argv[2]],callback)
	rospy.spin()

if __name__ == '__main__':
	listener()
