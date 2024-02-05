function [ s ] = Sub( b )
 b = hex2dec(b);
 x=[1 0 0 0 1 1 1 1;1 1 0 0 0 1 1 1;1 1 1 0 0 0 1 1;1 1 1 1 0 0 0 1;1 1 1 1 1 0 0 0;0 1 1 1 1 1 0 0;0 0 1 1 1 1 1 0;0 0 0 1 1 1 1 1];
 y=[1 1 0 0 0 1 1 0];
 y=logical(y);
if b~=0
    b=1/gf(b,8,283); %irreducible polynomial     
    b1=b.x;
else
    b1=b;
end
    b1=de2bi(double(b1),8);
    c=x*b1';
    c=mod(c,2);
    c=logical(c);
    d=xor(c',y);
    s=rot90(d)';
end

