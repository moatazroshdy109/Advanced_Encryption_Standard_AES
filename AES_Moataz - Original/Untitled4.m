k=['12' '45' 'a2' 'a1' '23' '31' 'a4' 'a3' 'b2' 'cc' 'ab' '34' 'c2' 'bb' '77' '23'];
ck=key_exp(k);
ckz=keyexp_z(k);
ckh=binaryVectorToHex(ck)
ckzh=binaryVectorToHex(ckz)
sub=Sub_Byte_Z(k)
c=[];
for nn=1:4
    c(1,8*nn-7:8*nn)=SUB_mo( k(2*nn-1:2*nn) );
end
binaryVectorToHex(c)
