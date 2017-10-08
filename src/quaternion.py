#!/usr/bin/env python
import sys
import math
def compute(w,x,y,z):
    phi = math.atan2(2 * (w * x + y * z),1 - 2 * (x**2 + y**2));
    theta = math.asin(2*(w*y - z*x));
    psi = math.atan2(2*(w*x+x*y),1-2*(y**2 + z**2));
    print psi;
    print theta;
    print phi;



if __name__ =='__main__':
    if (len(sys.argv) == 5):
        compute(float(sys.argv[1]),float(sys.argv[2]),float(sys.argv[3]),float(sys.argv[4]));
    else:
        print "show me more parameter";