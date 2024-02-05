 function C=multpling_x_and_b(m)
n=[1 0 0 0 1 1 1 1 ; 1 1 0 0 0 1 1 1 ; 1 1 1 0 0 0 1 1 ; 1 1 1 1 0 0 0 1 ;1 1 1 1 1 0 0 0 ;0 1 1 1 1 1 0 0 ;0 0 1 1 1 1 1 0 ;0 0 0 1 1 1 1 0];
n=logical(n);
C=[];
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
%1st element in matrix c
a=n(1,1)*m(1,1); 
b=n(1,2)*m(2,1);
c=n(1,3)*m(3,1);
d=n(1,4)*m(4,1);
e=n(1,5)*m(5,1);
f=n(1,6)*m(6,1);
g=n(1,7)*m(7,1);
h=n(1,8)*m(8,1);
z=xor(a,b);
y=xor(z,c);
x=xor(y,d);
w=xor(x,e);
o=xor(w,f);
p=xor(o,g);
q=xor(p,h);
C(1,1)=q;
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
%second element in matrix c
a2=n(2,1)*m(1,1); 
b2=n(2,2)*m(2,1);
c2=n(2,3)*m(3,1);
d2=n(2,4)*m(4,1);
e2=n(2,5)*m(5,1);
f2=n(2,6)*m(6,1);
g2=n(2,7)*m(7,1);
h2=n(2,8)*m(8,1);
z2=xor(a2,b2);
y2=xor(z2,c2);
x2=xor(y2,d2);
w2=xor(x2,e2);
o2=xor(w2,f2);
p2=xor(o2,g2);
q2=xor(p2,h2);
C(2,1)=q2;
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
%third element in matrix c
a3=n(3,1)*m(1,1); 
b3=n(3,2)*m(2,1);
c3=n(3,3)*m(3,1);
d3=n(3,4)*m(4,1);
e3=n(3,5)*m(5,1);
f3=n(3,6)*m(6,1);
g3=n(3,7)*m(7,1);
h3=n(3,8)*m(8,1);
z3=xor(a3,b3);
y3=xor(z3,c3);
x3=xor(y3,d3);
w3=xor(x3,e3);
o3=xor(w3,f3);
p3=xor(o3,g3);
q3=xor(p3,h3);
C(3,1)=q3;
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
%fourth element in matrix c
a4=n(4,1)*m(1,1); 
b4=n(4,2)*m(2,1);
c4=n(4,3)*m(3,1);
d4=n(4,4)*m(4,1);
e4=n(4,5)*m(5,1);
f4=n(4,6)*m(6,1);
g4=n(4,7)*m(7,1);
h4=n(4,8)*m(8,1);
z4=xor(a4,b4);
y4=xor(z4,c4);
x4=xor(y4,d4);
w4=xor(x4,e4);
o4=xor(w4,f4);
p4=xor(o4,g4);
q4=xor(p4,h4);
C(4,1)=q4;
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
%fifth element in matrix c
a5=n(5,1)*m(1,1); 
b5=n(5,2)*m(2,1);
c5=n(5,3)*m(3,1);
d5=n(5,4)*m(4,1);
e5=n(5,5)*m(5,1);
f5=n(5,6)*m(6,1);
g5=n(5,7)*m(7,1);
h5=n(5,8)*m(8,1);
z5=xor(a5,b5);
y5=xor(z5,c5);
x5=xor(y5,d5);
w5=xor(x5,e5);
o5=xor(w5,f5);
p5=xor(o5,g5);
q5=xor(p5,h5);
C(5,1)=q5;
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
%sixth element in matrix c
a6=n(6,1)*m(1,1); 
b6=n(6,2)*m(2,1);
c6=n(6,3)*m(3,1);
d6=n(6,4)*m(4,1);
e6=n(6,5)*m(5,1);
f6=n(6,6)*m(6,1);
g6=n(6,7)*m(7,1);
h6=n(6,8)*m(8,1);
z6=xor(a6,b6);
y6=xor(z6,c6);
x6=xor(y6,d6);
w6=xor(x6,e6);
o6=xor(w6,f6);
p6=xor(o6,g6);
q6=xor(p6,h6);
C(6,1)=q6;
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
%seventh element in matrix c
a7=n(7,1)*m(1,1); 
b7=n(7,2)*m(2,1);
c7=n(7,3)*m(3,1);
d7=n(7,4)*m(4,1);
e7=n(7,5)*m(5,1);
f7=n(7,6)*m(6,1);
g7=n(7,7)*m(7,1);
h7=n(7,8)*m(8,1);
z7=xor(a7,b7);
y7=xor(z7,c7);
x7=xor(y7,d7);
w7=xor(x7,e7);
o7=xor(w7,f7);
p7=xor(o7,g7);
q7=xor(p7,h7);
C(7,1)=q7;
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
%eighth element in matrix c
a8=n(8,1)*m(1,1); 
b8=n(8,2)*m(2,1);
c8=n(8,3)*m(3,1);
d8=n(8,4)*m(4,1);
e8=n(8,5)*m(5,1);
f8=n(8,6)*m(6,1);
g8=n(8,7)*m(7,1);
h8=n(8,8)*m(8,1);
z8=xor(a8,b8);
y8=xor(z8,c8);
x8=xor(y8,d8);
w8=xor(x8,e8);
o8=xor(w8,f8);
p8=xor(o8,g8);
q8=xor(p8,h8);
C(8,1)=q8;
C=logical(C);
end