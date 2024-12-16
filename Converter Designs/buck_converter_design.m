% Buck Converter Design
clc; clear all

Po = 10000;
Vo = 75;
Io = Po/Vo
Vin = 150;
f = 50e3;
del_V = 0.01*Vo
del_I = 0.05*Io

D = Vo/Vin

R = Vo^2/Po

L = Vin*D*(1-D)/(f*del_I)

C = D*(1-D)*Vin/(8*del_V*L*f^2)