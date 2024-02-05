function s_mix_col=mix_col_mo(state_shift_row)
s1=[state_shift_row(1,1:8)'; state_shift_row(2,1:8)';state_shift_row(3,1:8)';state_shift_row(4,1:8)'];
s2=[state_shift_row(1,9:16)'; state_shift_row(2,9:16)';state_shift_row(3,9:16)';state_shift_row(4,9:16)'];
s3=[state_shift_row(1,17:24)'; state_shift_row(2,17:24)';state_shift_row(3,17:24)';state_shift_row(4,17:24)'];
s4=[state_shift_row(1,25:32)'; state_shift_row(2,25:32)';state_shift_row(3,25:32)';state_shift_row(4,25:32)'];

c1=['02' '03' '01' '01'];
c2=['01' '02' '03' '01'];
c3=['01' '01' '02' '03'];
c4=['03' '01' '01' '02'];
c1_binary=hexToBinaryVector(c1,32);
c2_binary=hexToBinaryVector(c2,32);
c3_binary=hexToBinaryVector(c3,32);
c4_binary=hexToBinaryVector(c4,32);



ax=and(c1_binary',s1);
by=and(c2_binary',s1);
cz=and(c3_binary',s1);
dt=and(c4_binary',s1);

ax_n1=ax(1:8)+ax(9:16)+ax(17:24)+ax(25:32);
ay_n1=by(1:8)+by(9:16)+by(17:24)+by(25:32);
az_n1=cz(1:8)+cz(9:16)+cz(17:24)+cz(25:32);
at_n1=dt(1:8)+dt(9:16)+dt(17:24)+dt(25:32);

ax_n1=mod(ax_n1,2);
ay_n1=mod(ay_n1,2);
az_n1=mod(az_n1,2);
at_n1=mod(at_n1,2);






ax=and(c1_binary',s2);
by=and(c2_binary',s2);
cz=and(c3_binary',s2);
dt=and(c4_binary',s2);

ax_n2=ax(1:8)+ax(9:16)+ax(17:24)+ax(25:32);
ay_n2=by(1:8)+by(9:16)+by(17:24)+by(25:32);
az_n2=cz(1:8)+cz(9:16)+cz(17:24)+cz(25:32);
at_n2=dt(1:8)+dt(9:16)+dt(17:24)+dt(25:32);

ax_n2=mod(ax_n2,2);
ay_n2=mod(ay_n2,2);
az_n2=mod(az_n2,2);
at_n2=mod(at_n2,2);






ax=and(c1_binary',s3);
by=and(c2_binary',s3);
cz=and(c3_binary',s3);
dt=and(c4_binary',s3);

ax_n3=ax(1:8)+ax(9:16)+ax(17:24)+ax(25:32);
ay_n3=by(1:8)+by(9:16)+by(17:24)+by(25:32);
az_n3=cz(1:8)+cz(9:16)+cz(17:24)+cz(25:32);
at_n3=dt(1:8)+dt(9:16)+dt(17:24)+dt(25:32);

ax_n3=mod(ax_n3,2);
ay_n3=mod(ay_n3,2);
az_n3=mod(az_n3,2);
at_n3=mod(at_n3,2);









ax=and(c1_binary',s4);
by=and(c2_binary',s4);
cz=and(c3_binary',s4);
dt=and(c4_binary',s4);

ax_n4=ax(1:8)+ax(9:16)+ax(17:24)+ax(25:32);
ay_n4=by(1:8)+by(9:16)+by(17:24)+by(25:32);
az_n4=cz(1:8)+cz(9:16)+cz(17:24)+cz(25:32);
at_n4=dt(1:8)+dt(9:16)+dt(17:24)+dt(25:32);

ax_n4=mod(ax_n4,2);
ay_n4=mod(ay_n4,2);
az_n4=mod(az_n4,2);
at_n4=mod(at_n4,2);


s_mix_col=[ax_n1' ay_n1' az_n1' at_n1' ax_n2' ay_n2' az_n2' at_n2' ax_n3' ay_n3' az_n3' at_n3' ax_n4' ay_n4' az_n4' at_n4' ];











end



