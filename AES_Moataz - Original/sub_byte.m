b1=['AF'];
b1_bin=hexToBinaryVector(b1);
b1_bin=transpose(b1_bin);
c=multpling_x_and_b(b1_bin);
y=[1;1;0;0;0;1;1;0];
d=[];
d(1,1)=xor(c(1,1),y(1,1));
d(2,1)=xor(c(2,1),y(2,1));
d(3,1)=xor(c(3,1),y(3,1));
d(4,1)=xor(c(4,1),y(4,1));
d(5,1)=xor(c(5,1),y(5,1));
d(6,1)=xor(c(6,1),y(6,1));
d(7,1)=xor(c(7,1),y(7,1));
d(8,1)=xor(c(8,1),y(8,1));
d=logical(d);
d=transpose(d);
s_1_1=binaryVectorToHex(d);






