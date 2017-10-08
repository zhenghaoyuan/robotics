#!/usr/bin/env python
import rospy
import math
import numpy as np
from foundations_hw2.msg import JointAngles
from geometry_msgs.msg import Point
from hw2.srv import p2b;
from std_msgs.msg import Float64MultiArray;
from std_msgs.msg import MultiArrayLayout,MultiArrayDimension;

pub = None;
def computeHomegeneous(x1,x2,x3,x4):
    global angle;
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
def jacobiancomputation(data):
    global angle;
    angle = data;
    dtheta = 0.0001;
    f = computeHomegeneous(0,0,0,0);
    f1 = computeHomegeneous(dtheta,0,0,0);
    J1 = (f1 - f)/dtheta;
    f2 = computeHomegeneous(0,dtheta,0,0);
    J2 = (f2 - f)/dtheta;
    f3 = computeHomegeneous(0,0,dtheta,0);
    J3 = (f3 - f)/dtheta;
    f4 = computeHomegeneous(0,0,0,dtheta);
    J4 = (f4 - f)/dtheta;
    J = [J1[0],J2[0],J3[0],J4[0],J1[1],J2[1],J3[1],J4[1],J1[2],J2[2],J3[2],J4[2]];
    return J;

def handle_p2b(req):
    getjoint = jacobiancomputation(req.angles.angles);
    data = Float64MultiArray();
    dim = [MultiArrayDimension('row',3,12),MultiArrayDimension('col',4,4)];
    data.layout = MultiArrayLayout(dim,0);
    data.data =getjoint;
    return data;
    

def run():
    rospy.init_node('jacobiancompute',anonymous = True);
    global pub;
    pub = rospy.Publisher('/vrep/youbot/target/position',Point,queue_size = 10);
    rospy.Service('p2b',p2b,handle_p2b);
    rospy.spin();
    

if __name__ == '__main__':
    run();
