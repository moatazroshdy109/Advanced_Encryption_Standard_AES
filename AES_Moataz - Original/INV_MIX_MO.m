function [ mix_final ] = INV_MIX_MO( state_shift_row )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
const_mat=[14 11 13 9;9 14 11 13;13 9 14 11;11 13 9 14];
state_de=[];
for n=1:4
    for i=1:4
        state_de(n,i)=binaryVectorToDecimal(state_shift_row(n,8*i-7:8*i));
    end
end
const_mat_gf=gf(const_mat,8,283);
state_de_gf=gf(state_de,8,283);
mix=const_mat_gf*state_de_gf;
mix_de=0;
for n=1:16
    for i=0:255
        if i==mix(n)
            mix_de=i;
            break
        end
    end
    mixed(n)=mix_de;
end
mix_fi=decimalToBinaryVector(mixed,8);
mix_final=[];
for n=1:16
    mix_final=[mix_final mix_fi(n,:)];
end
  mix_final=logical(mix_final);    
end



    