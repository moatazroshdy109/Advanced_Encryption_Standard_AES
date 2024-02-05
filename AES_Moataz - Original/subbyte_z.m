function result=subbyte_z(s)
      %work on every byte alone 
      % enter the input in hex
      % work on 128 bit
s=hexToBinaryVector(s,128);
s=rot90(s);
s=s';
byte1=s(1,1:8); 
b_1=bi2de(byte1);
byte2=s(1,9:16);                 
b_2=bi2de(byte2);
byte3=s(1,17:24);                 
b_3=bi2de(byte3);
byte4=s(1,25:32);                 
b_4=bi2de(byte4);

byte5=s(1,33:40);                
b_5=bi2de(byte5);
byte6=s(1,41:48);                
b_6=bi2de(byte6);
byte7=s(1,49:56);                
b_7=bi2de(byte7);
byte8=s(1,57:64);                
b_8=bi2de(byte8);

byte9=s(1,65:72);               
b_9=bi2de(byte9);
byte10=s(1,73:80);              
b_10=bi2de(byte10);
byte11=s(1,81:88);              
b_11=bi2de(byte11);
byte12=s(1,89:96);              
b_12=bi2de(byte12);

byte13=s(1,97:104);              
b_13=bi2de(byte13);
byte14=s(1,105:112);              
b_14=bi2de(byte14);
byte15=s(1,113:120);              
b_15=bi2de(byte15);
byte16=s(1,121:128);              
b_16=bi2de(byte16);
s_dec=[b_1 b_2 b_3 b_4 b_5 b_6 b_7 b_8 b_9 b_10 b_11 b_12 b_13 b_14 b_15 b_16];
hh_sub=[];
i=1;
while i<17
    hh=s_dec(1,i);
switch hh
    case 0
        hh_sub(1,17-i)=99;
    case 1
        hh_sub(1,17-i)=124;
    case 2
        hh_sub(1,17-i)=119;
    case 3
        hh_sub(1,17-i)=123;
    case 4
        hh_sub(1,17-i)=243;
    case 5
        hh_sub(1,17-i)=107;
    case 6
        hh_sub(1,17-i)=111;
    case 7
        hh_sub(1,17-i)=197;
    case 8
        hh_sub(1,17-i)=48;
    case 9
        hh_sub(1,17-i)=1;
    case 10
        hh_sub(1,17-i)=103;
    case 11
        hh_sub(1,17-i)=43;
    case 12
        hh_sub(1,17-i)=254;
    case 13
        hh_sub(1,17-i)=215;
    case 14
        hh_sub(1,17-i)=171;
    case 15
        hh_sub(1,17-i)=118;
    case 16
        hh_sub(1,17-i)=202;
    case 17
        hh_sub(1,17-i)=130;
    case 18
        hh_sub(1,17-i)=201;
    case 19
        hh_sub(1,17-i)=125;
    case 20
        hh_sub(1,17-i)=250;
    case 21
        hh_sub(1,17-i)=89;
    case 22
        hh_sub(1,17-i)=71;
    case 23
        hh_sub(1,17-i)=240;
    case 24
        hh_sub(1,17-i)=173;
    case 25
        hh_sub(1,17-i)=212;
    case 26
        hh_sub(1,17-i)=162;
    case 27
        hh_sub(1,17-i)=175;
    case 28
        hh_sub(1,17-i)=156;
    case 29
        hh_sub(1,17-i)=164;
    case 30
        hh_sub(1,17-i)=114;
    case 31
        hh_sub(1,17-i)=192;
    case 32
        hh_sub(1,17-i)=183;
    case 33
        hh_sub(1,17-i)=253;
    case 34
        hh_sub(1,17-i)=147;
    case 35
        hh_sub(1,17-i)=38;
    case 36
        hh_sub(1,17-i)=54;
    case 37
        hh_sub(1,17-i)=63;
    case 38
        hh_sub(1,17-i)=247;
    case 39
        hh_sub(1,17-i)=204;
    case 40
        hh_sub(1,17-i)=52;
    case 41
        hh_sub(1,17-i)=165;
    case 42
        hh_sub(1,17-i)=229;
    case 43
        hh_sub(1,17-i)=224;
    case 44
        hh_sub(1,17-i)=113;
    case 45
        hh_sub(1,17-i)=216;
    case 46
        hh_sub(1,17-i)=49;
    case 47
        hh_sub(1,17-i)=21;
    case 48
        hh_sub(1,17-i)=4;
    case 49
        hh_sub(1,17-i)=199;
    case 50
        hh_sub(1,17-i)=35;
    case 51
        hh_sub(1,17-i)=195;
    case 52
        hh_sub(1,17-i)=24;
    case 53
        hh_sub(1,17-i)=150;
    case 54
        hh_sub(1,17-i)=5;
    case 55
        hh_sub(1,17-i)=154;
    case 56
        hh_sub(1,17-i)=7;
    case 57
        hh_sub(1,17-i)=18;
    case 58
        hh_sub(1,17-i)=128;
    case 59
        hh_sub(1,17-i)=226;
    case 60
        hh_sub(1,17-i)=235;
    case 61
        hh_sub(1,17-i)=39;
    case 62
        hh_sub(1,17-i)=178;
    case 63
        hh_sub(1,17-i)=117;
    case 64
        hh_sub(1,17-i)=9;
    case 65
        hh_sub(1,17-i)=131;
    case 66
        hh_sub(1,17-i)=44;
    case 67
        hh_sub(1,17-i)=26;
    case 68
        hh_sub(1,17-i)=27;
    case 69
        hh_sub(1,17-i)=110;
    case 70
        hh_sub(1,17-i)=90;
    case 71
        hh_sub(1,17-i)=160;
    case 72
        hh_sub(1,17-i)=82;
    case 73
        hh_sub(1,17-i)=59;
    case 74
        hh_sub(1,17-i)=214;
    case 75
        hh_sub(1,17-i)=179;
    case 76
        hh_sub(1,17-i)=41;
    case 77
        hh_sub(1,17-i)=227;
    case 78
        hh_sub(1,17-i)=47;
    case 79
        hh_sub(1,17-i)=132;
    case 80
        hh_sub(1,17-i)=83;
    case 81
        hh_sub(1,17-i)=209;
    case 82
        hh_sub(1,17-i)=0;
    case 83
        hh_sub(1,17-i)=237;
    case 84
        hh_sub(1,17-i)=32;
    case 85
        hh_sub(1,17-i)=252;
    case 86
        hh_sub(1,17-i)=177;
    case 87
        hh_sub(1,17-i)=91;
    case 88
        hh_sub(1,17-i)=106;
    case 89
        hh_sub(1,17-i)=203;
    case 90
        hh_sub(1,17-i)=190;
    case 91
        hh_sub(1,17-i)=57;
    case 92
        hh_sub(1,17-i)=74;
    case 93
        hh_sub(1,17-i)=76;
    case 94
        hh_sub(1,17-i)=88;
    case 95
        hh_sub(1,17-i)=207;
    case 96
        hh_sub(1,17-i)=208;
    case 97
        hh_sub(1,17-i)=239;
    case 98
        hh_sub(1,17-i)=170;
    case 99
        hh_sub(1,17-i)=251;
    case 100
        hh_sub(1,17-i)=67;
    case 101
        hh_sub(1,17-i)=77;
    case 102
        hh_sub(1,17-i)=51;
    case 103
        hh_sub(1,17-i)=133;
    case 104
        hh_sub(1,17-i)=69;
    case 105
        hh_sub(1,17-i)=249;
    case 106
        hh_sub(1,17-i)=2;
    case 107
        hh_sub(1,17-i)=127;
    case 108
        hh_sub(1,17-i)=80;
    case 109
        hh_sub(1,17-i)=60;
    case 100
        hh_sub(1,17-i)=159;
    case 111
        hh_sub(1,17-i)=168;
    case 112
        hh_sub(1,17-i)=81;
    case 113
        hh_sub(1,17-i)=163;
    case 114
        hh_sub(1,17-i)=64;
    case 115
        hh_sub(1,17-i)=143;
    case 116
        hh_sub(1,17-i)=146;
    case 117
        hh_sub(1,17-i)=157;
    case 118
        hh_sub(1,17-i)=56;
    case 119
        hh_sub(1,17-i)=245; 
    case 120
        hh_sub(1,17-i)=188;
    case 121
        hh_sub(1,17-i)=182;
    case 122
        hh_sub(1,17-i)=218;
    case 123
        hh_sub(1,17-i)=33;
    case 124
        hh_sub(1,17-i)=16;
    case 125
        hh_sub(1,17-i)=255;
    case 126
        hh_sub(1,17-i)=243;
    case 127
        hh_sub(1,17-i)=210;
    case 128
        hh_sub(1,17-i)=205;
    case 129
        hh_sub(1,17-i)=12;
    case 130
        hh_sub(1,17-i)=19;
    case 131
        hh_sub(1,17-i)=236;
    case 132
        hh_sub(1,17-i)=95;
    case 133
        hh_sub(1,17-i)=151;
    case 134
        hh_sub(1,17-i)=68;
    case 135
        hh_sub(1,17-i)=23;
    case 136
        hh_sub(1,17-i)=196;
    case 137
        hh_sub(1,17-i)=167;
    case 138
        hh_sub(1,17-i)=126;
    case 139
        hh_sub(1,17-i)=61;
    case 140
        hh_sub(1,17-i)=100;
    case 141
        hh_sub(1,17-i)=93;
    case 142
        hh_sub(1,17-i)=25;
    case 143
        hh_sub(1,17-i)=115;
    case 144
        hh_sub(1,17-i)=96;
    case 145
        hh_sub(1,17-i)=129;
    case 146
        hh_sub(1,17-i)=79;
    case 147
        hh_sub(1,17-i)=220;
    case 148
        hh_sub(1,17-i)=34;
    case 149
        hh_sub(1,17-i)=42;
    case 150
        hh_sub(1,17-i)=144;
    case 151
        hh_sub(1,17-i)=136;
    case 152
        hh_sub(1,17-i)=70;
    case 153
        hh_sub(1,17-i)=238;
    case 154
        hh_sub(1,17-i)=184;
    case 155
        hh_sub(1,17-i)=20;
    case 156
        hh_sub(1,17-i)=222;
    case 157
        hh_sub(1,17-i)=94;
    case 158
        hh_sub(1,17-i)=11;
    case 159
        hh_sub(1,17-i)=219;
    case 160
        hh_sub(1,17-i)=224;
    case 161
        hh_sub(1,17-i)=50;
    case 162
        hh_sub(1,17-i)=58;
    case 163
        hh_sub(1,17-i)=10;
    case 164
        hh_sub(1,17-i)=73;
    case 165
        hh_sub(1,17-i)=6;
    case 166
        hh_sub(1,17-i)=36;
    case 167
        hh_sub(1,17-i)=92;
    case 168
        hh_sub(1,17-i)=194;
    case 169
        hh_sub(1,17-i)=211;
    case 170
        hh_sub(1,17-i)=172;
    case 171
        hh_sub(1,17-i)=98;
    case 172
        hh_sub(1,17-i)=145;
    case 173
        hh_sub(1,17-i)=49;
    case 174
        hh_sub(1,17-i)=228;
    case 175
        hh_sub(1,17-i)=121;
    case 176
        hh_sub(1,17-i)=231;
    case 177
        hh_sub(1,17-i)=203;
    case 178
        hh_sub(1,17-i)=55;
    case 179
        hh_sub(1,17-i)=109;
    case 180
        hh_sub(1,17-i)=141;
    case 181
        hh_sub(1,17-i)=213;
    case 182
        hh_sub(1,17-i)=78;
    case 183
        hh_sub(1,17-i)=169;
    case 184
        hh_sub(1,17-i)=108;
    case 185
        hh_sub(1,17-i)=86;
    case 186
        hh_sub(1,17-i)=244;
    case 187
        hh_sub(1,17-i)=234;
    case 188
        hh_sub(1,17-i)=101;
    case 189
        hh_sub(1,17-i)=122;
    case 190
        hh_sub(1,17-i)=174;
    case 191
        hh_sub(1,17-i)=8;
    case 192
        hh_sub(1,17-i)=186;
    case 193
        hh_sub(1,17-i)=120;
    case 194
        hh_sub(1,17-i)=37;
    case 195
        hh_sub(1,17-i)=46;
    case 196
        hh_sub(1,17-i)=28;
    case 197
        hh_sub(1,17-i)=166;
    case 198
        hh_sub(1,17-i)=180;
    case 199
        hh_sub(1,17-i)=198;
    case 200
        hh_sub(1,17-i)=232;
    case 201
        hh_sub(1,17-i)=221;
    case 202
        hh_sub(1,17-i)=116;
    case 203
        hh_sub(1,17-i)=131;
    case 204
        hh_sub(1,17-i)=75;
    case 205
        hh_sub(1,17-i)=189;
    case 206
        hh_sub(1,17-i)=139;
    case 207
        hh_sub(1,17-i)=138;
    case 208
        hh_sub(1,17-i)=112;
    case 209
        hh_sub(1,17-i)=62;
    case 210
        hh_sub(1,17-i)=181;
    case 211
        hh_sub(1,17-i)=102;
    case 212
        hh_sub(1,17-i)=72;
    case 213
        hh_sub(1,17-i)=3;
    case 214
        hh_sub(1,17-i)=246;
    case 215
        hh_sub(1,17-i)=14;
    case 216
        hh_sub(1,17-i)=97;
    case 217
        hh_sub(1,17-i)=53;
    case 218
        hh_sub(1,17-i)=67;
    case 219
        hh_sub(1,17-i)=185;
    case 220
        hh_sub(1,17-i)=134;
    case 221
        hh_sub(1,17-i)=193;
    case 222
        hh_sub(1,17-i)=29;
    case 223
        hh_sub(1,17-i)=158;
    case 224
        hh_sub(1,17-i)=225;
    case 225
        hh_sub(1,17-i)=248;
    case 226
        hh_sub(1,17-i)=152;
    case 227
        hh_sub(1,17-i)=17;
    case 228
        hh_sub(1,17-i)=105;
    case 229
        hh_sub(1,17-i)=217;
    case 230
        hh_sub(1,17-i)=142;
    case 231
        hh_sub(1,17-i)=148;
    case 232
        hh_sub(1,17-i)=155;
    case 233
        hh_sub(1,17-i)=30;
    case 234
        hh_sub(1,17-i)=135;
    case 235
        hh_sub(1,17-i)=233;
    case 236
        hh_sub(1,17-i)=206;
    case 237
        hh_sub(1,17-i)=85;
    case 238
        hh_sub(1,17-i)=40;
    case 239
        hh_sub(1,17-i)=223;
    case 240
        hh_sub(1,17-i)=140;
    case 241
        hh_sub(1,17-i)=161;
    case 242
        hh_sub(1,17-i)=137;
    case 243
        hh_sub(1,17-i)=13;
    case 244
        hh_sub(1,17-i)=191;
    case 245
        hh_sub(1,17-i)=230;
    case 246
        hh_sub(1,17-i)=66;
    case 247
        hh_sub(1,17-i)=104;
    case 248
        hh_sub(1,17-i)=65;
    case 249
        hh_sub(1,17-i)=153;
    case 250
        hh_sub(1,17-i)=45;
    case 251
        hh_sub(1,17-i)=15;
    case 252
        hh_sub(1,17-i)=176;
    case 253
        hh_sub(1,17-i)=84;
    case 254
        hh_sub(1,17-i)=187;
    case 255
        hh_sub(1,17-i)=22;
    otherwise 
        hh_sub(1,17-i)=999999;
end
    i=i+1;
end
result1=hh_sub;
result1=dec2hex(result1);
result(1,1:2)=result1(1,:);
result(1,3:4)=result1(2,:);
result(1,5:6)=result1(3,:);
result(1,7:8)=result1(4,:);
result(1,9:10)=result1(5,:);
result(1,11:12)=result1(6,:);
result(1,13:14)=result1(7,:);
result(1,15:16)=result1(8,:);
result(1,17:18)=result1(9,:);
result(1,19:20)=result1(10,:);
result(1,21:22)=result1(11,:);
result(1,23:24)=result1(12,:);
result(1,25:26)=result1(13,:);
result(1,27:28)=result1(14,:);
result(1,29:30)=result1(15,:);
result(1,31:32)=result1(16,:);




end
        
        
        
        
        
        
        
        
        
        
        