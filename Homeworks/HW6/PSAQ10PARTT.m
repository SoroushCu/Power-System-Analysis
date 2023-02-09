%In this code we shall solve the power flow problem.
clc
clear all
V1 = 1;
V2 = [1 0];
V3 = [1 0];
V4 = [1.02 0];
S2 = 1.7 + 1.0535i;
S3 = 2 + 1.2394i;
S4 = 2.38 + 1.3073i;
y12 = -3.815629 + 19.078144i;
y13 = -5.169561 + 25.847809i;
y24 = -5.169561 + 25.847809i;
y34 = -3.023705 + 15.118528i;
%y10 = 0.09i;
y20 = 0.05125i+0.03875i;
y30 = 0.03875i+0.06375i;
y40 = 0.06375i+0.03875i;
y44=-y24 - y34 + y40;
y33=-y13 - y34 + y30;
y22=-y12  -y24 + y20;
itr = 0;
V2(2) = (-conj(S2)/V2(1)-y12*V1-y24*V4(1))/(y22);
V3(2) = (-conj(S3)/V3(1)-y13*V1-y34*V4(1))/(y33);
Vc4 = (conj(S4)/V4(1)-y24*V2(2)-y34*V3(2))/(y44);
f4 = imag(Vc4);
e4 = sqrt(1.02^2 - f4^2);
V4(2) = e4 + f4*1i;
disp(V2(2))
while abs(V2(2)-V2(1))>0.000001 && abs(V3(2)-V3(1))>0.000001 && abs(V4(2)-V4(1))>0.000001
   
   V2(1) = V2(2);
   V3(1) = V3(2);
   V4(1) = V4(2);
   V2(2) = (-conj(S2)/V2(1)-y12*V1-y24*V4(1))/(y22);
   V3(2) = (-conj(S3)/V3(1)-y13*V1-y34*V4(1))/(y33);
   Vc4 = (conj(S4)/V4(1)-y24*V2(2)-y34*V3(2))/(y44);
   f4 = imag(Vc4);
   e4 = sqrt(1.02^2 - f4^2);
   V4(2) = e4 + f4*1i;
     itr = itr+1;
end
disp(vpa(V2(2)))
disp((vpa(V3(2))))
disp((vpa(V4(2))))
disp(itr)
