%%%the functions used and made by us are multpling_x_and_b   and    xor_c_y
function s_sub_byte=subbyte(s)
s_bin=hexToBinaryVector(s);
byte_1=s_bin(1,1:8);       byte_1=transpose(byte_1);
byte_2=s_bin(2,1:8);       byte_2=transpose(byte_2);
byte_3=s_bin(3,1:8);       byte_3=transpose(byte_3);
byte_4=s_bin(4,1:8);       byte_4=transpose(byte_4);
byte_5=s_bin(1,9:16);      byte_5=transpose(byte_5);
byte_6=s_bin(2,9:16);      byte_6=transpose(byte_6);
byte_7=s_bin(3,9:16);      byte_7=transpose(byte_7);
byte_8=s_bin(4,9:16);      byte_8=transpose(byte_8);
byte_9=s_bin(1,17:24);     byte_9=transpose(byte_9);
byte_10=s_bin(2,17:24);    byte_10=transpose(byte_10);
byte_11=s_bin(3,17:24);    byte_11=transpose(byte_11);
byte_12=s_bin(4,17:24);    byte_12=transpose(byte_12);
byte_13=s_bin(1,25:32);    byte_13=transpose(byte_13);
byte_14=s_bin(2,25:32);    byte_14=transpose(byte_14);
byte_15=s_bin(3,25:32);    byte_15=transpose(byte_15);
byte_16=s_bin(4,25:32);    byte_16=transpose(byte_16);
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
% b1_bin=hexToBinaryVector(b1);
c_1=multpling_x_and_b(byte_1);
c_2=multpling_x_and_b(byte_2);
c_3=multpling_x_and_b(byte_3);
c_4=multpling_x_and_b(byte_4);
c_5=multpling_x_and_b(byte_5);
c_6=multpling_x_and_b(byte_6);
c_7=multpling_x_and_b(byte_7);
c_8=multpling_x_and_b(byte_8);
c_9=multpling_x_and_b(byte_9);
c_10=multpling_x_and_b(byte_10);
c_11=multpling_x_and_b(byte_11);
c_12=multpling_x_and_b(byte_12);
c_13=multpling_x_and_b(byte_13);
c_14=multpling_x_and_b(byte_14);
c_15=multpling_x_and_b(byte_15);
c_16=multpling_x_and_b(byte_16);
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
%xoring function
d_1=xor_c_y(c_1);
d_2=xor_c_y(c_2);
d_3=xor_c_y(c_3);
d_4=xor_c_y(c_4);
d_5=xor_c_y(c_5);
d_6=xor_c_y(c_6);
d_7=xor_c_y(c_7);
d_8=xor_c_y(c_8);
d_9=xor_c_y(c_9);
d_10=xor_c_y(c_10);
d_11=xor_c_y(c_11);
d_12=xor_c_y(c_12);
d_13=xor_c_y(c_13);
d_14=xor_c_y(c_14);
d_15=xor_c_y(c_15);
d_16=xor_c_y(c_16);
%<<<<<<<<<<<<<<<<<<<<<<<<
% sub_byte 
s_after_subbyte=[];
s_after_subbyte(1,1:8)=d_1;
s_after_subbyte(2,1:8)=d_2;
s_after_subbyte(3,1:8)=d_3;
s_after_subbyte(4,1:8)=d_4;
s_after_subbyte(1,9:16)=d_5;
s_after_subbyte(2,9:16)=d_6;
s_after_subbyte(3,9:16)=d_7;
s_after_subbyte(4,17:24)=d_8;
s_after_subbyte(1,17:24)=d_9;
s_after_subbyte(2,17:24)=d_10;
s_after_subbyte(3,17:24)=d_11;
s_after_subbyte(4,25:32)=d_12;
s_after_subbyte(1,25:32)=d_13;
s_after_subbyte(2,25:32)=d_14;
s_after_subbyte(3,25:32)=d_15;
s_after_subbyte(4,25:32)=d_16;
s_sub_byte=s_after_subbyte;
end