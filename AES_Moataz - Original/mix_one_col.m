function c_new=mix_one_col(c)
const_matrix_mix_col=['0' '2' '0' '3' '0' '1' '0' '1';'0' '1' '0' '2' '0' '3' '0' '1' ;'0' '1' '0' '1' '0' '2' '0' '3';'0' '2' '0' '1' '0' '1' '0' '2';]
const_matrix_mix_col=hexToBinaryVector(const_matrix_mix_col,32);

ax=and(c(1,1:8),const_matrix_mix_col(1,1:8));
by=and(c(2,1:8),const_matrix_mix_col(1,9:16));
cz=and(c(3,1:8),const_matrix_mix_col(1,17:24));
dt=and(c(4,1:8),const_matrix_mix_col(1,25:32));

c_new_1_1=xor(xor(ax,by),xor(cz,dt));

ex=and(c(1,1:8),const_matrix_mix_col(2,1:8));
fy=and(c(2,1:8),const_matrix_mix_col(2,9:16));
gz=and(c(3,1:8),const_matrix_mix_col(2,17:24));
ht=and(c(4,1:8),const_matrix_mix_col(2,25:32));

c_new_2_1=xor(xor(ex,fy),xor(gz,ht));


ix=and(c(1,1:8),const_matrix_mix_col(3,1:8));
jy=and(c(2,1:8),const_matrix_mix_col(3,9:16));
kz=and(c(3,1:8),const_matrix_mix_col(3,17:24));
lt=and(c(4,1:8),const_matrix_mix_col(3,25:32));

c_new_3_1=xor(xor(ix,jy),xor(kz,lt));


mx=and(c(1,1:8),const_matrix_mix_col(4,1:8));
ny=and(c(2,1:8),const_matrix_mix_col(4,9:16));
oz=and(c(3,1:8),const_matrix_mix_col(4,17:24));
pt=and(c(4,1:8),const_matrix_mix_col(4,25:32));

c_new_4_1=xor(xor(mx,ny),xor(oz,pt));

c_new=[c_new_1_1;c_new_2_1;c_new_3_1;c_new_4_1];
end