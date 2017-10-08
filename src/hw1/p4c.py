#!/usr/bin/env python 
import rospy
import time
from std_msgs.msg import Int32
from std_msgs.msg import String
fre = Int32()
def getdata(data):
    global fre
    fre = data.data
    
    
    

def run(event):
    t0 = rospy.Time.now().to_sec()
    sub = rospy.Subscriber('/pub_rate',Int32,getdata)
    rospy.wait_for_message('/pub_rate',Int32,timeout = None)
    
    pub = rospy.Publisher('/ping',String,queue_size = 10)
    ping = 'ping'
    rate = rospy.Rate(fre)
    t1 = rospy.Time.now().to_sec()
    while t1 - t0 < 3 and not rospy.is_shutdown():
        pub.publish(ping)
        t1 = rospy.Time.now().to_sec()
        rate.sleep()
    
    

if __name__ == '__main__':
    rospy.init_node('listenfre',anonymous = True)
    rospy.Timer(rospy.Duration(3.0),run)
    rospy.spin();
    
