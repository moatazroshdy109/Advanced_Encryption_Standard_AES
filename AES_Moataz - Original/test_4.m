clc
clear all
close all
% enter the plain text
plaintext=['00' '04' '12' '14' '12' '04' '12' '00' '0C' '00' '13' '11' '08' '23' '19' '19'];
k=['24' '75' 'A2' 'B3' '34' '75' '56' '88' '31' 'E2' '12' '00' '13' 'AA' '51' '87'];
Round_7_ip=['18' '64' '5A' '8E';'0A' '68' 'EF' 'B2';'B9' '6A' 'D7' '10';'B5' 'FB' '79' '4D'];
k_m=key_exp(k);
plaintext_b=hexToBinaryVector(plaintext,128);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%        preround
s_pre=xor(plaintext_b,hexToBinaryVector(k,128));
s_pre_hex=binaryVectorToHex(s_pre);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%           one ROUND

c=[];

         
   for nn=1:16
       c(8*nn-7:8*nn)=SUB_mo(s_pre_hex(2*nn-1:2*nn) );
   end
   