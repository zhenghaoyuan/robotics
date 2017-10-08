# -*- coding: utf-8 -*-
#!/usr/bin/env/ python
from sympy import *;
def compute():
	t1 = symbols('θ1');
	t2 = symbols('θ2');
	t3 = symbols('θ3');
	t4 = symbols('θ4');
	d1 = symbols('d1');
	T1 = Matrix([[cos(t1),-sin(t1),0,0],[sin(t1),cos(t1),0,0],[0,0,1,d1],[0,0,0,1]]);
	T2 = Matrix([[cos(t2),-sin(t2),0,0.033],[0,0,-1,0],[sin(t2),cos(t2),0,0],[0,0,0,1]]);
	T3 = Matrix([[cos(t3),-sin(t3),0,0.155],[sin(t3),cos(t3),0,0],[0,0,1,0],[0,0,0,1]]);
	T4 = Matrix([[cos(t4),-sin(t4),0,0.135],[sin(t4),cos(t4),0,0],[0,0,1,0],[0,0,0,1]]);
	T = T1*T2*T3*T4;
	P = Matrix([[0.2175],[0],[0],[1]]);
	F = T * P;
	X = Matrix([t1,t2,t3,t4]);
	print F.jacobian(X);


	
	
if __name__ == '__main__':
	compute();
