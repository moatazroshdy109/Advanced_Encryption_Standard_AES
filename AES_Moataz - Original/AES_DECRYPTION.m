clc
clear all
close all
cipher_text=['632CD45E5D56EDB5620401A0AA9C2D8D'];
% cipher_text=['26F39BBCA19C0FB7C72E7E3063927313'];
% cipher_text=['BC028BD3E0E3B195550D6DF8E6F18241'];
k=['24' '75' 'A2' 'B3' '34' '75' '56' '88' '31' 'E2' '12' '00' '13' 'AA' '54' '87'];
k_m=key_exp(k);
cipher_bin=hexToBinaryVector(cipher_text,128);
%%%%%%%%%%% ROND   # 10
s_addround_10=xor(cipher_bin,k_m(10,1:128));
c1= reshape(s_addround_10,8,16)';
state=[c1(1,1:8) c1(5,1:8) c1(9,1:8) c1(13,1:8);c1(2,1:8) c1(6,1:8) c1(10,1:8) c1(14,1:8);c1(3,1:8) c1(7,1:8) c1(11,1:8) c1(15,1:8);c1(4,1:8) c1(8,1:8) c1(12,1:8) c1(16,1:8)];
state=logical(state);
state_col_1=state(1,:);
state_col_2=state(2,:);
state_col_3=state(3,:);
state_col_4=state(4,:);
state_col_2_shifted=circshift(state_col_2,[0,8]);
state_col_3_shifted=circshift(state_col_3,[0,16]);
state_col_4_shifted=circshift(state_col_4,[0,24]);
state_shift_row=[state_col_1;state_col_2_shifted;state_col_3_shifted;state_col_4_shifted]
    state_slyt=[];
for i=1:4
    p=[];
    for n=1:4
            p(1,8*n-7:8*n)=state_shift_row(n,8*i-7:8*i);
    end
    state_slyt=[state_slyt p];   
end
 s_hex=binaryVectorToHex(state_slyt);
c=[];
for nn=1:16
       c(8*nn-7:8*nn)=INV_SUB_mo(s_hex(2*nn-1:2*nn) );
end
%(from Round #1 to Round #9)

for Round=9:-1:1
    
s_addround_1=xor(c,k_m(Round,1:128));
c1= reshape(s_addround_1,8,16)';
state=[c1(1,1:8) c1(5,1:8) c1(9,1:8) c1(13,1:8);c1(2,1:8) c1(6,1:8) c1(10,1:8) c1(14,1:8);c1(3,1:8) c1(7,1:8) c1(11,1:8) c1(15,1:8);c1(4,1:8) c1(8,1:8) c1(12,1:8) c1(16,1:8)];
state=logical(state);
state=INV_MIX_MO( state );
c1= reshape(state,8,16)';
state=[c1(1,1:8) c1(5,1:8) c1(9,1:8) c1(13,1:8);c1(2,1:8) c1(6,1:8) c1(10,1:8) c1(14,1:8);c1(3,1:8) c1(7,1:8) c1(11,1:8) c1(15,1:8);c1(4,1:8) c1(8,1:8) c1(12,1:8) c1(16,1:8)];

state_col_1=state(1,:);
state_col_2=state(2,:);
state_col_3=state(3,:);
state_col_4=state(4,:);
state_col_2_shifted=circshift(state_col_2,[0,8]);
state_col_3_shifted=circshift(state_col_3,[0,16]);
state_col_4_shifted=circshift(state_col_4,[0,24]);
state_shift_row=[state_col_1;state_col_2_shifted;state_col_3_shifted;state_col_4_shifted];
   state_slyt=[];
for i=1:4
    p=[];
    for n=1:4
            p(1,8*n-7:8*n)=state_shift_row(n,8*i-7:8*i);
    end
    state_slyt=[state_slyt p];   
end
s_hex=binaryVectorToHex(state_slyt);
c=[];
for nn=1:16
       c(8*nn-7:8*nn)=INV_SUB_mo(s_hex(2*nn-1:2*nn) );
end        
end
plaintext_b=xor(c,hexToBinaryVector(k,128));
 plaintext=binaryVectorToHex(plaintext_b)      
       
    