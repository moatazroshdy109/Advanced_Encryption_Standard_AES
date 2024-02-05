clc
clear all
close all
z=[];
b=170



    
    x=[1 0 0 0 1 1 1 1;1 1 0 0 0 1 1 1;1 1 1 0 0 0 1 1;1 1 1 1 0 0 0 1;1 1 1 1 1 0 0 0;0 1 1 1 1 1 0 0;0 0 1 1 1 1 1 0;0 0 0 1 1 1 1 1];
    x=logical(x);
    y=[1 1 0 0 0 1 1 0];
    y=logical(y);
if b~=0    
    b=1/gf(b,8,283);

    
    i=0
    for i=0:255
        if i==b
            b1=i;
            break
        end
    end
else
    b1=b;
end
    b1=de2bi(b1,8);
    c=x*b1';
    c=mod(c,2);
    c=logical(c);
    d=xor(c,y');
    s=rot90(d);
    z=rot90(s);
    v=rot90(z);
  key_2_hex=binaryVectorToHex(v)
  




