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
		rospy.init_node('tracer',anonymous = True)
		while(1):
			self.subpoint = rospy.Subscriber('/hw1/target_loc',Point,self.callback)
			self.subpose = rospy.Subscriber('/turtle1/pose',Pose, self.move)
			self.pub = rospy.Publisher('turtle1/cmd_vel',Twist,queue_size = 10)
			self.pose = Pose()
			self.rate = rospy.Rate(100)
			time.sleep(0.5)
			twist = Twist()
			startangle = 0
			angle = math.atan2(self.point.y - self.pose.y,self.point.x - self.pose.x)
			angle = angle - self.pose.theta
			if (angle  > 0):
				twist.angular.z = 1.0
			else:
				twist.angular.z = -1.0
			
			t0 = rospy.Time.now().to_sec()
			while startangle < abs(angle) and not rospy.is_shutdown():
				self.pub.publish(twist)
				t1 = rospy.Time.now().to_sec()
				startangle = 1.0 * (t1 - t0)
				self.rate.sleep()
			twist.angular.z = 0
			self.pub.publish(twist)
			distance = math.sqrt((self.point.y - self.pose.y)**2 + (self.point.x - self.pose.x)**2)
			startdis = 0
			twist.linear.x = 3.0
			t0 = rospy.Time.now().to_sec()
			while startdis < distance and not rospy.is_shutdown():
				self.pub.publish(twist)
				t1 = rospy.Time.now().to_sec()
				startdis = 3.0 * (t1 - t0)
				self.rate.sleep()
			twist.linear.x = 0
			self.pub.publish(twist)	
		
	def callback(self,data):
		self.point = data
		self.point.x = data.x
		self.point.y = data.y

	def move(self,data):
		self.pose = data
		self.pose.x = data.x
		self.pose.y = data.y
		self.pose.theta = data.theta
        
        
if __name__ == '__main__':
	turtle()
		
    
	
