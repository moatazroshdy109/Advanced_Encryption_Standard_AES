function s_mix_col=mix_col(s_shift_rows)

c1=[];
c1(1,1:8)=s_shift_rows(1,1:8);
c1(2,1:8)=s_shift_rows(2,1:8);
c1(3,1:8)=s_shift_rows(3,1:8);
c1(4,1:8)=s_shift_rows(4,1:8);
c1=logical(c1);
c2=[];
c2(1,1:8)=s_shift_rows(1,9:16);
c2(2,1:8)=s_shift_rows(2,9:16);
c2(3,1:8)=s_shift_rows(3,9:16);
c2(4,1:8)=s_shift_rows(4,9:16);
c2=logical(c2);
c3=[];
c3(1,1:8)=s_shift_rows(1,17:24);
c3(2,1:8)=s_shift_rows(2,17:24);
c3(3,1:8)=s_shift_rows(3,17:24);
c3(4,1:8)=s_shift_rows(4,17:24);
c3=logical(c3);
c4=[];
c4(1,1:8)=s_shift_rows(1,25:32);
c4(2,1:8)=s_shift_rows(2,25:32);
c4(3,1:8)=s_shift_rows(3,25:32);
c4(4,1:8)=s_shift_rows(4,25:32);
c4=logical(c4);

c1_new=mix_one_col(c1);
c2_new=mix_one_col(c2);
c3_new=mix_one_col(c3);
c4_new=mix_one_col(c4);
s_mix_col=[c1_new c2_new c3_new c4_new];
end



