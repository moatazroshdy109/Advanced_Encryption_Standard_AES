function d=xor_c_y(c)
d=[];
y=[1;1;0;0;0;1;1;0];
y=logical(y);
d=xor(y',c');
d=logical(d);
end
