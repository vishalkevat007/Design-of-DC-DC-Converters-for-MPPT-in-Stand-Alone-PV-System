% Super-Lift Luo Converter Design
clc; clear all

Po = 10000;
Vo = 500;
Io = Po/(Vo)
Vin = 200;
f = 10e3;

del_I1 = 0.05*Io
del_I2 = 0.05*Io
del_VC2 = 0.001*Vo
del_VC1 = 0.005*Vo

D = 1-(sqrt(Vin))/(sqrt(Vin + Vo))

R = Vo^2/Po

L1 = Vin*D/(f*del_I1)

L2 = Vin*D/((f*del_I2)*(1-D))

C1 = Io*D/((f*del_VC1)*(1-D))

C2 = Io*D/(f*del_VC2)

