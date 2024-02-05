format short e
m_hex=[12 23 35 49 ; 69 79 80 91;52 15 23 15;14 59 13 45]
bin=de2bi(m_hex);
r=[0 1 0 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 1 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1] ;
R=de2bi(r);
x_gf = gf(r,8)
fileID = fopen('nine.bin','w');
fwrite(fileID,[1:9]);
ahex=dec2hex(A);  
str = dec2bin(A,8);
[m,n]=size(str);
a=str(1,1:8)
b=str(2,1:8)
c=str(3,1:8)
d=str(4,1:8)
e=str(5,1:8)
f=str(6,1:8)
g=str(7,1:8)
h=str(8,1:8)
i=str(9,1:8)
j=str(10,1:8)
k=str(11,1:8)
l=str(12,1:8)
m=str(13,1:8)
n=str(14,1:8)
o=str(15,1:8)
p=str(16,1:8)
state=[a,b,c,d ;e,f,g,h;i,j,k,l;m,n,o,p]
A=transpose(a)
x=[1 0 0 0 1 1 1 1;1 1 0 0 0 1 1 1;1 1 1 0 0 0 1 1;1 1 1 1 0 0 0 1;1 1 1 1 1 0 0 0;0 1 1 1 1 1 0 0;0 0 1 1 1 1 1 0;0 0 0 1 1 1 1 0]

c=x*b