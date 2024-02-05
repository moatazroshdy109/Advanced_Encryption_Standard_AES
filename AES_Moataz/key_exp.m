function [ key_mat ] = key_exp( cipher_key )
cipher_key_b=hexToBinaryVector(cipher_key,128);
w0=[]; w1=[];  w2=[];  w3=[];
w0(1,1:32)=cipher_key_b(1,1:32);
w0=logical(w0);
w1(1,1:32)=cipher_key_b(1,33:64);
w1=logical(w1);
w2(1,1:32)=cipher_key_b(1,65:96);
w2=logical(w2);
w3(1,1:32)=cipher_key_b(1,97:128);
w3=logical(w3);
 %ti=xor(RCon(i/4),(w(i-1))+rot90+subword)
 %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
 % (generate ti)
 w3_hex=binaryVectorToHex(w3);
 w3_rot=circshift(w3_hex,[0,-2]);
 %  w3_rot_vector_hex=binaryVectorToHex(w3_rot_vector);
c=[];
for nn=1:4
    c(1,8*nn-7:8*nn)=Sub(w3_rot(2*nn-1:2*nn));
end
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  %(constants table)
  RCon1=['0' '1' '0' '0' '0' '0' '0' '0'];                RCon1=hexToBinaryVector(RCon1,32);
  RCon2=['0' '2' '0' '0' '0' '0' '0' '0'];                RCon2=hexToBinaryVector(RCon2,32);
  RCon3=['0' '4' '0' '0' '0' '0' '0' '0'];                RCon3=hexToBinaryVector(RCon3,32);
  RCon4=['0' '8' '0' '0' '0' '0' '0' '0'];                RCon4=hexToBinaryVector(RCon4,32);
  RCon5=['1' '0' '0' '0' '0' '0' '0' '0'];                RCon5=hexToBinaryVector(RCon5,32);
  RCon6=['2' '0' '0' '0' '0' '0' '0' '0'];                RCon6=hexToBinaryVector(RCon6,32);
  RCon7=['4' '0' '0' '0' '0' '0' '0' '0'];                RCon7=hexToBinaryVector(RCon7,32);
  RCon8=['8' '0' '0' '0' '0' '0' '0' '0'];                RCon8=hexToBinaryVector(RCon8,32);
  RCon9=['1' 'B' '0' '0' '0' '0' '0' '0'];                RCon9=hexToBinaryVector(RCon9,32);
  RCon10=['3' '6' '0' '0' '0' '0' '0' '0'];               RCon10=hexToBinaryVector(RCon10,32);
  %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  %generate key 1
  t4=xor(c,RCon1);
  w4=xor(t4,w0);
  w5=xor(w1,w4);
  w6=xor(w5,w2);
  w7=xor(w3,w6);
  key_1=[];
  key_1(1,1:32)=w4;
  key_1(1,33:64)=w5;
  key_1(1,65:96)=w6;
  key_1(1,97:128)=w7;
  key_1=logical(key_1);
  key_1_hex=binaryVectorToHex(key_1);
  %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  %generate key2
  %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
 w7_hex=binaryVectorToHex(w7);
 w7_rot=circshift(w7_hex,[0,-2]);
 c=[];
for nn=1:4
    c(1,8*nn-7:8*nn)=Sub( w7_rot(2*nn-1:2*nn) );
end
  t8=xor(c,RCon2);
  w8=xor(t8,w4);
  w9=xor(w5,w8);
  w10=xor(w6,w9);
  w11=xor(w7,w10);
  key_2=[];
  key_2(1,1:32)=w8;
  key_2(1,33:64)=w9;
  key_2(1,65:96)=w10;
  key_2(1,97:128)=w11;
  key_2=logical(key_2);
  key_2_hex=binaryVectorToHex(key_2);
  %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
   %(generate key 3)
  %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
 w11_hex=binaryVectorToHex(w11);
 w11_rot=circshift(w11_hex,[0,-2]);
 c=[];
for nn=1:4
    c(1,8*nn-7:8*nn)=Sub( w11_rot(2*nn-1:2*nn) );
end
  t12=xor(c,RCon3);
  w12=xor(t12,w8);
  w13=xor(w12,w9);
  w14=xor(w13,w10);
  w15=xor(w14,w11);
  key_3=[];
  key_3(1,1:32)=w12;
  key_3(1,33:64)=w13;
  key_3(1,65:96)=w14;
  key_3(1,97:128)=w15;
  key_3=logical(key_3);
  key_3_hex=binaryVectorToHex(key_3);
  %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
   %generate key 4
  %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
 w15_hex=binaryVectorToHex(w15);
 w15_rot=circshift(w15_hex,[0,-2]);
 c=[];
for nn=1:4
    c(1,8*nn-7:8*nn)=Sub( w15_rot(2*nn-1:2*nn) );
end
  t16=xor(c,RCon4);
  w16=xor(t16,w12);
  w17=xor(w16,w13);
  w18=xor(w17,w14);
  w19=xor(w18,w15);
  key_4=[];
  key_4(1,1:32)=w16;
  key_4(1,33:64)=w17;
  key_4(1,65:96)=w18;
  key_4(1,97:128)=w19;
  key_4=logical(key_4);
  key_4_hex=binaryVectorToHex(key_4);
  %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
   %(generate key 5)
  %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
 w19_hex=binaryVectorToHex(w19);
 w19_rot=circshift(w19_hex,[0,-2]);
 c=[];
for nn=1:4
    c(1,8*nn-7:8*nn)=Sub( w19_rot(2*nn-1:2*nn) );
end
  t20=xor(c,RCon5);
  w20=xor(t20,w16);
  w21=xor(w20,w17);
  w22=xor(w21,w18);
  w23=xor(w22,w19);
  key_5=[];
  key_5(1,1:32)=w20;
  key_5(1,33:64)=w21;
  key_5(1,65:96)=w22;
  key_5(1,97:128)=w23;
  key_5=logical(key_5);
  key_5_hex=binaryVectorToHex(key_5);
  %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
    %generate key 6
  %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
 w23_hex=binaryVectorToHex(w23);
 w23_rot=circshift(w23_hex,[0,-2]);
 c=[];
for nn=1:4
    c(1,8*nn-7:8*nn)=Sub( w23_rot(2*nn-1:2*nn) );
end
  t24=xor(c,RCon6);
  w24=xor(t24,w20);
  w25=xor(w24,w21);
  w26=xor(w25,w22);
  w27=xor(w26,w23);
  key_6=[];
  key_6(1,1:32)=w24;
  key_6(1,33:64)=w25;
  key_6(1,65:96)=w26;
  key_6(1,97:128)=w27;
  key_6=logical(key_6);
  key_6_hex=binaryVectorToHex(key_6);
  %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  %(generate key 7)
  %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
 w27_hex=binaryVectorToHex(w27);
 w27_rot=circshift(w27_hex,[0,-2]);
 c=[];
for nn=1:4
    c(1,8*nn-7:8*nn)=Sub( w27_rot(2*nn-1:2*nn) );
end
  t28=xor(c,RCon7);
  w28=xor(t28,w24);
  w29=xor(w28,w25);
  w30=xor(w29,w26);
  w31=xor(w30,w27);
  key_7=[];
  key_7(1,1:32)=w28;
  key_7(1,33:64)=w29;
  key_7(1,65:96)=w30;
  key_7(1,97:128)=w31;
  key_7=logical(key_7);
  key_7_hex=binaryVectorToHex(key_7);
  %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  %generate key 8
  %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
 w31_hex=binaryVectorToHex(w31);
 w31_rot=circshift(w31_hex,[0,-2]);
 c=[];
for nn=1:4
    c(1,8*nn-7:8*nn)=Sub( w31_rot(2*nn-1:2*nn) );
end
  t32=xor(c,RCon8);
  w32=xor(t32,w28);
  w33=xor(w32,w29);
  w34=xor(w33,w30);
  w35=xor(w34,w31);
  key_8=[];
  key_8(1,1:32)=w32;
  key_8(1,33:64)=w33;
  key_8(1,65:96)=w34;
  key_8(1,97:128)=w35;
  key_8=logical(key_8);
  key_8_hex=binaryVectorToHex(key_8);
  %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
   %(generate key 9)
  %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
 w35_hex=binaryVectorToHex(w35);
 w35_rot=circshift(w35_hex,[0,-2]);
 c=[];
for nn=1:4
    c(1,8*nn-7:8*nn)=Sub( w35_rot(2*nn-1:2*nn) );
end
  t36=xor(c,RCon9);
  w36=xor(t36,w32);
  w37=xor(w36,w33);
  w38=xor(w37,w34);
  w39=xor(w38,w35);
  key_9=[];
  key_9(1,1:32)=w36;
  key_9(1,33:64)=w37;
  key_9(1,65:96)=w38;
  key_9(1,97:128)=w39;
  key_9=logical(key_9);
  key_9_hex=binaryVectorToHex(key_9);
  %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  %(generate key 10)
  %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
 w39_hex=binaryVectorToHex(w39);
 w39_rot=circshift(w39_hex,[0,-2]);
 c=[];
for nn=1:4
    c(1,8*nn-7:8*nn)=Sub( w39_rot(2*nn-1:2*nn) );
end
  t40=xor(c,RCon10);
  w40=xor(t40,w36);
  w41=xor(w40,w37);
  w42=xor(w41,w38);
  w43=xor(w42,w39);
  key_10=[];
  key_10(1,1:32)=w40;
  key_10(1,33:64)=w41;
  key_10(1,65:96)=w42;
  key_10(1,97:128)=w43;
  key_10=logical(key_10);
  key_10_hex=binaryVectorToHex(key_10);
  key_mat=[key_1;key_2;key_3;key_4;key_5;key_6;key_7;key_8;key_9;key_10];
  end

