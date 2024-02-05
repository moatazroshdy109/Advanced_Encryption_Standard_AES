 


clc
clear all
close all


w3=['13' 'AA' '54' '87']
 w3_rot=circshift(w3,[0,-2])

%  w3_rot_vector_hex=binaryVectorToHex(w3_rot_vector);
c=[];
for nn=1:4
    c(1,8*nn-7:8*nn)=SUB_mo( w3_rot(2*nn-1:2*nn) );
end
w3_hex=binaryVectorToHex(c)