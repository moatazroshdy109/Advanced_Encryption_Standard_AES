
% shift rows
s_shift_rows=shift_rows(s_aftersubbyte);
s_shift_rows_hex=binaryVectorToHex(s_shift_rows);
s_shift_rows=logical(s_shift_rows);
% mix couloms
s_mix_col=mix_col(s_shift_rows);
s_mix_col_hex=binaryVectorToHex(s_mix_col);
% add round key
c1_s_mix_col=[s_mix_col(1,1:8) s_mix_col(2,1:8) s_mix_col(3,1:8) s_mix_col(4,1:8)];
c2_s_mix_col=[s_mix_col(1,9:16) s_mix_col(2,9:16) s_mix_col(3,9:16) s_mix_col(4,9:16)];
c3_s_mix_col=[s_mix_col(1,17:24) s_mix_col(2,17:24) s_mix_col(3,17:24) s_mix_col(4,17:24)];
c4_s_mix_col=[s_mix_col(1,25:32) s_mix_col(2,25:32) s_mix_col(3,25:32) s_mix_col(4,25:32)];
s_mix_col_vector=[c1_s_mix_col c2_s_mix_col c3_s_mix_col c4_s_mix_col];
input_of_next_round=xor(key_1,s_mix_col_vector);
% end of the round