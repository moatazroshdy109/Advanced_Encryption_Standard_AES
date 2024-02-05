
%%%%% the functions used and made by us are  multpling_x_and_b   and    xor_c_y

function  s=subbyte__32bit(s_bin)
byte_1=s_bin(1,1:8);         byte_1=transpose(byte_1);
byte_2=s_bin(1,9:16);        byte_2=transpose(byte_2);
byte_3=s_bin(1,17:24);       byte_3=transpose(byte_3);
byte_4=s_bin(1,25:32);       byte_4=transpose(byte_4);
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
% b1_bin=hexToBinaryVector(b1);
c_1=multpling_x_and_b(byte_1);
c_2=multpling_x_and_b(byte_2);
c_3=multpling_x_and_b(byte_3);
c_4=multpling_x_and_b(byte_4);

%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
%xoring function
d_1=xor_c_y(c_1);
d_2=xor_c_y(c_2);
d_3=xor_c_y(c_3);
d_4=xor_c_y(c_4);

%<<<<<<<<<<<<<<<<<<<<<<<<
% sub_byte 
s=[];
s(1,1:8)=d_1;
s(1,9:16)=d_2;
s(1,17:24)=d_3;
s(1,25:32)=d_4;
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

end

