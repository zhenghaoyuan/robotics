#!/usr/bin/env python
import rospy
import time
from std_msgs.msg import MultiArrayLayout
from std_msgs.msg import MultiArrayDimension
from std_msgs.msg import Float64MultiArray
from std_msgs.msg import UInt32MultiArray
imagedata = Float64MultiArray()
def calMaxSubArray(row):
    #implement maximun subarray problem in o(n),return the first and last value
    max_ending_here = row[0]
    max_so_far = row[0]
    start = 0
    end = 0
    maxstart = 0
    maxend = 0
    for ind,v in enumerate(row):
        if max_ending_here + v > v:
            max_ending_here = max_ending_here + v
            end = ind
        else:
            start = ind
            end = ind
        if max_so_far < max_ending_here:
            maxstart = start
            maxend = end
            max_so_far = max_ending_here
    
    
    
    return (maxstart,maxend)
    
def getdata(data):
    global imagedata
    imagedata = data
    
def callback(event):
    sub = rospy.Subscriber('/turtle1/image_sensor',Float64MultiArray,getdata)
    #use wait_for_message handle this synchronization problem 
    rospy.wait_for_message('/turtle1/image_sensor',Float64MultiArray,timeout = None)
    global imagedata
    #transfer this data into 2D Array
    multiarray = []
    for i in range(0,imagedata.layout.dim[0].size):
        new = []
        for j in range(0,imagedata.layout.dim[1].size):
            new.append(imagedata.data[i * imagedata.layout.dim[1].size + j])
        multiarray.append(new)
    onedimdata = []
    for row in multiarray:
        (start,end) = calMaxSubArray(row)
        onedimdata += row[start:end]
    
    (start,end) = calMaxSubArray(onedimdata)
    arrayout = UInt32MultiArray()
    arrayout.data = [start,end]    
    pub = rospy.Publisher('/hw1/subarray',UInt32MultiArray,queue_size = 10)
    pub.publish(arrayout)

    
        
        
    
    
    
if __name__ == '__main__':
    freq = 20.0
    dur = 1/freq
    rospy.init_node('imageprocessing',anonymous = True)
    rospy.Timer(rospy.Duration(dur),callback)
    rospy.spin()