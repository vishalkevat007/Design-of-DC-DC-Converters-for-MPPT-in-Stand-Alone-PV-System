% Buck-Boost Converter Design
clc; clear all

Po = 10000;
Vo = 500;
Io = Po/Vo
Vin = 200;
f = 10e3;
del_V = 0.001*Vo
del_I = 0.05*Io

D = Vo/(Vo + Vin)

R = Vo^2/Po

L = Vin*D/(f*del_I)

C = Io*D/(f*del_V)