function [ b1 ] = INV_Sub( d )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
d=hexToBinaryVector(d,8);
x=[0 0 1 0 0 1 0 1;1 0 0 1 0 0 1 0;0 1 0 0 1 0 0 1;1 0 1 0 0 1 0 0;0 1 0 1 0 0 1 0;0 0 1 0 1 0 0 1;1 0 0 1 0 1 0 0;0 1 0 0 1 0 1 0];
y=[0 1 1 0 0 0 1 1];
c=xor(d,y);
c=rot90(c)';
c=c';
b=x*c;
b=mod(b,2);
b=binaryVectorToDecimal(rot90(rot90(b))');
if b~=0
    b=1/gf(b,8,283); %irreducible polynomial     
    b1=b.x;
else
    b1=b;
end
    b1=de2bi(b1,8);
    b1=rot90(b1)';
end

