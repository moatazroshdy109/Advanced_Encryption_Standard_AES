
%%%%% the functions used and made by us are
%%%%% subbyte_32bit  and   subbyte

cipher_key=['63' 'C9' 'FE' '30' 'F2' 'F2' '63' '26' 'C9' 'C9' '7D' 'D4' 'FA' '63' '82' 'D4' ];
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
 % generate ti
 w3_rot=rot90(w3);
 w3_rot_vector=transpose(w3_rot);
%  w3_rot_vector_hex=binaryVectorToHex(w3_rot_vector);
 w3_rot_vector_subbyte=subbyte__32bit(w3_rot_vector);%%mo3tzzzzzzzzzzz fun
 w3_rot_vector_subbyte=logical(w3_rot_vector_subbyte);
 %constants table
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
  %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  %generate key 1
  t4=xor(w3_rot_vector_subbyte,RCon1);
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
  
  
  %generate key2
  %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  w7_rot=rot90(w7);
  w7_rot_vector=transpose(w7_rot);
  w7_rot_vector_subbyte=subbyte__32bit(w7_rot_vector);
  w7_rot_vector_subbyte=logical(w7_rot_vector_subbyte);
  t8=xor(w7_rot_vector_subbyte,RCon2);
  
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
  
  
   %generate key 3
  %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  w11_rot=rot90(w11);
  w11_rot_vector=transpose(w11_rot);
  w11_rot_vector_subbyte=subbyte__32bit(w11_rot_vector);
  w11_rot_vector_subbyte=logical(w11_rot_vector_subbyte);
  t12=xor(w11_rot_vector_subbyte,RCon3);
  
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
  
  
   %generate key 4
  %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  w15_rot=rot90(w15);
  w15_rot_vector=transpose(w15_rot);
  w15_rot_vector_subbyte=subbyte__32bit(w15_rot_vector);
  w15_rot_vector_subbyte=logical(w15_rot_vector_subbyte);
  t16=xor(w15_rot_vector_subbyte,RCon4);
  
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
   %generate key 5
  %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  w19_rot=rot90(w19);
  w19_rot_vector=transpose(w19_rot);
  w19_rot_vector_subbyte=subbyte__32bit(w19_rot_vector);
  w19_rot_vector_subbyte=logical(w19_rot_vector_subbyte);
  t20=xor(w19_rot_vector_subbyte,RCon5);
  
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
  
  
    %generate key 6
  %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  
  w23_rot=rot90(w23);
  w23_rot_vector=transpose(w23_rot);
  w23_rot_vector_subbyte=subbyte__32bit(w23_rot_vector);
  w23_rot_vector_subbyte=logical(w23_rot_vector_subbyte);
  t24=xor(w23_rot_vector_subbyte,RCon6);
  
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
  
  
  
  
  
  
  
     %generate key 7
  %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  
  w27_rot=rot90(w27);
  w27_rot_vector=transpose(w27_rot);
  w27_rot_vector_subbyte=subbyte__32bit(w27_rot_vector);
  w27_rot_vector_subbyte=logical(w27_rot_vector_subbyte);
  t28=xor(w27_rot_vector_subbyte,RCon7);
  
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
  
  
  
  
    %generate key 8
  %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  
  w31_rot=rot90(w31);
  w31_rot_vector=transpose(w31_rot);
  w31_rot_vector_subbyte=subbyte__32bit(w31_rot_vector);
  w31_rot_vector_subbyte=logical(w31_rot_vector_subbyte);
  t32=xor(w31_rot_vector_subbyte,RCon8);
  
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
  
  
  
   %generate key 9
  %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  
  w35_rot=rot90(w35);
  w35_rot_vector=transpose(w35_rot);
  w35_rot_vector_subbyte=subbyte__32bit(w35_rot_vector);
  w35_rot_vector_subbyte=logical(w35_rot_vector_subbyte);
  t36=xor(w35_rot_vector_subbyte,RCon9);
  
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
  
  
  
  
  %generate key 10
  %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  
  w39_rot=rot90(w39);
  w39_rot_vector=transpose(w39_rot);
  w39_rot_vector_subbyte=subbyte__32bit(w39_rot_vector);
  w39_rot_vector_subbyte=logical(w39_rot_vector_subbyte);
  t40=xor(w39_rot_vector_subbyte,RCon10);
  
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
  
  
  disp('the preround key is');
  disp(cipher_key);
  disp('the keies of the 10 rounds are ');
  disp(key_1_hex);
  disp(key_2_hex);
  disp(key_3_hex);
  disp(key_4_hex);
  disp(key_5_hex);
  disp(key_6_hex);
  disp(key_7_hex);
  disp(key_8_hex);
  disp(key_9_hex);
  disp(key_10_hex);
  
  
  %%%%% the functions used and made by us are
  %%%%% subbyte_32bit and   subbyte
  
  
  
  
  
  
  
  
  
  
  
  
 