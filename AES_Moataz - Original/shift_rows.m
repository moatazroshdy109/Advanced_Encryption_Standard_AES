function s_shift_rows=shift_rows(s_aftersubbyte)
x=[];%<<<<<<<<<<<<<<<<<<<<<<<2ed row
x(1,1:32)=s_aftersubbyte(2,1:32);
x(1,33:40)=s_aftersubbyte(2,1:8);
x=x(1,9:40);
y=[];%<<<<<<<<<<<<<<<<<<<<<<3rd row
y=s_aftersubbyte(3,1:32);
y(1,33:48)=s_aftersubbyte(3,1:16);
y=y(1,17:48);
z=[];%<<<<<<<<<<<<<<<<<<<<<<4th row
z=s_aftersubbyte(4,1:32);
z(1,33:56)=s_aftersubbyte(4,1:24);
z=z(1,25:56);
%<<<<<<<<<<<<<<<<<<<<<
s_shift_rows(1,1:32)=s_aftersubbyte(1,1:32);
s_shift_rows(2,1:32)=x(1,1:32);
s_shift_rows(3,1:32)=y(1,1:32);
s_shift_rows(4,1:32)=z(1,1:32);

end