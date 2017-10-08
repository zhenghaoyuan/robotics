#!/usr/bin/python3
import rospy
from geometry_msgs import Twist

def setposition():
	pub = rospy.Publisher('turtle1/cmd_vel',Twist)
	rospy.init_node('setposition', anonymous = True)
	pub.publish(5.0,5.0,5.0,5.0,5.0,5.0)
	

if __name__ == "__main__":
	try:
		setposition()
	except rospy.ROSInterruptException:
		pass


	 
  
