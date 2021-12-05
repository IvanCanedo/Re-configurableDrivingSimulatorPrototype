
ax=0;
ay=0;
az=0;

x=0;
y=0;
z=0.088;

r=0.115;
R=0.085;

a=0.030;
b=0.088;

p1=[r;0;0];
p2=[-r/2;sqrt(3/2)*r;0];
p3=[-r/2;-sqrt(3/2)*r;0];

b1=[R;0;0];
b2=[-R/2;sqrt(3/2)*R;0];
b3=[-R/2;-sqrt(3/2)*R;0];


P=[p1,p2,p3];
B=[b1,b2,b3];
q=[x;y;z];

rate_lim=6;

%% HP trans
zz=3.85;
wn=1.85;
wf=0.8;
% HPtn=[1 0 0];
% HPtd=[1 2*z*wn wn*wn];
HPtn=[1 0 0 0];
HPtd=[1 (2*zz*wn+wf) (wn*wn+2*zz*wn*wf) (wn*wn*wf)];
HPt=tf(HPtn,HPtd);

%% LP tilt
zz=4.15;
wn=1.15;
LPn=[wn*wn];
LPd=[1 2*zz*wn wn*wn];
LPt=tf(LPn,LPd);

%% HP rot
wn=2.25;
HPrn=[1 0];
HPrd=[1 wn];
HPr=tf(HPrn,HPrd);

% R=[cosd(ay)*cosd(az),cosd(ay)*sind(az),-sind(ay);
%     sind(ax)*sind(ay)*cosd(az)-cosd(ax)*sind(az),sind(ax)*sind(ay)*cosd(az)+cosd(ax)*cosd(az),cosd(ay)*sind(ax);
%     cosd(ax)*sind(ay)*cosd(az)+sind(az)*sind(az),cosd(ax)*sind(ay)*sind(az)-sind(ax)*cosd(az),cosd(ay)*cosd(ax)];

% T=[R(1,1),R(1,2),R(1,3),q(1);
%     R(2,1),R(2,2),R(2,3),q(2);
%     R(3,1),R(3,2),R(3,3),q(3);
%     0,0,0,1];
% 
% P1=T*p1;
% P2=T*p2;
% P3=T*p3;
% 
% L1=sqrt(((P1(1)-b1(1))^2)+((P1(2)-b1(2))^2)+((P1(3)-b1(3))^2));
% L2=sqrt(((P2(1)-b2(1))^2)+((P2(2)-b2(2))^2)+((P2(3)-b2(3))^2));
% L3=sqrt(((P3(1)-b3(1))^2)+((P3(2)-b3(2))^2)+((P3(3)-b3(3))^2));
% L=[L1;L2;L3];
% 
% C1=[P1(1)-b1(1);0;P1(3)-b1(3)];
% C2=[-2*(P2(1)-b2(1));0;P2(3)-b2(3)];
% C3=[-2*(P3(1)-b3(1));0;P3(3)-b3(3)];
% 
% o2=(((a^2)+(b^2))/(2*a*b))
