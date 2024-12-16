% Super-Lift Luo Converter Design
clc; clear all

Po = 10000;
Vo = 500;
Io = Po/(Vo)
Vin = 200;
f = 10e3;

del_I1 = 0.05*Io
del_VC2 = 0.001*Vo

D = (Vo - 2*Vin)/(Vo - Vin)

R = Vo^2/Po

L1 = Vin*D/(f*del_I1)

C1 = Vo*(1-D)/(R*f*del_VC2)

C2 = Vo*(1-D)/(R*f*del_VC2)

