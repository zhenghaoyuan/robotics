#!/usr/bin/env python
import rospy
import math
import numpy as np
from foundations_hw2.msg import JointAngles
from geometry_msgs.msg import Pose;
from geometry_msgs.msg import Point;
from std_msgs.msg import Float64;
from hw2.srv import p3a;
def getpose(data):
    global initpose;
    initpose = data.position;

def getangle(data):
    global initq;
    initq = data.angles;
    
def gettargetpose(data):
    global initpose;
    global initq;
    beta = 0.5
    targetpose = data;
    angle = [0,0,0,0]
    angle[0] = initq[0];
    angle[1] = initq[1];
    angle[2] = initq[2];
    angle[3] = initq[3];
    e = Point();
    e.x = initpose.x;
    e.y = initpose.y;
    e.z = initpose.z;
    count = 0;
    while (math.sqrt((e.x - targetpose.x)**2 + (e.y - targetpose.y)**2 + (e.z - targetpose.z)**2) >= 0.001 and count <=3000):
        J = jacobiancomputation(angle);
        de = np.array([[(targetpose.x - e.x)*beta],
        [(targetpose.y - e.y)*beta],
        [(targetpose.z - e.z)*beta]]);
        Jinverse = J.transpose();
        dq = Jinverse.dot(de);
        #update the inverse new angle is q
        angle[0] = dq[0] + angle[0];
        angle[1] = dq[1] + angle[1];
        angle[2] = dq[2] + angle[2];
        angle[3] = dq[3] + angle[3];
        update = computeHomegeneous(0,0,0,0,angle);
        e.x = update[0];
        e.y = update[1];
        e.z = update[2];
        count = count + 1;
    rospy.loginfo(e);
    rospy.loginfo(targetpose);
    return angle;
    
    
        
    
    
    
    
def computeHomegeneous(x1,x2,x3,x4,angle):
    alpha = [0,math.pi/2,0,0];
    a = [0,0.033,0.155,0.135];
    d = [0.1,0,0,0];
    result = np.array([[1,0,0,0],[0,1,0,0],[0,0,1,0],[0,0,0,1]]);
    angles= [0,0,0,0];
    angles[0] = angle[0] + math.pi/2 + x1;
    angles[1] = angle[1] + math.pi/2 + x2;
    angles[2] = angle[2] + x3;
    angles[3] = angle[3] + math.pi/2 + x4;
    for i in range(0,4):
        Hr = np.array([[1,0,0,0],[0,math.cos(alpha[i]),-math.sin(alpha[i]),0],[0,math.sin(alpha[i]),math.cos(alpha[i]),0],[0,0,0,1]]);
        Hq = np.array([[1,0,0,a[i]],[0,1,0,0],[0,0,1,0],[0,0,0,1]]);
        Hp = np.array([[math.cos(angles[i]),-math.sin(angles[i]),0,0],[math.sin(angles[i]),math.cos(angles[i]),0,0],[0,0,1,0],[0,0,0,1]]);
        Hi = np.array([[1,0,0,0],[0,1,0,0],[0,0,1,d[i]],[0,0,0,1]]);
        result = np.dot(result,np.dot(np.dot(np.dot(Hr,Hq),Hp),Hi));
    pointp = np.array([0,-0.2175,0,1]).T;
    pointpg = np.dot(result,pointp);
    return np.array([pointpg[0],pointpg[1],pointpg[2]]);

def jacobiancomputation(angle):
    dtheta = 0.0001;
    f = computeHomegeneous(0,0,0,0,angle);
    f1 = computeHomegeneous(dtheta,0,0,0,angle);
    J1 = (f1 - f)/dtheta;
    f2 = computeHomegeneous(0,dtheta,0,0,angle);
    J2 = (f2 - f)/dtheta;
    f3 = computeHomegeneous(0,0,dtheta,0,angle);
    J3 = (f3 - f)/dtheta;
    f4 = computeHomegeneous(0,0,0,dtheta,angle);
    J4 = (f4 - f)/dtheta;
    J = np.array([[J1[0],J2[0],J3[0],J4[0]],[J1[1],J2[1],J3[1],J4[1]],[J1[2],J2[2],J3[2],J4[2]]]);
    return J;

def handle_p3a(req):
    data = Point();
    data.x = req.point.x;
    data.y = req.point.y;
    data.z = req.point.z;
    angle = gettargetpose(data);
    return {'joint1':angle[0],'joint2':angle[1],'joint3':angle[2],'joint4':angle[3]};
def run():
    rospy.init_node('p3a',anonymous = True);
    '''global joint1;
    joint1 = rospy.Publisher('vrep/youbot/arm/joint1/angle',Float64,queue_size = 10);
    global joint2;
    joint2 = rospy.Publisher('vrep/youbot/arm/joint2/angle',Float64,queue_size = 10);
    global joint3;
    joint3 = rospy.Publisher('vrep/youbot/arm/joint3/angle',Float64,queue_size = 10);
    global joint4;
    joint4 = rospy.Publisher('vrep/youbot/arm/joint4/angle',Float64,queue_size = 10);'''   
    rospy.wait_for_message('/vrep/youbot/arm/gripper/pose',Pose,timeout = None);
    rospy.Subscriber('/vrep/youbot/arm/gripper/pose',Pose,getpose);
    rospy.wait_for_message('/vrep/youbot/arm/pose',JointAngles,timeout = None);
    rospy.Subscriber('/vrep/youbot/arm/pose',JointAngles,getangle);
    '''rospy.wait_for_message('foundations_hw2/effector_position',Point,timeout = None);
    rospy.Subscriber('foundations_hw2/effector_position',Point,gettargetpose);'''
    s = rospy.Service('IKcomputation',p3a,handle_p3a);
    rospy.spin();
    
    
    
    

if __name__ == '__main__':
    run();