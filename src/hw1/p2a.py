#!/usr/bin/env python
import rospy
from geometry_msgs.msg import Twist

def setposition():
	pub = rospy.Publisher('turtle1/cmd_vel',Twist,queue_size = 10)
	rospy.init_node('setposition', anonymous = True)
	rate = rospy.Rate(10)
	twist = Twist();
	twist.linear.x = 3.0
	twist.linear.y = 0.0
	twist.linear.z =  0.0
	twist.angular.x = 0.0
	twist.angular.y = 0.0
	twist.angular.z = 2.0
	rate = rospy.Rate(1)
	i = 4
	while i >=0 and not rospy.is_shutdown():
		pub.publish(twist)
		i = i - 1
		rate.sleep()

		

	

if __name__ == "__main__":
	setposition()



	 
  
