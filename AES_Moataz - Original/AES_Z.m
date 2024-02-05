clc
clear all
close all
% enter the plain text
%plaintext=['00' '00' '00' '00' '00' '00' '00' '00' '00' '00' '00' '00' '00' '00' '00' '00' ];
%plaintext=['00' '00' '00' '00' '00' '00' '00' '00' '00' '00' '00' '00' '00' '00' '00' '01' ];
plaintext=['00' '04' '12' '14' '12' '04' '12' '00' '0C' '00' '13' '11' '08' '23' '19' '19'];
k=['24' '75' 'A2' 'B3' '34' '75' '56' '88' '31' 'E2' '12' '00' '13' 'AA' '54' '87'];
k_m=keyexp_z(k);
plaintext_b=hexToBinaryVector(plaintext,128);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%(preround)
s_pre=xor(plaintext_b,hexToBinaryVector(k,128));
s_pre_hex=binaryVectorToHex(s_pre);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%(from Round #1 to Round #9)
for Round=1:9
    c=Sub_Byte_Z(s_pre_hex);
    c=hexToBinaryVector(c,128);
    c1= reshape(c,8,16)';
    state=[c1(1,1:8) c1(5,1:8) c1(9,1:8) c1(13,1:8);c1(2,1:8) c1(6,1:8) c1(10,1:8) c1(14,1:8);c1(3,1:8) c1(7,1:8) c1(11,1:8) c1(15,1:8);c1(4,1:8) c1(8,1:8) c1(12,1:8) c1(16,1:8)];
    state=logical(state);
    state_hex=binaryVectorToHex(state);
    state_shift_row=shift_rows(state);
    state_shift_row_hex=binaryVectorToHex(state_shift_row);   
    c_mix_col =MIX_MO(state_shift_row);
     
    s_addround1=xor(c_mix_col,k_m(Round,1:128));
    s_pre_hex=binaryVectorToHex(s_addround1);
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% (Round #10)
    c=Sub_Byte_Z(s_pre_hex);
    c=hexToBinaryVector(c,128);
    c1= reshape(c,8,16)';
    state=[c1(1,1:8) c1(5,1:8) c1(9,1:8) c1(13,1:8);c1(2,1:8) c1(6,1:8) c1(10,1:8) c1(14,1:8);c1(3,1:8) c1(7,1:8) c1(11,1:8) c1(15,1:8);c1(4,1:8) c1(8,1:8) c1(12,1:8) c1(16,1:8)];
    state=logical(state);
    state_hex=binaryVectorToHex(state);
    state_shift_row=shift_rows(state);
    state_shift_row_hex=binaryVectorToHex(state_shift_row);
    state_slyt=[];
for i=1:4
    p=[];
    for n=1:4
            p(1,8*n-7:8*n)=state_shift_row(n,8*i-7:8*i);
    end
    state_slyt=[state_slyt p];   
end
    s_addround_10=xor(state_slyt,k_m(10,1:128));
    s_pre_hex=binaryVectorToHex(s_addround_10)