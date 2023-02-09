clc
clear all
z=0.02+1j*0.4;
y=1j*4*10^-6;
zc=sqrt(z/y);
gama=sqrt(z*y);
l=350;
A=cosh(gama*l);
D=A;
B=zc*sinh(gama*l);
C=sinh(gama*l)/zc;
Pr=159000000;
PF=0.9;
teta=acosd(PF);
VR=406024/sqrt(3);
SRstar=(Pr/PF)*(cosd(teta)-1j*sind(teta));
IR=SRstar/(3*VR);
IS=C*VR+D*IR;
VS=A*VR+B*IR;
disp('IR and its angle:')
disp(abs(IR))
disp(rad2deg(angle(IR)))
disp('VRphase(Completely by chance)')
disp(abs(VR))
disp(rad2deg(angle(VR)))
disp('VSphase and its angle:');
disp(abs(VS))
disp(rad2deg(angle(VS)))
disp('I? and its angle:')
disp(abs(IS))
disp(rad2deg(angle(IS)))


