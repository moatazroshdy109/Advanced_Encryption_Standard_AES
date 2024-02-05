clc
clear all
close all
% enter the plain text
plaintext=['00' '04' '12' '14' '12' '04' '12' '00' '0C' '00' '13' '11' '08' '23' '19' '19'];
k=['24' '75' 'A2' 'B3' '34' '75' '56' '88' '31' 'E2' '12' '00' '13' 'AA' '51' '87'];
k_m=key_exp(k);
plaintext_b=hexToBinaryVector(plaintext,128);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%        preround
s_pre=xor(plaintext_b,hexToBinaryVector(k,128));
s_pre_hex=binaryVectorToHex(s_pre)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%           one ROUND

c=[];

         
   for nn=1:16
       c(8*nn-7:8*nn)=SUB_mo(s_pre_hex(2*nn-1:2*nn) );
   end
    
    c1= reshape(c,8,16)';
    state=[c1(1,1:8) c1(5,1:8) c1(9,1:8) c1(13,1:8);c1(2,1:8) c1(6,1:8) c1(10,1:8) c1(14,1:8);c1(3,1:8) c1(7,1:8) c1(11,1:8) c1(15,1:8);c1(4,1:8) c1(8,1:8) c1(12,1:8) c1(16,1:8)];
    state=logical(state);
    state_hex=binaryVectorToHex(state);
    state_shift_row=shift_rows(state);
    state_shift_row_hex=binaryVectorToHex(state_shift_row);
            
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%    
    
        
    c_mix_col =MIX_MO(state_shift_row);
     
    s_addround1=xor(c_mix_col,k_m(1,1:128));
    s_pre_hex=binaryVectorToHex(s_addround1)


%%%%%%%%% Round #10
c=[];
for nn=1:16
       c(8*nn-7:8*nn)=SUB_mo(s_pre_hex(2*nn-1:2*nn) );
   end
    
    c_reshap= reshape(c,4,32);
    c_reshap=logical(c_reshap);
    c_hex=binaryVectorToHex(c_reshap);
    c_shift_row=shift_rows(c_reshap);
    
    c_resh= reshape(c_shift_row,1,128); 
    s_addround1=xor(c_resh,k_m(10,1:128));
    ciphertext=binaryVectorToHex(s_addround1);













