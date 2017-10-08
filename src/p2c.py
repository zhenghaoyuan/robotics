#!/usr/bin/env python
import rospy
from geometry_msgs.msg import Point
from geometry_msgs.msg import Twist
def callback(data):
	twist = Twist()
	twist.linear.x = data.x
	twist.linear.y = data.y
	twist.linear.z = data.z
	pub = rospy.Publisher('turtle1/cmd_vel',Twist,queue_size = 10)
	rate = rospy.Rate(10)
	while not rospy.is_shutdown():
		pub.publish(twist)
		rate.sleep()
	

def listener():
	rospy.init_node('tracer',anonymous = True)
	rospy.Subscriber('/hw1/target_loc',Point,callback)
	rospy.spin()

if __name__ == '__main__':
	listener()
	
