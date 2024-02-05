clc
clear all
close all

y= ['A' 'A' 'B' 'B' '0' '9' '1' '8' '2'  '7' '3' '6' 'C' 'C' 'D' 'D' ];
key_bin= hexToBinaryVector(y);
cipher_key=[];
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
%permutation & compration 64 to 56
cipher_key(1,1)=key_bin(1,57);
cipher_key(1,2)=key_bin(1,49);
cipher_key(1,3)=key_bin(1,41);
cipher_key(1,4)=key_bin(1,33);
cipher_key(1,5)=key_bin(1,25);
cipher_key(1,6)=key_bin(1,17);
cipher_key(1,7)=key_bin(1,9);
cipher_key(1,8)=key_bin(1,1);
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
cipher_key(1,9)=key_bin(1,58);
cipher_key(1,10)=key_bin(1,50);
cipher_key(1,11)=key_bin(1,42);
cipher_key(1,12)=key_bin(1,34);
cipher_key(1,13)=key_bin(1,26);
cipher_key(1,14)=key_bin(1,18);
cipher_key(1,15)=key_bin(1,10);
cipher_key(1,16)=key_bin(1,2);
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
cipher_key(1,17)=key_bin(1,59);
cipher_key(1,18)=key_bin(1,51);
cipher_key(1,19)=key_bin(1,43);
cipher_key(1,20)=key_bin(1,35);
cipher_key(1,21)=key_bin(1,27);
cipher_key(1,22)=key_bin(1,19);
cipher_key(1,23)=key_bin(1,11);
cipher_key(1,24)=key_bin(1,3);
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
cipher_key(1,25)=key_bin(1,60);
cipher_key(1,26)=key_bin(1,52);
cipher_key(1,27)=key_bin(1,44);
cipher_key(1,28)=key_bin(1,36);
cipher_key(1,29)=key_bin(1,63);
cipher_key(1,30)=key_bin(1,55);
cipher_key(1,31)=key_bin(1,47);
cipher_key(1,32)=key_bin(1,39);
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
cipher_key(1,33)=key_bin(1,31);
cipher_key(1,34)=key_bin(1,23);
cipher_key(1,35)=key_bin(1,15);
cipher_key(1,36)=key_bin(1,7);
cipher_key(1,37)=key_bin(1,62);
cipher_key(1,38)=key_bin(1,54);
cipher_key(1,39)=key_bin(1,64);
cipher_key(1,40)=key_bin(1,38);
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
cipher_key(1,41)=key_bin(1,30);
cipher_key(1,42)=key_bin(1,22);
cipher_key(1,43)=key_bin(1,14);
cipher_key(1,44)=key_bin(1,6);
cipher_key(1,45)=key_bin(1,61);
cipher_key(1,46)=key_bin(1,53);
cipher_key(1,47)=key_bin(1,45);
cipher_key(1,48)=key_bin(1,37);
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
cipher_key(1,49)=key_bin(1,29);
cipher_key(1,50)=key_bin(1,21);
cipher_key(1,51)=key_bin(1,13);
cipher_key(1,52)=key_bin(1,5);
cipher_key(1,53)=key_bin(1,28);
cipher_key(1,54)=key_bin(1,20);
cipher_key(1,55)=key_bin(1,12);
cipher_key(1,56)=key_bin(1,4);
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
%splitting 
cipher_key_1=cipher_key(1,1:28);
cipher_key_2=cipher_key(1,29:56);
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
%shift one bit
cipher_key_1_origin=cipher_key_1;
 
i=27;
while i>=1
    cipher_key_1(1,i)=cipher_key_1_origin(1,i+1);
    i=i-1;
end
cipher_key_1(1,28) = cipher_key_1_origin(1,1);
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
cipher_key_2_origin=cipher_key_2;
 
i=27;
while i>=1
    cipher_key_2(1,i)=cipher_key_2_origin(1,i+1);
    i=i-1;
end
cipher_key_2(1,28) = cipher_key_2_origin(1,1);
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
%compression process 
cipher_key_befor_comp=[];
cipher_key_befor_comp(1,1:28)=cipher_key_1(1,1:28);
cipher_key_befor_comp(1,29:56)=cipher_key_2(1,1:28);
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
%compression 
cipher_key_after_comp=[];
cipher_key_after_comp(1,1)=cipher_key_befor_comp(1,14);
cipher_key_after_comp(1,2)=cipher_key_befor_comp(1,47);
cipher_key_after_comp(1,3)=cipher_key_befor_comp(1,11);
cipher_key_after_comp(1,4)=cipher_key_befor_comp(1,24);
cipher_key_after_comp(1,5)=cipher_key_befor_comp(1,1);
cipher_key_after_comp(1,6)=cipher_key_befor_comp(1,5);
cipher_key_after_comp(1,7)=cipher_key_befor_comp(1,3);
cipher_key_after_comp(1,8)=cipher_key_befor_comp(1,28);
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
cipher_key_after_comp(1,9)=cipher_key_befor_comp(1,15);
cipher_key_after_comp(1,10)=cipher_key_befor_comp(1,6);
cipher_key_after_comp(1,11)=cipher_key_befor_comp(1,21);
cipher_key_after_comp(1,12)=cipher_key_befor_comp(1,10);
cipher_key_after_comp(1,13)=cipher_key_befor_comp(1,23);
cipher_key_after_comp(1,14)=cipher_key_befor_comp(1,19);
cipher_key_after_comp(1,15)=cipher_key_befor_comp(1,12);
cipher_key_after_comp(1,16)=cipher_key_befor_comp(1,4);
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
cipher_key_after_comp(1,17)=cipher_key_befor_comp(1,26);
cipher_key_after_comp(1,18)=cipher_key_befor_comp(1,8);
cipher_key_after_comp(1,19)=cipher_key_befor_comp(1,16);
cipher_key_after_comp(1,20)=cipher_key_befor_comp(1,7);
cipher_key_after_comp(1,21)=cipher_key_befor_comp(1,27);
cipher_key_after_comp(1,22)=cipher_key_befor_comp(1,20);
cipher_key_after_comp(1,23)=cipher_key_befor_comp(1,13);
cipher_key_after_comp(1,24)=cipher_key_befor_comp(1,2);
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
cipher_key_after_comp(1,25)=cipher_key_befor_comp(1,41);
cipher_key_after_comp(1,26)=cipher_key_befor_comp(1,52);
cipher_key_after_comp(1,27)=cipher_key_befor_comp(1,31);
cipher_key_after_comp(1,28)=cipher_key_befor_comp(1,37);
cipher_key_after_comp(1,29)=cipher_key_befor_comp(1,47);
cipher_key_after_comp(1,30)=cipher_key_befor_comp(1,55);
cipher_key_after_comp(1,31)=cipher_key_befor_comp(1,30);
cipher_key_after_comp(1,32)=cipher_key_befor_comp(1,40);
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
cipher_key_after_comp(1,33)=cipher_key_befor_comp(1,51);
cipher_key_after_comp(1,34)=cipher_key_befor_comp(1,45);
cipher_key_after_comp(1,35)=cipher_key_befor_comp(1,33);
cipher_key_after_comp(1,36)=cipher_key_befor_comp(1,48);
cipher_key_after_comp(1,37)=cipher_key_befor_comp(1,44);
cipher_key_after_comp(1,38)=cipher_key_befor_comp(1,49);
cipher_key_after_comp(1,39)=cipher_key_befor_comp(1,39);
cipher_key_after_comp(1,40)=cipher_key_befor_comp(1,56);
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
cipher_key_after_comp(1,41)=cipher_key_befor_comp(1,34);
cipher_key_after_comp(1,42)=cipher_key_befor_comp(1,53);
cipher_key_after_comp(1,43)=cipher_key_befor_comp(1,46);
cipher_key_after_comp(1,44)=cipher_key_befor_comp(1,42);
cipher_key_after_comp(1,45)=cipher_key_befor_comp(1,50);
cipher_key_after_comp(1,46)=cipher_key_befor_comp(1,36);
cipher_key_after_comp(1,47)=cipher_key_befor_comp(1,29);
cipher_key_after_comp(1,48)=cipher_key_befor_comp(1,32);
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
% the key of the first round
key_of_round_one=cipher_key_after_comp;
key_1=binaryVectorToHex(key_of_round_one);
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
%round two
cipher_key_3_origin =cipher_key_1;
 cipher_key_3= cipher_key_3_origin;
i=27;
while i>=1
    cipher_key_3(1,i)=cipher_key_3_origin(1,i+1);
    i=i-1;
end
cipher_key_3(1,28) = cipher_key_3_origin(1,1);
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
cipher_key_4_origin=cipher_key_2;
 
i=27;
while i>=1
    cipher_key_4(1,i)=cipher_key_4_origin(1,i+1);
    i=i-1;
end
cipher_key_4(1,28) = cipher_key_4_origin(1,1);
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
%compression process 
%combining
cipher_key_befor_comp_R2=[];
cipher_key_befor_comp_R2(1,1:28)=cipher_key_3(1,1:28);
cipher_key_befor_comp_R2(1,29:56)=cipher_key_4(1,1:28);
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
%compression 
cipher_key_after_comp_R2=[];
cipher_key_after_comp_R2(1,1)=cipher_key_befor_comp_R2(1,14);
cipher_key_after_comp_R2(1,2)=cipher_key_befor_comp_R2(1,47);
cipher_key_after_comp_R2(1,3)=cipher_key_befor_comp_R2(1,11);
cipher_key_after_comp_R2(1,4)=cipher_key_befor_comp_R2(1,24);
cipher_key_after_comp_R2(1,5)=cipher_key_befor_comp_R2(1,1);
cipher_key_after_comp_R2(1,6)=cipher_key_befor_comp_R2(1,5);
cipher_key_after_comp_R2(1,7)=cipher_key_befor_comp_R2(1,3);
cipher_key_after_comp_R2(1,8)=cipher_key_befor_comp_R2(1,28);
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
cipher_key_after_comp_R2(1,9)=cipher_key_befor_comp_R2(1,15);
cipher_key_after_comp_R2(1,10)=cipher_key_befor_comp_R2(1,6);
cipher_key_after_comp_R2(1,11)=cipher_key_befor_comp_R2(1,21);
cipher_key_after_comp_R2(1,12)=cipher_key_befor_comp_R2(1,10);
cipher_key_after_comp_R2(1,13)=cipher_key_befor_comp_R2(1,23);
cipher_key_after_comp_R2(1,14)=cipher_key_befor_comp_R2(1,19);
cipher_key_after_comp_R2(1,15)=cipher_key_befor_comp_R2(1,12);
cipher_key_after_comp_R2(1,16)=cipher_key_befor_comp_R2(1,4);
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
cipher_key_after_comp_R2(1,17)=cipher_key_befor_comp_R2(1,26);
cipher_key_after_comp_R2(1,18)=cipher_key_befor_comp_R2(1,8);
cipher_key_after_comp_R2(1,19)=cipher_key_befor_comp_R2(1,16);
cipher_key_after_comp_R2(1,20)=cipher_key_befor_comp_R2(1,7);
cipher_key_after_comp_R2(1,21)=cipher_key_befor_comp_R2(1,27);
cipher_key_after_comp_R2(1,22)=cipher_key_befor_comp_R2(1,20);
cipher_key_after_comp_R2(1,23)=cipher_key_befor_comp_R2(1,13);
cipher_key_after_comp_R2(1,24)=cipher_key_befor_comp_R2(1,2);
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
cipher_key_after_comp_R2(1,25)=cipher_key_befor_comp_R2(1,41);
cipher_key_after_comp_R2(1,26)=cipher_key_befor_comp_R2(1,52);
cipher_key_after_comp_R2(1,27)=cipher_key_befor_comp_R2(1,31);
cipher_key_after_comp_R2(1,28)=cipher_key_befor_comp_R2(1,37);
cipher_key_after_comp_R2(1,29)=cipher_key_befor_comp_R2(1,47);
cipher_key_after_comp_R2(1,30)=cipher_key_befor_comp_R2(1,55);
cipher_key_after_comp_R2(1,31)=cipher_key_befor_comp_R2(1,30);
cipher_key_after_comp_R2(1,32)=cipher_key_befor_comp_R2(1,40);
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
cipher_key_after_comp_R2(1,33)=cipher_key_befor_comp_R2(1,51);
cipher_key_after_comp_R2(1,34)=cipher_key_befor_comp_R2(1,45);
cipher_key_after_comp_R2(1,35)=cipher_key_befor_comp_R2(1,33);
cipher_key_after_comp_R2(1,36)=cipher_key_befor_comp_R2(1,48);
cipher_key_after_comp_R2(1,37)=cipher_key_befor_comp_R2(1,44);
cipher_key_after_comp_R2(1,38)=cipher_key_befor_comp_R2(1,49);
cipher_key_after_comp_R2(1,39)=cipher_key_befor_comp_R2(1,39);
cipher_key_after_comp_R2(1,40)=cipher_key_befor_comp_R2(1,56);
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
cipher_key_after_comp_R2(1,41)=cipher_key_befor_comp_R2(1,34);
cipher_key_after_comp_R2(1,42)=cipher_key_befor_comp_R2(1,53);
cipher_key_after_comp_R2(1,43)=cipher_key_befor_comp_R2(1,46);
cipher_key_after_comp_R2(1,44)=cipher_key_befor_comp_R2(1,42);
cipher_key_after_comp_R2(1,45)=cipher_key_befor_comp_R2(1,50);
cipher_key_after_comp_R2(1,46)=cipher_key_befor_comp_R2(1,36);
cipher_key_after_comp_R2(1,47)=cipher_key_befor_comp_R2(1,29);
cipher_key_after_comp_R2(1,48)=cipher_key_befor_comp_R2(1,32);
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
% the key of the first round
key_of_round_two=cipher_key_after_comp_R2;
key_2=binaryVectorToHex(key_of_round_two);
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
%round three

%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

cipher_key_5_origin =cipher_key_3;
 cipher_key_5= cipher_key_5_origin;
i=27;
while i>=1
    cipher_key_5(1,i)=cipher_key_5_origin(1,i+1);
    i=i-1;
end
cipher_key_5(1,28) = cipher_key_5_origin(1,1);
 cipher_key_5
cipher_key_5_origin=cipher_key_5;  %%%%%%error here


while i>=1
    cipher_key_5(1,i)=cipher_key_5_origin(1,i+1);
    i=i-1;
end

cipher_key_5(1,28) = cipher_key_5_origin(1,1);
% cipher_key_5

%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
cipher_key_6_origin=cipher_key_4;
 i=27;

while i>=1
    cipher_key_6(1,i)=cipher_key_6_origin(1,i+1);
    i=i-1;
end
cipher_key_6(1,28) = cipher_key_6_origin(1,1);
cipher_key_6_origin=cipher_key_6;

while i>=1
    cipher_key_6(1,i)=cipher_key_6_origin(1,i+1);
    i=i-1;
end
cipher_key_6(1,28) = cipher_key_6_origin(1,1);

%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
%compression process 
%combining
cipher_key_befor_comp_R3=[];
cipher_key_befor_comp_R3(1,1:28)=cipher_key_5(1,1:28);
cipher_key_befor_comp_R3(1,29:56)=cipher_key_6(1,1:28);
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
%compression 
cipher_key_after_comp_R3=[];
cipher_key_after_comp_R3(1,1)=cipher_key_befor_comp_R3(1,14);
cipher_key_after_comp_R3(1,2)=cipher_key_befor_comp_R3(1,47);
cipher_key_after_comp_R3(1,3)=cipher_key_befor_comp_R3(1,11);
cipher_key_after_comp_R3(1,4)=cipher_key_befor_comp_R3(1,24);
cipher_key_after_comp_R3(1,5)=cipher_key_befor_comp_R3(1,1);
cipher_key_after_comp_R3(1,6)=cipher_key_befor_comp_R3(1,5);
cipher_key_after_comp_R3(1,7)=cipher_key_befor_comp_R3(1,3);
cipher_key_after_comp_R3(1,8)=cipher_key_befor_comp_R3(1,28);
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
cipher_key_after_comp_R3(1,9)=cipher_key_befor_comp_R3(1,15);
cipher_key_after_comp_R3(1,10)=cipher_key_befor_comp_R3(1,6);
cipher_key_after_comp_R3(1,11)=cipher_key_befor_comp_R3(1,21);
cipher_key_after_comp_R3(1,12)=cipher_key_befor_comp_R3(1,10);
cipher_key_after_comp_R3(1,13)=cipher_key_befor_comp_R3(1,23);
cipher_key_after_comp_R3(1,14)=cipher_key_befor_comp_R3(1,19);
cipher_key_after_comp_R3(1,15)=cipher_key_befor_comp_R3(1,12);
cipher_key_after_comp_R3(1,16)=cipher_key_befor_comp_R3(1,4);
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
cipher_key_after_comp_R3(1,17)=cipher_key_befor_comp_R3(1,26);
cipher_key_after_comp_R3(1,18)=cipher_key_befor_comp_R3(1,8);
cipher_key_after_comp_R3(1,19)=cipher_key_befor_comp_R3(1,16);
cipher_key_after_comp_R3(1,20)=cipher_key_befor_comp_R3(1,7);
cipher_key_after_comp_R3(1,21)=cipher_key_befor_comp_R3(1,27);
cipher_key_after_comp_R3(1,22)=cipher_key_befor_comp_R3(1,20);
cipher_key_after_comp_R3(1,23)=cipher_key_befor_comp_R3(1,13);
cipher_key_after_comp_R3(1,24)=cipher_key_befor_comp_R3(1,2);
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
cipher_key_after_comp_R3(1,25)=cipher_key_befor_comp_R3(1,41);
cipher_key_after_comp_R3(1,26)=cipher_key_befor_comp_R3(1,52);
cipher_key_after_comp_R3(1,27)=cipher_key_befor_comp_R3(1,31);
cipher_key_after_comp_R3(1,28)=cipher_key_befor_comp_R3(1,37);
cipher_key_after_comp_R3(1,29)=cipher_key_befor_comp_R3(1,47);
cipher_key_after_comp_R3(1,30)=cipher_key_befor_comp_R3(1,55);
cipher_key_after_comp_R3(1,31)=cipher_key_befor_comp_R3(1,30);
cipher_key_after_comp_R3(1,32)=cipher_key_befor_comp_R3(1,40);
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
cipher_key_after_comp_R3(1,33)=cipher_key_befor_comp_R3(1,51);
cipher_key_after_comp_R3(1,34)=cipher_key_befor_comp_R3(1,45);
cipher_key_after_comp_R3(1,35)=cipher_key_befor_comp_R3(1,33);
cipher_key_after_comp_R3(1,36)=cipher_key_befor_comp_R3(1,48);
cipher_key_after_comp_R3(1,37)=cipher_key_befor_comp_R3(1,44);
cipher_key_after_comp_R3(1,38)=cipher_key_befor_comp_R3(1,49);
cipher_key_after_comp_R3(1,39)=cipher_key_befor_comp_R3(1,39);
cipher_key_after_comp_R3(1,40)=cipher_key_befor_comp_R3(1,56);
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
cipher_key_after_comp_R3(1,41)=cipher_key_befor_comp_R3(1,34);
cipher_key_after_comp_R3(1,42)=cipher_key_befor_comp_R3(1,53);
cipher_key_after_comp_R3(1,43)=cipher_key_befor_comp_R3(1,46);
cipher_key_after_comp_R3(1,44)=cipher_key_befor_comp_R3(1,42);
cipher_key_after_comp_R3(1,45)=cipher_key_befor_comp_R3(1,50);
cipher_key_after_comp_R3(1,46)=cipher_key_befor_comp_R3(1,36);
cipher_key_after_comp_R3(1,47)=cipher_key_befor_comp_R3(1,29);
cipher_key_after_comp_R3(1,48)=cipher_key_befor_comp_R3(1,32);
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
% the key of the first round
key_of_round_three=cipher_key_after_comp_R3;
key_3=binaryVectorToHex(key_of_round_three);
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<