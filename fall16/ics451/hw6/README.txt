[2016-11-12T18:42:03,938102804-10:00 super@enyo hw6]$ ./server -t 8 65000 &
[1] 18947
[Server]: Listening on port 65000.
[0]: Waiting for connection... 
[1]: Waiting for connection... 
[2]: Waiting for connection... 
[3]: Waiting for connection... 
[4]: Waiting for connection... 
[5]: Waiting for connection... 
[6]: Waiting for connection... 
[7]: Waiting for connection... 
[2016-11-12T18:42:10,067111982-10:00 super@enyo hw6]$ ./client localhost 65000
[0]: Connection established. 
Sat Nov 12 18:42:22 2016
[0]: Waiting for connection... 
[2016-11-12T18:42:22,920597120-10:00 super@enyo hw6]$ ./client 192.168.1.103 65000
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:42:40 2016
[2016-11-12T18:42:40,798691438-10:00 super@enyo hw6]$ ./client 192.168.1.103 63000
Error connecting to server.
[2016-11-12T18:42:53,773610956-10:00 super@enyo hw6]$ ./client 192.168.1.102 65000
Error connecting to server.
[2016-11-12T18:42:59,453743114-10:00 super@enyo hw6]$ for i in `seq 1 999`
> do
>   ./client localhost 65000 &
> done
[2] 18985
[3] 18986
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[4] 18987
[5] 18988
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[6] 18989
[7] 18990
[5]: Connection established. 
[5]: Waiting for connection... 
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[8] 18991
Sat Nov 12 18:43:48 2016
[7]: Connection established. 
[9] 18992
[7]: Waiting for connection... 
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
Sat Nov 12 18:43:48 2016
[10] 18993
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[11] 18994
[1]: Connection established. 
[1]: Waiting for connection... 
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[12] 18995
Sat Nov 12 18:43:48 2016
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[13] 18996
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[14] 18997
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[15] 18998
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[16] 18999
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[17] 19000
[18] 19001
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[19] 19002
[1]: Connection established. 
[2]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[2]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[20] 19003
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[21] 19004
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[22] 19005
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[23] 19006
[7]: Connection established. 
Sat Nov 12 18:43:48 2016
[7]: Waiting for connection... 
[24] 19007
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[25] 19008
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[26] 19009
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[27] 19010
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[28] 19011
[3]: Connection established. 
[3]: Waiting for connection... 
[29] 19012
Sat Nov 12 18:43:48 2016
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[30] 19013
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[31] 19014
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[32] 19015
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[33] 19016
[34] 19017
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[35] 19018
[2]: Connection established. 
[2]: Waiting for connection... 
[36] 19019
Sat Nov 12 18:43:48 2016
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[37] 19020
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[38] 19021
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[39] 19022
[7]: Connection established. 
Sat Nov 12 18:43:48 2016
[7]: Waiting for connection... 
[40] 19023
[6]: Connection established. 
[6]: Waiting for connection... 
[41] 19024
Sat Nov 12 18:43:48 2016
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[42] 19025
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[43] 19026
[44] 19027
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[45] 19028
[5]: Connection established. 
[5]: Waiting for connection... 
[46] 19029
Sat Nov 12 18:43:48 2016
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[47] 19030
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[48] 19031
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[49] 19032
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[50] 19033
[51] 19034
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[52] 19035
[2]: Connection established. 
[2]: Waiting for connection... 
[53] 19036
Sat Nov 12 18:43:48 2016
[5]: Connection established. 
[5]: Waiting for connection... 
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
Sat Nov 12 18:43:48 2016
[54] 19037
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[55] 19038
[56] 19039
[57] 19040
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[58] 19041
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[1]: Connection established. 
[2]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[2]: Waiting for connection... 
[59] 19042
[60] 19043
Sat Nov 12 18:43:48 2016
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[61] 19044
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[62] 19045
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[63] 19046
[7]: Connection established. 
[64] 19047
[7]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[65] 19048
[0]: Connection established. 
Sat Nov 12 18:43:48 2016
[0]: Waiting for connection... 
[66] 19049
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[67] 19050
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[68] 19051
[5]: Connection established. 
Sat Nov 12 18:43:48 2016
[5]: Waiting for connection... 
[69] 19052
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[70] 19053
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[71] 19054
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[72] 19055
[73] 19056
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[74] 19057
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[75] 19058
[1]: Connection established. 
Sat Nov 12 18:43:48 2016
[1]: Waiting for connection... 
[76] 19059
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[77] 19060
[3]: Connection established. 
Sat Nov 12 18:43:48 2016
[3]: Waiting for connection... 
[78] 19061
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[79] 19062
[7]: Connection established. 
Sat Nov 12 18:43:48 2016
[7]: Waiting for connection... 
[80] 19063
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[81] 19064
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[82] 19065
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[83] 19066
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[84] 19067
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[85] 19068
[86] 19069
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[87] 19070
[4]: Connection established. 
[4]: Waiting for connection... 
[88] 19071
Sat Nov 12 18:43:48 2016
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[89] 19072
[90] 19073
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[91] 19074
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[92] 19075
[93] 19076
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[94] 19077
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[95] 19078
[96] 19079
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[97] 19080
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[98] 19081
[99] 19082
[2]: Connection established. 
[2]: Waiting for connection... 
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
Sat Nov 12 18:43:48 2016
[100] 19083
[5]: Connection established. 
Sat Nov 12 18:43:48 2016
[5]: Waiting for connection... 
[101] 19084
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[102] 19085
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[103] 19086
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[104] 19087
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[105] 19088
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[106] 19089
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[107] 19090
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[108] 19091
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[109] 19092
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[110] 19093
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[111] 19094
[7]: Connection established. 
Sat Nov 12 18:43:48 2016
[7]: Waiting for connection... 
[112] 19095
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[113] 19096
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[114] 19097
[115] 19098
[1]: Connection established. 
Sat Nov 12 18:43:48 2016
[1]: Waiting for connection... 
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[116] 19099
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[117] 19100
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[118] 19101
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[119] 19102
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[120] 19103
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[121] 19104
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[122] 19105
[123] 19106
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[124] 19107
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[125] 19108
[5]: Connection established. 
[5]: Waiting for connection... 
[126] 19109
[3]: Connection established. 
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[3]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[127] 19110
Sat Nov 12 18:43:48 2016
[128] 19111
[7]: Connection established. 
[6]: Connection established. 
[7]: Waiting for connection... 
[6]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[129] 19112
[130] 19113
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
Sat Nov 12 18:43:48 2016
[131] 19114
[1]: Connection established. 
[1]: Waiting for connection... 
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
Sat Nov 12 18:43:48 2016
[132] 19115
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[133] 19116
[134] 19117
[4]: Connection established. 
[4]: Waiting for connection... 
[3]: Connection established. 
Sat Nov 12 18:43:48 2016
[3]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[135] 19118
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[136] 19119
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[137] 19120
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[138] 19121
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[139] 19122
[2]: Connection established. 
Sat Nov 12 18:43:48 2016
[2]: Waiting for connection... 
[140] 19123
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[141] 19124
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[142] 19125
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[143] 19126
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[144] 19127
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[145] 19128
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[146] 19129
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[147] 19130
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[148] 19131
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[149] 19132
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[150] 19133
[3]: Connection established. 
Sat Nov 12 18:43:48 2016
[3]: Waiting for connection... 
[151] 19134
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[152] 19135
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[153] 19136
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[154] 19137
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[155] 19138
[2]: Connection established. 
Sat Nov 12 18:43:48 2016
[2]: Waiting for connection... 
[156] 19139
[5]: Connection established. 
[5]: Waiting for connection... 
[157] 19140
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
Sat Nov 12 18:43:48 2016
[158] 19141
[3]: Connection established. 
Sat Nov 12 18:43:48 2016
[3]: Waiting for connection... 
[159] 19142
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[6]: Connection established. 
Sat Nov 12 18:43:48 2016
[6]: Waiting for connection... 
[160] 19143
[0]: Connection established. 
[0]: Waiting for connection... 
[161] 19144
[162] 19145
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[163] 19146
Sat Nov 12 18:43:48 2016
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[164] 19147
[165] 19148
[4]: Connection established. 
[5]: Connection established. 
[4]: Waiting for connection... 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[166] 19149
Sat Nov 12 18:43:48 2016
[167] 19150
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[168] 19151
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[169] 19152
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[170] 19153
[1]: Connection established. 
Sat Nov 12 18:43:48 2016
[1]: Waiting for connection... 
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[171] 19154
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[172] 19155
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[173] 19156
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[174] 19157
[3]: Connection established. 
Sat Nov 12 18:43:48 2016
[3]: Waiting for connection... 
[175] 19158
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[176] 19159
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[177] 19160
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[178] 19161
[0]: Connection established. 
[0]: Waiting for connection... 
[179] 19162
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[180] 19163
[4]: Connection established. 
Sat Nov 12 18:43:48 2016
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[181] 19164
[5]: Connection established. 
[182] 19165
[5]: Waiting for connection... 
[5]: Connection established. 
Sat Nov 12 18:43:48 2016
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[183] 19166
[7]: Connection established. 
Sat Nov 12 18:43:48 2016
[7]: Waiting for connection... 
[184] 19167
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[185] 19168
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[186] 19169
[0]: Connection established. 
Sat Nov 12 18:43:48 2016
[0]: Waiting for connection... 
[187] 19170
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[188] 19171
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[189] 19172
[3]: Connection established. 
Sat Nov 12 18:43:48 2016
[3]: Waiting for connection... 
[190] 19173
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[191] 19174
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[192] 19175
[6]: Connection established. 
Sat Nov 12 18:43:48 2016
[6]: Waiting for connection... 
[193] 19176
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[194] 19177
[0]: Connection established. 
[0]: Waiting for connection... 
[195] 19178
Sat Nov 12 18:43:48 2016
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[196] 19179
[197] 19180
[4]: Connection established. 
[3]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[3]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[198] 19181
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[199] 19182
[200] 19183
[7]: Connection established. 
[7]: Waiting for connection... 
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
Sat Nov 12 18:43:48 2016
[201] 19184
[202] 19185
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[203] 19186
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[204] 19187
[2]: Connection established. 
[2]: Waiting for connection... 
[205] 19188
Sat Nov 12 18:43:48 2016
[3]: Connection established. 
[3]: Waiting for connection... 
[206] 19189
Sat Nov 12 18:43:48 2016
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[207] 19190
[208] 19191
[209] 19192
[210] 19193
[211] 19194
[212] 19195
[7]: Connection established. 
[7]: Waiting for connection... 
[6]: Connection established. 
Sat Nov 12 18:43:48 2016
[6]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[213] 19196
[1]: Connection established. 
[1]: Waiting for connection... 
[1]: Connection established. 
[1]: Waiting for connection... 
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
Sat Nov 12 18:43:48 2016
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
Sat Nov 12 18:43:48 2016
[214] 19197
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[215] 19198
[216] 19199
[5]: Connection established. 
[7]: Connection established. 
Sat Nov 12 18:43:48 2016
[7]: Waiting for connection... 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[217] 19200
[6]: Connection established. 
Sat Nov 12 18:43:48 2016
[6]: Waiting for connection... 
[218] 19201
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[219] 19202
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[220] 19203
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[3]: Connection established. 
[3]: Waiting for connection... 
[221] 19204
[4]: Connection established. 
[222] 19205
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[223] 19206
Sat Nov 12 18:43:48 2016
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[224] 19207
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[225] 19208
[1]: Connection established. 
[1]: Waiting for connection... 
[226] 19209
Sat Nov 12 18:43:48 2016
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[227] 19210
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[228] 19211
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[229] 19212
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[230] 19213
[7]: Connection established. 
Sat Nov 12 18:43:48 2016
[7]: Waiting for connection... 
[231] 19214
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[6]: Connection established. 
[232] 19215
[6]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[233] 19216
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[234] 19217
[2]: Connection established. 
Sat Nov 12 18:43:48 2016
[2]: Waiting for connection... 
[235] 19218
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[236] 19219
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[237] 19220
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[238] 19221
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[239] 19222
[240] 19223
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[241] 19224
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[242] 19225
[2]: Connection established. 
Sat Nov 12 18:43:48 2016
[2]: Waiting for connection... 
[243] 19226
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[244] 19227
[3]: Connection established. 
Sat Nov 12 18:43:48 2016
[3]: Waiting for connection... 
[245] 19228
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[246] 19229
[7]: Connection established. 
Sat Nov 12 18:43:48 2016
[7]: Waiting for connection... 
[247] 19230
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[248] 19231
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[249] 19232
[1]: Connection established. 
[1]: Waiting for connection... 
[250] 19233
Sat Nov 12 18:43:48 2016
[2]: Connection established. 
Sat Nov 12 18:43:48 2016
[2]: Waiting for connection... 
[251] 19234
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[252] 19235
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[253] 19236
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[254] 19237
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[255] 19238
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[256] 19239
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[257] 19240
[258] 19241
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[259] 19242
[2]: Connection established. 
[2]: Waiting for connection... 
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
Sat Nov 12 18:43:48 2016
[260] 19243
[261] 19244
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[262] 19245
[7]: Connection established. 
Sat Nov 12 18:43:48 2016
[7]: Waiting for connection... 
[263] 19246
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[264] 19247
[6]: Connection established. 
[265] 19248
[6]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[266] 19249
[2]: Connection established. 
Sat Nov 12 18:43:48 2016
[2]: Waiting for connection... 
[267] 19250
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[268] 19251
[269] 19252
[3]: Connection established. 
[3]: Waiting for connection... 
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
Sat Nov 12 18:43:48 2016
[270] 19253
[7]: Connection established. 
Sat Nov 12 18:43:48 2016
[7]: Waiting for connection... 
[271] 19254
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[272] 19255
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[273] 19256
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[274] 19257
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[275] 19258
[0]: Connection established. 
Sat Nov 12 18:43:48 2016
[0]: Waiting for connection... 
[276] 19259
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[277] 19260
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[278] 19261
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[279] 19262
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[280] 19263
[6]: Connection established. 
Sat Nov 12 18:43:48 2016
[6]: Waiting for connection... 
[281] 19264
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[282] 19265
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[283] 19266
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[284] 19267
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[285] 19268
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[286] 19269
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[287] 19270
[5]: Connection established. 
Sat Nov 12 18:43:48 2016
[5]: Waiting for connection... 
[288] 19271
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[289] 19272
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[290] 19273
[291] 19274
[2]: Connection established. 
[2]: Waiting for connection... 
[292] 19275
[0]: Connection established. 
Sat Nov 12 18:43:48 2016
[0]: Waiting for connection... 
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
Sat Nov 12 18:43:48 2016
[293] 19276
[4]: Connection established. 
[294] 19277
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[295] 19278
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[296] 19279
[6]: Connection established. 
Sat Nov 12 18:43:48 2016
[6]: Waiting for connection... 
[297] 19280
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[2]: Connection established. 
[298] 19281
Sat Nov 12 18:43:48 2016
[2]: Waiting for connection... 
[299] 19282
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[300] 19283
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[301] 19284
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[302] 19285
[303] 19286
[7]: Connection established. 
[7]: Waiting for connection... 
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
Sat Nov 12 18:43:48 2016
[304] 19287
[305] 19288
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[306] 19289
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[307] 19290
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[308] 19291
[3]: Connection established. 
Sat Nov 12 18:43:48 2016
[3]: Waiting for connection... 
[309] 19292
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[310] 19293
[7]: Connection established. 
Sat Nov 12 18:43:48 2016
[7]: Waiting for connection... 
[311] 19294
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[312] 19295
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[313] 19296
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[314] 19297
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[315] 19298
[0]: Connection established. 
Sat Nov 12 18:43:48 2016
[0]: Waiting for connection... 
[316] 19299
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[317] 19300
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[318] 19301
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[319] 19302
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[320] 19303
[6]: Connection established. 
Sat Nov 12 18:43:48 2016
[6]: Waiting for connection... 
[321] 19304
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[322] 19305
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[323] 19306
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[324] 19307
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[325] 19308
[4]: Connection established. 
Sat Nov 12 18:43:48 2016
[4]: Waiting for connection... 
[326] 19309
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[327] 19310
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[328] 19311
[6]: Connection established. 
[329] 19312
[6]: Waiting for connection... 
[330] 19313
[1]: Connection established. 
Sat Nov 12 18:43:48 2016
[1]: Waiting for connection... 
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[331] 19314
[332] 19315
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
Sat Nov 12 18:43:48 2016
[333] 19316
[4]: Connection established. 
Sat Nov 12 18:43:48 2016
[4]: Waiting for connection... 
[334] 19317
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[335] 19318
[5]: Connection established. 
Sat Nov 12 18:43:48 2016
[5]: Waiting for connection... 
[336] 19319
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[337] 19320
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[338] 19321
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[339] 19322
[340] 19323
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[341] 19324
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[342] 19325
[7]: Connection established. 
Sat Nov 12 18:43:48 2016
[7]: Waiting for connection... 
[343] 19326
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[344] 19327
[345] 19328
[6]: Connection established. 
[6]: Waiting for connection... 
[346] 19329
[1]: Connection established. 
Sat Nov 12 18:43:48 2016
[1]: Waiting for connection... 
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[347] 19330
Sat Nov 12 18:43:48 2016
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[348] 19331
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[349] 19332
[350] 19333
[351] 19334
[4]: Connection established. 
[4]: Waiting for connection... 
[352] 19335
[353] 19336
Sat Nov 12 18:43:48 2016
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[354] 19337
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[355] 19338
[1]: Connection established. 
[1]: Waiting for connection... 
[356] 19339
Sat Nov 12 18:43:48 2016
[2]: Connection established. 
[2]: Waiting for connection... 
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
Sat Nov 12 18:43:48 2016
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[357] 19340
[358] 19341
[7]: Connection established. 
[7]: Waiting for connection... 
[359] 19342
[4]: Connection established. 
Sat Nov 12 18:43:48 2016
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[360] 19343
[361] 19344
[1]: Connection established. 
Sat Nov 12 18:43:48 2016
[6]: Connection established. 
[6]: Waiting for connection... 
[1]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[362] 19345
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[363] 19346
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[364] 19347
[365] 19348
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[366] 19349
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[367] 19350
[5]: Connection established. 
[368] 19351
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[369] 19352
[1]: Connection established. 
Sat Nov 12 18:43:48 2016
[1]: Waiting for connection... 
[370] 19353
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[371] 19354
[0]: Connection established. 
Sat Nov 12 18:43:48 2016
[0]: Waiting for connection... 
[372] 19355
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[373] 19356
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[374] 19357
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[375] 19358
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[376] 19359
[6]: Connection established. 
Sat Nov 12 18:43:48 2016
[6]: Waiting for connection... 
[377] 19360
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[378] 19361
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[379] 19362
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[380] 19363
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[381] 19364
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[382] 19365
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[383] 19366
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[384] 19367
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[385] 19368
[1]: Connection established. 
Sat Nov 12 18:43:48 2016
[1]: Waiting for connection... 
[386] 19369
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[387] 19370
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[388] 19371
[3]: Connection established. 
Sat Nov 12 18:43:48 2016
[3]: Waiting for connection... 
[389] 19372
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[390] 19373
[4]: Connection established. 
Sat Nov 12 18:43:48 2016
[4]: Waiting for connection... 
[391] 19374
[5]: Connection established. 
[5]: Waiting for connection... 
[392] 19375
Sat Nov 12 18:43:48 2016
[393] 19376
[394] 19377
[6]: Connection established. 
[395] 19378
[6]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[1]: Connection established. 
[1]: Waiting for connection... 
[2]: Connection established. 
[2]: Waiting for connection... 
[396] 19379
[397] 19380
[0]: Connection established. 
[0]: Waiting for connection... 
[398] 19381
[3]: Connection established. 
[3]: Waiting for connection... 
[399] 19382
[400] 19383
[401] 19384
Sat Nov 12 18:43:48 2016
[402] 19385
Sat Nov 12 18:43:48 2016
Sat Nov 12 18:43:48 2016
[6]: Connection established. 
[6]: Waiting for connection... 
[6]: Connection established. 
[6]: Waiting for connection... 
[6]: Connection established. 
Sat Nov 12 18:43:48 2016
[6]: Waiting for connection... 
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
Sat Nov 12 18:43:48 2016
Sat Nov 12 18:43:48 2016
Sat Nov 12 18:43:48 2016
[403] 19386
[1]: Connection established. 
Sat Nov 12 18:43:48 2016
[1]: Waiting for connection... 
[404] 19387
[2]: Connection established. 
[2]: Waiting for connection... 
[405] 19388
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[406] 19389
[3]: Connection established. 
Sat Nov 12 18:43:48 2016
[3]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[407] 19390
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[408] 19391
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[409] 19392
[4]: Connection established. 
[4]: Waiting for connection... 
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
Sat Nov 12 18:43:48 2016
[410] 19393
[1]: Connection established. 
Sat Nov 12 18:43:48 2016
[1]: Waiting for connection... 
[411] 19394
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[0]: Connection established. 
[0]: Waiting for connection... 
[412] 19395
[413] 19396
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[414] 19397
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[415] 19398
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[416] 19399
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[417] 19400
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[418] 19401
Sat Nov 12 18:43:48 2016
[419] 19402
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[420] 19403
[0]: Connection established. 
Sat Nov 12 18:43:48 2016
[0]: Waiting for connection... 
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[421] 19404
[422] 19405
[7]: Connection established. 
[6]: Connection established. 
[7]: Waiting for connection... 
[6]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
Sat Nov 12 18:43:48 2016
[423] 19406
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[424] 19407
[5]: Connection established. 
[425] 19408
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[426] 19409
[2]: Connection established. 
Sat Nov 12 18:43:48 2016
[2]: Waiting for connection... 
[427] 19410
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[428] 19411
[429] 19412
[3]: Connection established. 
Sat Nov 12 18:43:48 2016
[3]: Waiting for connection... 
[430] 19413
[7]: Connection established. 
[7]: Waiting for connection... 
[431] 19414
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
Sat Nov 12 18:43:48 2016
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[432] 19415
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[433] 19416
[1]: Connection established. 
[1]: Waiting for connection... 
[434] 19417
Sat Nov 12 18:43:48 2016
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[435] 19418
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[436] 19419
[437] 19420
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[7]: Connection established. 
[7]: Waiting for connection... 
[438] 19421
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[439] 19422
[4]: Connection established. 
Sat Nov 12 18:43:48 2016
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[440] 19423
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[441] 19424
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[442] 19425
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[443] 19426
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[444] 19427
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[445] 19428
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[446] 19429
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[447] 19430
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[448] 19431
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[449] 19432
[450] 19433
[1]: Connection established. 
[2]: Connection established. 
[1]: Waiting for connection... 
[2]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
Sat Nov 12 18:43:48 2016
[451] 19434
[452] 19435
[0]: Connection established. 
[3]: Connection established. 
[0]: Waiting for connection... 
[3]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
Sat Nov 12 18:43:48 2016
[453] 19436
[7]: Connection established. 
[7]: Waiting for connection... 
[454] 19437
Sat Nov 12 18:43:48 2016
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[455] 19438
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[456] 19439
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[457] 19440
[1]: Connection established. 
[458] 19441
[1]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[2]: Connection established. 
[2]: Waiting for connection... 
[459] 19442
[0]: Connection established. 
[460] 19443
[0]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
Sat Nov 12 18:43:48 2016
[461] 19444
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[462] 19445
[6]: Connection established. 
[463] 19446
[6]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[464] 19447
[5]: Connection established. 
Sat Nov 12 18:43:48 2016
[5]: Waiting for connection... 
[465] 19448
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[466] 19449
[2]: Connection established. 
Sat Nov 12 18:43:48 2016
[2]: Waiting for connection... 
[467] 19450
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[468] 19451
[469] 19452
[3]: Connection established. 
[7]: Connection established. 
[7]: Waiting for connection... 
[3]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
Sat Nov 12 18:43:48 2016
[470] 19453
[6]: Connection established. 
[6]: Waiting for connection... 
[471] 19454
Sat Nov 12 18:43:48 2016
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[472] 19455
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[473] 19456
[1]: Connection established. 
Sat Nov 12 18:43:48 2016
[1]: Waiting for connection... 
[474] 19457
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[475] 19458
[0]: Connection established. 
Sat Nov 12 18:43:48 2016
[0]: Waiting for connection... 
[476] 19459
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[477] 19460
[3]: Connection established. 
Sat Nov 12 18:43:48 2016
[3]: Waiting for connection... 
[478] 19461
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[479] 19462
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[480] 19463
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[481] 19464
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[482] 19465
[2]: Connection established. 
[2]: Waiting for connection... 
[483] 19466
[484] 19467
Sat Nov 12 18:43:48 2016
[0]: Connection established. 
[7]: Connection established. 
[0]: Waiting for connection... 
[7]: Waiting for connection... 
[485] 19468
Sat Nov 12 18:43:48 2016
Sat Nov 12 18:43:48 2016
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[486] 19469
[6]: Connection established. 
Sat Nov 12 18:43:48 2016
[6]: Waiting for connection... 
[487] 19470
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[488] 19471
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[489] 19472
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[490] 19473
[2]: Connection established. 
Sat Nov 12 18:43:48 2016
[2]: Waiting for connection... 
[491] 19474
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[492] 19475
[7]: Connection established. 
Sat Nov 12 18:43:48 2016
[7]: Waiting for connection... 
[493] 19476
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[494] 19477
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[495] 19478
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[496] 19479
[497] 19480
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[498] 19481
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[499] 19482
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[500] 19483
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[501] 19484
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[502] 19485
[6]: Connection established. 
Sat Nov 12 18:43:48 2016
[6]: Waiting for connection... 
[503] 19486
[4]: Connection established. 
[504] 19487
[4]: Waiting for connection... 
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
Sat Nov 12 18:43:48 2016
[505] 19488
[1]: Connection established. 
[1]: Waiting for connection... 
[506] 19489
Sat Nov 12 18:43:48 2016
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[507] 19490
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[508] 19491
[7]: Connection established. 
Sat Nov 12 18:43:48 2016
[7]: Waiting for connection... 
[509] 19492
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[510] 19493
[6]: Connection established. 
Sat Nov 12 18:43:48 2016
[6]: Waiting for connection... 
[511] 19494
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[512] 19495
[4]: Connection established. 
Sat Nov 12 18:43:48 2016
[4]: Waiting for connection... 
[513] 19496
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[514] 19497
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[515] 19498
[516] 19499
[517] 19500
[0]: Connection established. 
[0]: Waiting for connection... 
[7]: Connection established. 
[7]: Waiting for connection... 
[3]: Connection established. 
Sat Nov 12 18:43:48 2016
[3]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
Sat Nov 12 18:43:48 2016
[518] 19501
[6]: Connection established. 
Sat Nov 12 18:43:48 2016
[6]: Waiting for connection... 
[519] 19502
[5]: Connection established. 
Sat Nov 12 18:43:48 2016
[5]: Waiting for connection... 
[520] 19503
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[521] 19504
[1]: Connection established. 
Sat Nov 12 18:43:48 2016
[1]: Waiting for connection... 
[522] 19505
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[523] 19506
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[524] 19507
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[525] 19508
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[526] 19509
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[527] 19510
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[528] 19511
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[529] 19512
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[530] 19513
[2]: Connection established. 
Sat Nov 12 18:43:48 2016
[2]: Waiting for connection... 
[531] 19514
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[532] 19515
[7]: Connection established. 
Sat Nov 12 18:43:48 2016
[7]: Waiting for connection... 
[533] 19516
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[534] 19517
[6]: Connection established. 
Sat Nov 12 18:43:48 2016
[6]: Waiting for connection... 
[535] 19518
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[536] 19519
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[537] 19520
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[538] 19521
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[539] 19522
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[540] 19523
[7]: Connection established. 
Sat Nov 12 18:43:48 2016
[7]: Waiting for connection... 
[541] 19524
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[542] 19525
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[543] 19526
[544] 19527
[5]: Connection established. 
[5]: Waiting for connection... 
[545] 19528
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
Sat Nov 12 18:43:48 2016
[546] 19529
[2]: Connection established. 
[2]: Waiting for connection... 
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
Sat Nov 12 18:43:48 2016
[547] 19530
[548] 19531
[0]: Connection established. 
[0]: Waiting for connection... 
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[549] 19532
[3]: Connection established. 
Sat Nov 12 18:43:48 2016
[3]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[550] 19533
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[551] 19534
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[552] 19535
[4]: Connection established. 
Sat Nov 12 18:43:48 2016
[4]: Waiting for connection... 
[553] 19536
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[554] 19537
[1]: Connection established. 
Sat Nov 12 18:43:48 2016
[1]: Waiting for connection... 
[555] 19538
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[556] 19539
[7]: Connection established. 
Sat Nov 12 18:43:48 2016
[7]: Waiting for connection... 
[557] 19540
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[558] 19541
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[559] 19542
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[560] 19543
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[561] 19544
[2]: Connection established. 
[2]: Waiting for connection... 
[562] 19545
Sat Nov 12 18:43:48 2016
[1]: Connection established. 
[563] 19546
[1]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[564] 19547
[7]: Connection established. 
[565] 19548
[7]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[566] 19549
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[567] 19550
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[568] 19551
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[569] 19552
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[570] 19553
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[571] 19554
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[572] 19555
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[573] 19556
[3]: Connection established. 
Sat Nov 12 18:43:48 2016
[3]: Waiting for connection... 
[574] 19557
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[575] 19558
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[576] 19559
[4]: Connection established. 
Sat Nov 12 18:43:48 2016
[4]: Waiting for connection... 
[577] 19560
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[578] 19561
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[579] 19562
[0]: Connection established. 
[580] 19563
[0]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[581] 19564
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[582] 19565
[6]: Connection established. 
Sat Nov 12 18:43:48 2016
[6]: Waiting for connection... 
[583] 19566
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[584] 19567
[4]: Connection established. 
Sat Nov 12 18:43:48 2016
[4]: Waiting for connection... 
[585] 19568
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[586] 19569
[1]: Connection established. 
Sat Nov 12 18:43:48 2016
[1]: Waiting for connection... 
[587] 19570
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[588] 19571
[7]: Connection established. 
[589] 19572
[7]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[3]: Connection established. 
[3]: Waiting for connection... 
[590] 19573
[591] 19574
[592] 19575
[593] 19576
[4]: Connection established. 
Sat Nov 12 18:43:48 2016
[4]: Waiting for connection... 
[4]: Connection established. 
[4]: Waiting for connection... 
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
Sat Nov 12 18:43:48 2016
Sat Nov 12 18:43:48 2016
[594] 19577
[595] 19578
[2]: Connection established. 
[2]: Waiting for connection... 
[596] 19579
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
Sat Nov 12 18:43:48 2016
[0]: Connection established. 
[0]: Waiting for connection... 
[597] 19580
[598] 19581
[7]: Connection established. 
[7]: Waiting for connection... 
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[599] 19582
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[6]: Connection established. 
Sat Nov 12 18:43:48 2016
[6]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
Sat Nov 12 18:43:48 2016
[600] 19583
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[601] 19584
[2]: Connection established. 
Sat Nov 12 18:43:48 2016
[2]: Waiting for connection... 
[602] 19585
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[603] 19586
[604] 19587
[7]: Connection established. 
Sat Nov 12 18:43:48 2016
[7]: Waiting for connection... 
[605] 19588
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[606] 19589
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[607] 19590
[6]: Connection established. 
Sat Nov 12 18:43:48 2016
[6]: Waiting for connection... 
[608] 19591
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[609] 19592
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[610] 19593
[1]: Connection established. 
Sat Nov 12 18:43:48 2016
[1]: Waiting for connection... 
[611] 19594
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[612] 19595
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[613] 19596
[3]: Connection established. 
Sat Nov 12 18:43:48 2016
[3]: Waiting for connection... 
[614] 19597
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[615] 19598
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[616] 19599
[5]: Connection established. 
Sat Nov 12 18:43:48 2016
[5]: Waiting for connection... 
[617] 19600
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[1]: Connection established. 
[618] 19601
[1]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[619] 19602
[0]: Connection established. 
Sat Nov 12 18:43:48 2016
[0]: Waiting for connection... 
[620] 19603
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[621] 19604
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[622] 19605
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[623] 19606
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[624] 19607
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[625] 19608
[2]: Connection established. 
Sat Nov 12 18:43:48 2016
[2]: Waiting for connection... 
[626] 19609
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[627] 19610
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:48 2016
[628] 19611
[7]: Connection established. 
Sat Nov 12 18:43:48 2016
[7]: Waiting for connection... 
[629] 19612
[3]: Connection established. 
[3]: Waiting for connection... 
[630] 19613
Sat Nov 12 18:43:49 2016
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[631] 19614
[6]: Connection established. 
Sat Nov 12 18:43:49 2016
[6]: Waiting for connection... 
[632] 19615
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[633] 19616
[2]: Connection established. 
[2]: Waiting for connection... 
[634] 19617
Sat Nov 12 18:43:49 2016
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[635] 19618
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[7]: Connection established. 
[636] 19619
[7]: Waiting for connection... 
[637] 19620
Sat Nov 12 18:43:49 2016
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[638] 19621
[639] 19622
[4]: Connection established. 
[4]: Waiting for connection... 
[6]: Connection established. 
Sat Nov 12 18:43:49 2016
[6]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[640] 19623
[641] 19624
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[642] 19625
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[643] 19626
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[644] 19627
[7]: Connection established. 
[7]: Waiting for connection... 
[645] 19628
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[646] 19629
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
Sat Nov 12 18:43:49 2016
[647] 19630
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[648] 19631
[5]: Connection established. 
[649] 19632
[5]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[650] 19633
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[651] 19634
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[652] 19635
[7]: Connection established. 
[7]: Waiting for connection... 
[653] 19636
Sat Nov 12 18:43:49 2016
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[654] 19637
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[655] 19638
[656] 19639
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[657] 19640
[2]: Connection established. 
[2]: Waiting for connection... 
[658] 19641
[1]: Connection established. 
Sat Nov 12 18:43:49 2016
[1]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[659] 19642
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[660] 19643
[7]: Connection established. 
[661] 19644
[7]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[662] 19645
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[663] 19646
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[664] 19647
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[665] 19648
[2]: Connection established. 
Sat Nov 12 18:43:49 2016
[2]: Waiting for connection... 
[666] 19649
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[667] 19650
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[668] 19651
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[669] 19652
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[670] 19653
[4]: Connection established. 
Sat Nov 12 18:43:49 2016
[4]: Waiting for connection... 
[671] 19654
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[672] 19655
[673] 19656
[5]: Connection established. 
[5]: Waiting for connection... 
[2]: Connection established. 
Sat Nov 12 18:43:49 2016
[2]: Waiting for connection... 
[674] 19657
[1]: Connection established. 
Sat Nov 12 18:43:49 2016
[1]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[675] 19658
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[676] 19659
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[677] 19660
[3]: Connection established. 
Sat Nov 12 18:43:49 2016
[3]: Waiting for connection... 
[678] 19661
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[679] 19662
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[680] 19663
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[681] 19664
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[682] 19665
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[683] 19666
[0]: Connection established. 
Sat Nov 12 18:43:49 2016
[0]: Waiting for connection... 
[684] 19667
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[685] 19668
[686] 19669
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[687] 19670
[688] 19671
[5]: Connection established. 
[6]: Connection established. 
[5]: Waiting for connection... 
[6]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
Sat Nov 12 18:43:49 2016
[689] 19672
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[690] 19673
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[691] 19674
[0]: Connection established. 
Sat Nov 12 18:43:49 2016
[0]: Waiting for connection... 
[692] 19675
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[693] 19676
[3]: Connection established. 
Sat Nov 12 18:43:49 2016
[3]: Waiting for connection... 
[694] 19677
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[695] 19678
[5]: Connection established. 
Sat Nov 12 18:43:49 2016
[5]: Waiting for connection... 
[696] 19679
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[697] 19680
[2]: Connection established. 
Sat Nov 12 18:43:49 2016
[2]: Waiting for connection... 
[698] 19681
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[699] 19682
[0]: Connection established. 
Sat Nov 12 18:43:49 2016
[0]: Waiting for connection... 
[700] 19683
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[701] 19684
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[702] 19685
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[703] 19686
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[704] 19687
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[705] 19688
[2]: Connection established. 
Sat Nov 12 18:43:49 2016
[2]: Waiting for connection... 
[706] 19689
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[707] 19690
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[708] 19691
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[709] 19692
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[710] 19693
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[711] 19694
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[712] 19695
[6]: Connection established. 
Sat Nov 12 18:43:49 2016
[6]: Waiting for connection... 
[713] 19696
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[714] 19697
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[715] 19698
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[716] 19699
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[717] 19700
[3]: Connection established. 
Sat Nov 12 18:43:49 2016
[3]: Waiting for connection... 
[718] 19701
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[719] 19702
[5]: Connection established. 
Sat Nov 12 18:43:49 2016
[5]: Waiting for connection... 
[720] 19703
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[721] 19704
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[722] 19705
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[723] 19706
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[724] 19707
[7]: Connection established. 
Sat Nov 12 18:43:49 2016
[7]: Waiting for connection... 
[725] 19708
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[726] 19709
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[727] 19710
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[728] 19711
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[729] 19712
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[730] 19713
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[731] 19714
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[732] 19715
[733] 19716
[7]: Connection established. 
[7]: Waiting for connection... 
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
Sat Nov 12 18:43:49 2016
[734] 19717
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[735] 19718
[5]: Connection established. 
[736] 19719
[5]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[737] 19720
[2]: Connection established. 
Sat Nov 12 18:43:49 2016
[2]: Waiting for connection... 
[738] 19721
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[739] 19722
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[740] 19723
[7]: Connection established. 
Sat Nov 12 18:43:49 2016
[7]: Waiting for connection... 
[741] 19724
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[742] 19725
[4]: Connection established. 
Sat Nov 12 18:43:49 2016
[4]: Waiting for connection... 
[743] 19726
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[744] 19727
[6]: Connection established. 
Sat Nov 12 18:43:49 2016
[6]: Waiting for connection... 
[745] 19728
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[746] 19729
[1]: Connection established. 
Sat Nov 12 18:43:49 2016
[1]: Waiting for connection... 
[747] 19730
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[748] 19731
[7]: Connection established. 
Sat Nov 12 18:43:49 2016
[7]: Waiting for connection... 
[749] 19732
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[750] 19733
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[751] 19734
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[752] 19735
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[753] 19736
[2]: Connection established. 
Sat Nov 12 18:43:49 2016
[2]: Waiting for connection... 
[754] 19737
[1]: Connection established. 
[1]: Waiting for connection... 
[755] 19738
Sat Nov 12 18:43:49 2016
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[756] 19739
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[3]: Connection established. 
Sat Nov 12 18:43:49 2016
[3]: Waiting for connection... 
[757] 19740
[758] 19741
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[759] 19742
[760] 19743
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[761] 19744
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[762] 19745
[1]: Connection established. 
Sat Nov 12 18:43:49 2016
[1]: Waiting for connection... 
[763] 19746
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[764] 19747
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[765] 19748
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[766] 19749
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[767] 19750
[5]: Connection established. 
Sat Nov 12 18:43:49 2016
[5]: Waiting for connection... 
[768] 19751
[6]: Connection established. 
[6]: Waiting for connection... 
[769] 19752
[2]: Connection established. 
Sat Nov 12 18:43:49 2016
[2]: Waiting for connection... 
[770] 19753
Sat Nov 12 18:43:49 2016
[1]: Connection established. 
[1]: Waiting for connection... 
[0]: Connection established. 
[771] 19754
[0]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
Sat Nov 12 18:43:49 2016
[772] 19755
[7]: Connection established. 
[7]: Waiting for connection... 
[3]: Connection established. 
Sat Nov 12 18:43:49 2016
[773] 19756
Sat Nov 12 18:43:49 2016
[3]: Waiting for connection... 
[774] 19757
[775] 19758
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[776] 19759
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[777] 19760
[6]: Connection established. 
[2]: Connection established. 
[6]: Waiting for connection... 
[2]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
Sat Nov 12 18:43:49 2016
[778] 19761
[779] 19762
[1]: Connection established. 
[0]: Connection established. 
[1]: Waiting for connection... 
[0]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
Sat Nov 12 18:43:49 2016
[780] 19763
[7]: Connection established. 
Sat Nov 12 18:43:49 2016
[7]: Waiting for connection... 
[781] 19764
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[782] 19765
[4]: Connection established. 
Sat Nov 12 18:43:49 2016
[4]: Waiting for connection... 
[783] 19766
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[784] 19767
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[785] 19768
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[786] 19769
[1]: Connection established. 
Sat Nov 12 18:43:49 2016
[1]: Waiting for connection... 
[787] 19770
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[788] 19771
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[789] 19772
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[790] 19773
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[791] 19774
[5]: Connection established. 
Sat Nov 12 18:43:49 2016
[5]: Waiting for connection... 
[792] 19775
[793] 19776
[2]: Connection established. 
[2]: Waiting for connection... 
[794] 19777
Sat Nov 12 18:43:49 2016
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[795] 19778
[796] 19779
[1]: Connection established. 
[0]: Connection established. 
[1]: Waiting for connection... 
[797] 19780
[0]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[7]: Connection established. 
Sat Nov 12 18:43:49 2016
[7]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[798] 19781
[799] 19782
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[800] 19783
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[801] 19784
[5]: Connection established. 
Sat Nov 12 18:43:49 2016
[5]: Waiting for connection... 
[802] 19785
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[1]: Connection established. 
[1]: Waiting for connection... 
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
Sat Nov 12 18:43:49 2016
[803] 19786
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[804] 19787
[805] 19788
[3]: Connection established. 
[3]: Waiting for connection... 
[806] 19789
Sat Nov 12 18:43:49 2016
[807] 19790
[4]: Connection established. 
[4]: Waiting for connection... 
[808] 19791
[5]: Connection established. 
[5]: Waiting for connection... 
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[809] 19792
Sat Nov 12 18:43:49 2016
[6]: Connection established. 
Sat Nov 12 18:43:49 2016
[6]: Waiting for connection... 
[810] 19793
Sat Nov 12 18:43:49 2016
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[811] 19794
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[812] 19795
[7]: Connection established. 
[813] 19796
[7]: Waiting for connection... 
[814] 19797
Sat Nov 12 18:43:49 2016
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[4]: Connection established. 
Sat Nov 12 18:43:49 2016
[4]: Waiting for connection... 
[815] 19798
[5]: Connection established. 
Sat Nov 12 18:43:49 2016
[5]: Waiting for connection... 
[816] 19799
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[817] 19800
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[818] 19801
[1]: Connection established. 
Sat Nov 12 18:43:49 2016
[1]: Waiting for connection... 
[819] 19802
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[820] 19803
[821] 19804
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[4]: Connection established. 
Sat Nov 12 18:43:49 2016
[4]: Waiting for connection... 
[822] 19805
[823] 19806
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[824] 19807
[825] 19808
[2]: Connection established. 
[2]: Waiting for connection... 
[826] 19809
[1]: Connection established. 
[6]: Connection established. 
[6]: Waiting for connection... 
[1]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
Sat Nov 12 18:43:49 2016
[827] 19810
Sat Nov 12 18:43:49 2016
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[828] 19811
[7]: Connection established. 
[7]: Waiting for connection... 
[829] 19812
Sat Nov 12 18:43:49 2016
[830] 19813
[3]: Connection established. 
[4]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[4]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[831] 19814
[5]: Connection established. 
Sat Nov 12 18:43:49 2016
[5]: Waiting for connection... 
[832] 19815
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[833] 19816
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[834] 19817
[1]: Connection established. 
Sat Nov 12 18:43:49 2016
[1]: Waiting for connection... 
[835] 19818
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[836] 19819
[7]: Connection established. 
[7]: Waiting for connection... 
[837] 19820
[3]: Connection established. 
Sat Nov 12 18:43:49 2016
[3]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[838] 19821
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[839] 19822
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[840] 19823
[2]: Connection established. 
Sat Nov 12 18:43:49 2016
[2]: Waiting for connection... 
[841] 19824
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[842] 19825
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[843] 19826
[0]: Connection established. 
Sat Nov 12 18:43:49 2016
[0]: Waiting for connection... 
[844] 19827
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[3]: Connection established. 
[3]: Waiting for connection... 
[845] 19828
Sat Nov 12 18:43:49 2016
[846] 19829
[4]: Connection established. 
Sat Nov 12 18:43:49 2016
[4]: Waiting for connection... 
[847] 19830
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[848] 19831
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[849] 19832
[6]: Connection established. 
Sat Nov 12 18:43:49 2016
[6]: Waiting for connection... 
[850] 19833
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[851] 19834
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[852] 19835
[7]: Connection established. 
Sat Nov 12 18:43:49 2016
[7]: Waiting for connection... 
[853] 19836
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[854] 19837
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[855] 19838
[5]: Connection established. 
Sat Nov 12 18:43:49 2016
[5]: Waiting for connection... 
[856] 19839
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[857] 19840
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[858] 19841
[1]: Connection established. 
Sat Nov 12 18:43:49 2016
[1]: Waiting for connection... 
[859] 19842
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[860] 19843
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[861] 19844
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[862] 19845
[4]: Connection established. 
Sat Nov 12 18:43:49 2016
[4]: Waiting for connection... 
[863] 19846
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[2]: Connection established. 
[864] 19847
Sat Nov 12 18:43:49 2016
[2]: Waiting for connection... 
[865] 19848
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[866] 19849
[1]: Connection established. 
Sat Nov 12 18:43:49 2016
[1]: Waiting for connection... 
[867] 19850
[868] 19851
[869] 19852
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[870] 19853
[871] 19854
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[872] 19855
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[4]: Connection established. 
[4]: Waiting for connection... 
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
Sat Nov 12 18:43:49 2016
[2]: Connection established. 
[873] 19856
[2]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[874] 19857
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[875] 19858
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[876] 19859
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[877] 19860
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[878] 19861
[879] 19862
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[880] 19863
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[881] 19864
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[882] 19865
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[883] 19866
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[884] 19867
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[7]: Connection established. 
[885] 19868
[7]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[886] 19869
[887] 19870
[4]: Connection established. 
[4]: Waiting for connection... 
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
Sat Nov 12 18:43:49 2016
[888] 19871
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[889] 19872
[890] 19873
[1]: Connection established. 
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[1]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[891] 19874
[0]: Connection established. 
[892] 19875
[0]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[7]: Connection established. 
[893] 19876
[7]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[894] 19877
[4]: Connection established. 
Sat Nov 12 18:43:49 2016
[4]: Waiting for connection... 
[895] 19878
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[896] 19879
[2]: Connection established. 
Sat Nov 12 18:43:49 2016
[2]: Waiting for connection... 
[897] 19880
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[898] 19881
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[899] 19882
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[900] 19883
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[901] 19884
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[902] 19885
[4]: Connection established. 
Sat Nov 12 18:43:49 2016
[4]: Waiting for connection... 
[903] 19887
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[904] 19888
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[905] 19889
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[906] 19890
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[907] 19891
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[908] 19892
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[909] 19893
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[910] 19894
[4]: Connection established. 
Sat Nov 12 18:43:49 2016
[4]: Waiting for connection... 
[911] 19895
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[912] 19896
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[913] 19897
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[914] 19898
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[915] 19899
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[916] 19900
[7]: Connection established. 
[7]: Waiting for connection... 
[917] 19901
Sat Nov 12 18:43:49 2016
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[918] 19902
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[919] 19903
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[920] 19904
[2]: Connection established. 
[921] 19905
[2]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[922] 19906
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[923] 19907
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[924] 19908
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[925] 19909
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[926] 19910
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[927] 19911
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[928] 19912
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[929] 19913
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[930] 19914
[931] 19915
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[932] 19916
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[933] 19917
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[934] 19918
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[935] 19919
[5]: Connection established. 
Sat Nov 12 18:43:49 2016
[5]: Waiting for connection... 
[936] 19920
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[937] 19921
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[938] 19923
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[939] 19924
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[940] 19925
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[941] 19926
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[942] 19927
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[943] 19928
[5]: Connection established. 
Sat Nov 12 18:43:49 2016
[5]: Waiting for connection... 
[944] 19929
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[945] 19930
[6]: Connection established. 
Sat Nov 12 18:43:49 2016
[6]: Waiting for connection... 
[946] 19931
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[947] 19932
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[948] 19933
[7]: Connection established. 
Sat Nov 12 18:43:49 2016
[7]: Waiting for connection... 
[949] 19934
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[950] 19935
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[951] 19936
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[952] 19937
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[953] 19938
[6]: Connection established. 
Sat Nov 12 18:43:49 2016
[6]: Waiting for connection... 
[954] 19939
[1]: Connection established. 
Sat Nov 12 18:43:49 2016
[1]: Waiting for connection... 
[955] 19940
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[956] 19941
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[957] 19942
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[958] 19943
[4]: Connection established. 
Sat Nov 12 18:43:49 2016
[4]: Waiting for connection... 
[959] 19944
[960] 19945
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[961] 19946
[2]: Connection established. 
[2]: Waiting for connection... 
[962] 19947
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[963] 19948
[964] 19949
[1]: Connection established. 
[1]: Waiting for connection... 
[965] 19950
[7]: Connection established. 
[7]: Waiting for connection... 
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[966] 19951
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
Sat Nov 12 18:43:49 2016
[967] 19952
[4]: Connection established. 
Sat Nov 12 18:43:49 2016
[4]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
Sat Nov 12 18:43:49 2016
[5]: Connection established. 
[5]: Waiting for connection... 
[968] 19953
[2]: Connection established. 
[969] 19954
Sat Nov 12 18:43:49 2016
[2]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[970] 19955
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[971] 19956
[7]: Connection established. 
[7]: Waiting for connection... 
[972] 19957
Sat Nov 12 18:43:49 2016
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[973] 19958
[3]: Connection established. 
Sat Nov 12 18:43:49 2016
[3]: Waiting for connection... 
[974] 19959
[975] 19960
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[976] 19961
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[977] 19962
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[978] 19963
[6]: Connection established. 
[979] 19964
[6]: Waiting for connection... 
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
Sat Nov 12 18:43:49 2016
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[980] 19965
[0]: Connection established. 
[981] 19966
[0]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[982] 19967
[4]: Connection established. 
Sat Nov 12 18:43:49 2016
[4]: Waiting for connection... 
[983] 19968
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[984] 19969
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[985] 19970
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[986] 19971
[1]: Connection established. 
[1]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[987] 19972
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[988] 19973
[0]: Connection established. 
Sat Nov 12 18:43:49 2016
[0]: Waiting for connection... 
[989] 19974
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[990] 19975
[4]: Connection established. 
Sat Nov 12 18:43:49 2016
[4]: Waiting for connection... 
[991] 19976
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[992] 19977
[2]: Connection established. 
Sat Nov 12 18:43:49 2016
[2]: Waiting for connection... 
[993] 19978
[6]: Connection established. 
[6]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[994] 19979
[1]: Connection established. 
Sat Nov 12 18:43:49 2016
[1]: Waiting for connection... 
[995] 19980
[7]: Connection established. 
[7]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[996] 19981
[0]: Connection established. 
Sat Nov 12 18:43:49 2016
[0]: Waiting for connection... 
[997] 19982
[3]: Connection established. 
[3]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[998] 19983
[4]: Connection established. 
[4]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[999] 19984
[5]: Connection established. 
[5]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[1000] 19985
[2]: Connection established. 
[2]: Waiting for connection... 
Sat Nov 12 18:43:49 2016
[6]: Connection established. 
Sat Nov 12 18:43:49 2016
[6]: Waiting for connection... 
[2]   Done                    ./client localhost 65000
[3]   Done                    ./client localhost 65000
[4]   Done                    ./client localhost 65000
[5]   Done                    ./client localhost 65000
[6]   Done                    ./client localhost 65000
[7]   Done                    ./client localhost 65000
[8]   Done                    ./client localhost 65000
[9]   Done                    ./client localhost 65000
[10]   Done                    ./client localhost 65000
[11]   Done                    ./client localhost 65000
[12]   Done                    ./client localhost 65000
[13]   Done                    ./client localhost 65000
[14]   Done                    ./client localhost 65000
[15]   Done                    ./client localhost 65000
[16]   Done                    ./client localhost 65000
[17]   Done                    ./client localhost 65000
[18]   Done                    ./client localhost 65000
[19]   Done                    ./client localhost 65000
[20]   Done                    ./client localhost 65000
[21]   Done                    ./client localhost 65000
[22]   Done                    ./client localhost 65000
[23]   Done                    ./client localhost 65000
[24]   Done                    ./client localhost 65000
[25]   Done                    ./client localhost 65000
[26]   Done                    ./client localhost 65000
[27]   Done                    ./client localhost 65000
[28]   Done                    ./client localhost 65000
[29]   Done                    ./client localhost 65000
[30]   Done                    ./client localhost 65000
[31]   Done                    ./client localhost 65000
[32]   Done                    ./client localhost 65000
[33]   Done                    ./client localhost 65000
[34]   Done                    ./client localhost 65000
[35]   Done                    ./client localhost 65000
[36]   Done                    ./client localhost 65000
[37]   Done                    ./client localhost 65000
[38]   Done                    ./client localhost 65000
[39]   Done                    ./client localhost 65000
[40]   Done                    ./client localhost 65000
[41]   Done                    ./client localhost 65000
[42]   Done                    ./client localhost 65000
[43]   Done                    ./client localhost 65000
[44]   Done                    ./client localhost 65000
[45]   Done                    ./client localhost 65000
[46]   Done                    ./client localhost 65000
[47]   Done                    ./client localhost 65000
[48]   Done                    ./client localhost 65000
[49]   Done                    ./client localhost 65000
[50]   Done                    ./client localhost 65000
[51]   Done                    ./client localhost 65000
[52]   Done                    ./client localhost 65000
[53]   Done                    ./client localhost 65000
[54]   Done                    ./client localhost 65000
[55]   Done                    ./client localhost 65000
[56]   Done                    ./client localhost 65000
[57]   Done                    ./client localhost 65000
[58]   Done                    ./client localhost 65000
[59]   Done                    ./client localhost 65000
[60]   Done                    ./client localhost 65000
[61]   Done                    ./client localhost 65000
[62]   Done                    ./client localhost 65000
[63]   Done                    ./client localhost 65000
[64]   Done                    ./client localhost 65000
[65]   Done                    ./client localhost 65000
[66]   Done                    ./client localhost 65000
[67]   Done                    ./client localhost 65000
[68]   Done                    ./client localhost 65000
[69]   Done                    ./client localhost 65000
[70]   Done                    ./client localhost 65000
[71]   Done                    ./client localhost 65000
[72]   Done                    ./client localhost 65000
[73]   Done                    ./client localhost 65000
[74]   Done                    ./client localhost 65000
[75]   Done                    ./client localhost 65000
[76]   Done                    ./client localhost 65000
[77]   Done                    ./client localhost 65000
[78]   Done                    ./client localhost 65000
[79]   Done                    ./client localhost 65000
[80]   Done                    ./client localhost 65000
[81]   Done                    ./client localhost 65000
[82]   Done                    ./client localhost 65000
[83]   Done                    ./client localhost 65000
[84]   Done                    ./client localhost 65000
[85]   Done                    ./client localhost 65000
[86]   Done                    ./client localhost 65000
[87]   Done                    ./client localhost 65000
[88]   Done                    ./client localhost 65000
[89]   Done                    ./client localhost 65000
[90]   Done                    ./client localhost 65000
[91]   Done                    ./client localhost 65000
[92]   Done                    ./client localhost 65000
[93]   Done                    ./client localhost 65000
[94]   Done                    ./client localhost 65000
[95]   Done                    ./client localhost 65000
[96]   Done                    ./client localhost 65000
[97]   Done                    ./client localhost 65000
[98]   Done                    ./client localhost 65000
[99]   Done                    ./client localhost 65000
[100]   Done                    ./client localhost 65000
[101]   Done                    ./client localhost 65000
[102]   Done                    ./client localhost 65000
[103]   Done                    ./client localhost 65000
[104]   Done                    ./client localhost 65000
[105]   Done                    ./client localhost 65000
[106]   Done                    ./client localhost 65000
[107]   Done                    ./client localhost 65000
[108]   Done                    ./client localhost 65000
[109]   Done                    ./client localhost 65000
[110]   Done                    ./client localhost 65000
[111]   Done                    ./client localhost 65000
[112]   Done                    ./client localhost 65000
[113]   Done                    ./client localhost 65000
[114]   Done                    ./client localhost 65000
[115]   Done                    ./client localhost 65000
[116]   Done                    ./client localhost 65000
[117]   Done                    ./client localhost 65000
[118]   Done                    ./client localhost 65000
[119]   Done                    ./client localhost 65000
[120]   Done                    ./client localhost 65000
[121]   Done                    ./client localhost 65000
[122]   Done                    ./client localhost 65000
[123]   Done                    ./client localhost 65000
[124]   Done                    ./client localhost 65000
[125]   Done                    ./client localhost 65000
[126]   Done                    ./client localhost 65000
[127]   Done                    ./client localhost 65000
[128]   Done                    ./client localhost 65000
[129]   Done                    ./client localhost 65000
[130]   Done                    ./client localhost 65000
[131]   Done                    ./client localhost 65000
[132]   Done                    ./client localhost 65000
[133]   Done                    ./client localhost 65000
[134]   Done                    ./client localhost 65000
[135]   Done                    ./client localhost 65000
[136]   Done                    ./client localhost 65000
[137]   Done                    ./client localhost 65000
[138]   Done                    ./client localhost 65000
[139]   Done                    ./client localhost 65000
[140]   Done                    ./client localhost 65000
[141]   Done                    ./client localhost 65000
[142]   Done                    ./client localhost 65000
[143]   Done                    ./client localhost 65000
[144]   Done                    ./client localhost 65000
[145]   Done                    ./client localhost 65000
[146]   Done                    ./client localhost 65000
[147]   Done                    ./client localhost 65000
[148]   Done                    ./client localhost 65000
[149]   Done                    ./client localhost 65000
[150]   Done                    ./client localhost 65000
[151]   Done                    ./client localhost 65000
[152]   Done                    ./client localhost 65000
[153]   Done                    ./client localhost 65000
[154]   Done                    ./client localhost 65000
[155]   Done                    ./client localhost 65000
[156]   Done                    ./client localhost 65000
[157]   Done                    ./client localhost 65000
[158]   Done                    ./client localhost 65000
[159]   Done                    ./client localhost 65000
[160]   Done                    ./client localhost 65000
[161]   Done                    ./client localhost 65000
[162]   Done                    ./client localhost 65000
[163]   Done                    ./client localhost 65000
[164]   Done                    ./client localhost 65000
[165]   Done                    ./client localhost 65000
[166]   Done                    ./client localhost 65000
[167]   Done                    ./client localhost 65000
[168]   Done                    ./client localhost 65000
[169]   Done                    ./client localhost 65000
[170]   Done                    ./client localhost 65000
[171]   Done                    ./client localhost 65000
[172]   Done                    ./client localhost 65000
[173]   Done                    ./client localhost 65000
[174]   Done                    ./client localhost 65000
[175]   Done                    ./client localhost 65000
[176]   Done                    ./client localhost 65000
[177]   Done                    ./client localhost 65000
[178]   Done                    ./client localhost 65000
[179]   Done                    ./client localhost 65000
[180]   Done                    ./client localhost 65000
[181]   Done                    ./client localhost 65000
[182]   Done                    ./client localhost 65000
[183]   Done                    ./client localhost 65000
[184]   Done                    ./client localhost 65000
[185]   Done                    ./client localhost 65000
[186]   Done                    ./client localhost 65000
[187]   Done                    ./client localhost 65000
[188]   Done                    ./client localhost 65000
[189]   Done                    ./client localhost 65000
[190]   Done                    ./client localhost 65000
[191]   Done                    ./client localhost 65000
[192]   Done                    ./client localhost 65000
[193]   Done                    ./client localhost 65000
[194]   Done                    ./client localhost 65000
[195]   Done                    ./client localhost 65000
[196]   Done                    ./client localhost 65000
[197]   Done                    ./client localhost 65000
[198]   Done                    ./client localhost 65000
[199]   Done                    ./client localhost 65000
[200]   Done                    ./client localhost 65000
[201]   Done                    ./client localhost 65000
[202]   Done                    ./client localhost 65000
[203]   Done                    ./client localhost 65000
[204]   Done                    ./client localhost 65000
[205]   Done                    ./client localhost 65000
[206]   Done                    ./client localhost 65000
[207]   Done                    ./client localhost 65000
[208]   Done                    ./client localhost 65000
[209]   Done                    ./client localhost 65000
[210]   Done                    ./client localhost 65000
[211]   Done                    ./client localhost 65000
[212]   Done                    ./client localhost 65000
[213]   Done                    ./client localhost 65000
[214]   Done                    ./client localhost 65000
[215]   Done                    ./client localhost 65000
[216]   Done                    ./client localhost 65000
[217]   Done                    ./client localhost 65000
[218]   Done                    ./client localhost 65000
[219]   Done                    ./client localhost 65000
[220]   Done                    ./client localhost 65000
[221]   Done                    ./client localhost 65000
[222]   Done                    ./client localhost 65000
[223]   Done                    ./client localhost 65000
[224]   Done                    ./client localhost 65000
[225]   Done                    ./client localhost 65000
[226]   Done                    ./client localhost 65000
[227]   Done                    ./client localhost 65000
[228]   Done                    ./client localhost 65000
[229]   Done                    ./client localhost 65000
[230]   Done                    ./client localhost 65000
[231]   Done                    ./client localhost 65000
[232]   Done                    ./client localhost 65000
[233]   Done                    ./client localhost 65000
[234]   Done                    ./client localhost 65000
[235]   Done                    ./client localhost 65000
[236]   Done                    ./client localhost 65000
[237]   Done                    ./client localhost 65000
[238]   Done                    ./client localhost 65000
[239]   Done                    ./client localhost 65000
[240]   Done                    ./client localhost 65000
[241]   Done                    ./client localhost 65000
[242]   Done                    ./client localhost 65000
[243]   Done                    ./client localhost 65000
[244]   Done                    ./client localhost 65000
[245]   Done                    ./client localhost 65000
[246]   Done                    ./client localhost 65000
[247]   Done                    ./client localhost 65000
[248]   Done                    ./client localhost 65000
[249]   Done                    ./client localhost 65000
[250]   Done                    ./client localhost 65000
[251]   Done                    ./client localhost 65000
[252]   Done                    ./client localhost 65000
[253]   Done                    ./client localhost 65000
[254]   Done                    ./client localhost 65000
[255]   Done                    ./client localhost 65000
[256]   Done                    ./client localhost 65000
[257]   Done                    ./client localhost 65000
[258]   Done                    ./client localhost 65000
[259]   Done                    ./client localhost 65000
[260]   Done                    ./client localhost 65000
[261]   Done                    ./client localhost 65000
[262]   Done                    ./client localhost 65000
[263]   Done                    ./client localhost 65000
[264]   Done                    ./client localhost 65000
[265]   Done                    ./client localhost 65000
[266]   Done                    ./client localhost 65000
[267]   Done                    ./client localhost 65000
[268]   Done                    ./client localhost 65000
[269]   Done                    ./client localhost 65000
[270]   Done                    ./client localhost 65000
[271]   Done                    ./client localhost 65000
[272]   Done                    ./client localhost 65000
[273]   Done                    ./client localhost 65000
[274]   Done                    ./client localhost 65000
[275]   Done                    ./client localhost 65000
[276]   Done                    ./client localhost 65000
[277]   Done                    ./client localhost 65000
[278]   Done                    ./client localhost 65000
[279]   Done                    ./client localhost 65000
[280]   Done                    ./client localhost 65000
[281]   Done                    ./client localhost 65000
[282]   Done                    ./client localhost 65000
[283]   Done                    ./client localhost 65000
[284]   Done                    ./client localhost 65000
[285]   Done                    ./client localhost 65000
[286]   Done                    ./client localhost 65000
[287]   Done                    ./client localhost 65000
[288]   Done                    ./client localhost 65000
[289]   Done                    ./client localhost 65000
[290]   Done                    ./client localhost 65000
[291]   Done                    ./client localhost 65000
[292]   Done                    ./client localhost 65000
[293]   Done                    ./client localhost 65000
[294]   Done                    ./client localhost 65000
[295]   Done                    ./client localhost 65000
[296]   Done                    ./client localhost 65000
[297]   Done                    ./client localhost 65000
[298]   Done                    ./client localhost 65000
[299]   Done                    ./client localhost 65000
[300]   Done                    ./client localhost 65000
[301]   Done                    ./client localhost 65000
[302]   Done                    ./client localhost 65000
[303]   Done                    ./client localhost 65000
[304]   Done                    ./client localhost 65000
[305]   Done                    ./client localhost 65000
[306]   Done                    ./client localhost 65000
[307]   Done                    ./client localhost 65000
[308]   Done                    ./client localhost 65000
[309]   Done                    ./client localhost 65000
[310]   Done                    ./client localhost 65000
[311]   Done                    ./client localhost 65000
[312]   Done                    ./client localhost 65000
[313]   Done                    ./client localhost 65000
[314]   Done                    ./client localhost 65000
[315]   Done                    ./client localhost 65000
[316]   Done                    ./client localhost 65000
[317]   Done                    ./client localhost 65000
[318]   Done                    ./client localhost 65000
[319]   Done                    ./client localhost 65000
[320]   Done                    ./client localhost 65000
[321]   Done                    ./client localhost 65000
[322]   Done                    ./client localhost 65000
[323]   Done                    ./client localhost 65000
[324]   Done                    ./client localhost 65000
[325]   Done                    ./client localhost 65000
[326]   Done                    ./client localhost 65000
[327]   Done                    ./client localhost 65000
[328]   Done                    ./client localhost 65000
[329]   Done                    ./client localhost 65000
[330]   Done                    ./client localhost 65000
[331]   Done                    ./client localhost 65000
[332]   Done                    ./client localhost 65000
[333]   Done                    ./client localhost 65000
[334]   Done                    ./client localhost 65000
[335]   Done                    ./client localhost 65000
[336]   Done                    ./client localhost 65000
[337]   Done                    ./client localhost 65000
[338]   Done                    ./client localhost 65000
[339]   Done                    ./client localhost 65000
[340]   Done                    ./client localhost 65000
[341]   Done                    ./client localhost 65000
[342]   Done                    ./client localhost 65000
[343]   Done                    ./client localhost 65000
[344]   Done                    ./client localhost 65000
[345]   Done                    ./client localhost 65000
[346]   Done                    ./client localhost 65000
[347]   Done                    ./client localhost 65000
[348]   Done                    ./client localhost 65000
[349]   Done                    ./client localhost 65000
[350]   Done                    ./client localhost 65000
[351]   Done                    ./client localhost 65000
[352]   Done                    ./client localhost 65000
[353]   Done                    ./client localhost 65000
[354]   Done                    ./client localhost 65000
[355]   Done                    ./client localhost 65000
[356]   Done                    ./client localhost 65000
[357]   Done                    ./client localhost 65000
[358]   Done                    ./client localhost 65000
[359]   Done                    ./client localhost 65000
[360]   Done                    ./client localhost 65000
[361]   Done                    ./client localhost 65000
[362]   Done                    ./client localhost 65000
[363]   Done                    ./client localhost 65000
[364]   Done                    ./client localhost 65000
[365]   Done                    ./client localhost 65000
[366]   Done                    ./client localhost 65000
[367]   Done                    ./client localhost 65000
[368]   Done                    ./client localhost 65000
[369]   Done                    ./client localhost 65000
[370]   Done                    ./client localhost 65000
[371]   Done                    ./client localhost 65000
[372]   Done                    ./client localhost 65000
[373]   Done                    ./client localhost 65000
[374]   Done                    ./client localhost 65000
[375]   Done                    ./client localhost 65000
[376]   Done                    ./client localhost 65000
[377]   Done                    ./client localhost 65000
[378]   Done                    ./client localhost 65000
[379]   Done                    ./client localhost 65000
[380]   Done                    ./client localhost 65000
[381]   Done                    ./client localhost 65000
[382]   Done                    ./client localhost 65000
[383]   Done                    ./client localhost 65000
[384]   Done                    ./client localhost 65000
[385]   Done                    ./client localhost 65000
[386]   Done                    ./client localhost 65000
[387]   Done                    ./client localhost 65000
[388]   Done                    ./client localhost 65000
[389]   Done                    ./client localhost 65000
[390]   Done                    ./client localhost 65000
[391]   Done                    ./client localhost 65000
[392]   Done                    ./client localhost 65000
[393]   Done                    ./client localhost 65000
[394]   Done                    ./client localhost 65000
[395]   Done                    ./client localhost 65000
[396]   Done                    ./client localhost 65000
[397]   Done                    ./client localhost 65000
[398]   Done                    ./client localhost 65000
[399]   Done                    ./client localhost 65000
[400]   Done                    ./client localhost 65000
[401]   Done                    ./client localhost 65000
[402]   Done                    ./client localhost 65000
[403]   Done                    ./client localhost 65000
[404]   Done                    ./client localhost 65000
[405]   Done                    ./client localhost 65000
[406]   Done                    ./client localhost 65000
[407]   Done                    ./client localhost 65000
[408]   Done                    ./client localhost 65000
[409]   Done                    ./client localhost 65000
[410]   Done                    ./client localhost 65000
[411]   Done                    ./client localhost 65000
[412]   Done                    ./client localhost 65000
[413]   Done                    ./client localhost 65000
[414]   Done                    ./client localhost 65000
[415]   Done                    ./client localhost 65000
[416]   Done                    ./client localhost 65000
[417]   Done                    ./client localhost 65000
[418]   Done                    ./client localhost 65000
[419]   Done                    ./client localhost 65000
[420]   Done                    ./client localhost 65000
[421]   Done                    ./client localhost 65000
[422]   Done                    ./client localhost 65000
[423]   Done                    ./client localhost 65000
[424]   Done                    ./client localhost 65000
[425]   Done                    ./client localhost 65000
[426]   Done                    ./client localhost 65000
[427]   Done                    ./client localhost 65000
[428]   Done                    ./client localhost 65000
[429]   Done                    ./client localhost 65000
[430]   Done                    ./client localhost 65000
[431]   Done                    ./client localhost 65000
[432]   Done                    ./client localhost 65000
[433]   Done                    ./client localhost 65000
[434]   Done                    ./client localhost 65000
[435]   Done                    ./client localhost 65000
[436]   Done                    ./client localhost 65000
[437]   Done                    ./client localhost 65000
[438]   Done                    ./client localhost 65000
[439]   Done                    ./client localhost 65000
[440]   Done                    ./client localhost 65000
[441]   Done                    ./client localhost 65000
[442]   Done                    ./client localhost 65000
[443]   Done                    ./client localhost 65000
[444]   Done                    ./client localhost 65000
[445]   Done                    ./client localhost 65000
[446]   Done                    ./client localhost 65000
[447]   Done                    ./client localhost 65000
[448]   Done                    ./client localhost 65000
[449]   Done                    ./client localhost 65000
[450]   Done                    ./client localhost 65000
[451]   Done                    ./client localhost 65000
[452]   Done                    ./client localhost 65000
[453]   Done                    ./client localhost 65000
[454]   Done                    ./client localhost 65000
[455]   Done                    ./client localhost 65000
[456]   Done                    ./client localhost 65000
[457]   Done                    ./client localhost 65000
[458]   Done                    ./client localhost 65000
[459]   Done                    ./client localhost 65000
[460]   Done                    ./client localhost 65000
[461]   Done                    ./client localhost 65000
[462]   Done                    ./client localhost 65000
[463]   Done                    ./client localhost 65000
[464]   Done                    ./client localhost 65000
[465]   Done                    ./client localhost 65000
[466]   Done                    ./client localhost 65000
[467]   Done                    ./client localhost 65000
[468]   Done                    ./client localhost 65000
[469]   Done                    ./client localhost 65000
[470]   Done                    ./client localhost 65000
[471]   Done                    ./client localhost 65000
[472]   Done                    ./client localhost 65000
[473]   Done                    ./client localhost 65000
[474]   Done                    ./client localhost 65000
[475]   Done                    ./client localhost 65000
[476]   Done                    ./client localhost 65000
[477]   Done                    ./client localhost 65000
[478]   Done                    ./client localhost 65000
[479]   Done                    ./client localhost 65000
[480]   Done                    ./client localhost 65000
[481]   Done                    ./client localhost 65000
[482]   Done                    ./client localhost 65000
[483]   Done                    ./client localhost 65000
[484]   Done                    ./client localhost 65000
[485]   Done                    ./client localhost 65000
[486]   Done                    ./client localhost 65000
[487]   Done                    ./client localhost 65000
[488]   Done                    ./client localhost 65000
[489]   Done                    ./client localhost 65000
[490]   Done                    ./client localhost 65000
[491]   Done                    ./client localhost 65000
[492]   Done                    ./client localhost 65000
[493]   Done                    ./client localhost 65000
[494]   Done                    ./client localhost 65000
[495]   Done                    ./client localhost 65000
[496]   Done                    ./client localhost 65000
[497]   Done                    ./client localhost 65000
[498]   Done                    ./client localhost 65000
[499]   Done                    ./client localhost 65000
[500]   Done                    ./client localhost 65000
[501]   Done                    ./client localhost 65000
[502]   Done                    ./client localhost 65000
[503]   Done                    ./client localhost 65000
[504]   Done                    ./client localhost 65000
[505]   Done                    ./client localhost 65000
[506]   Done                    ./client localhost 65000
[507]   Done                    ./client localhost 65000
[508]   Done                    ./client localhost 65000
[509]   Done                    ./client localhost 65000
[510]   Done                    ./client localhost 65000
[511]   Done                    ./client localhost 65000
[512]   Done                    ./client localhost 65000
[513]   Done                    ./client localhost 65000
[514]   Done                    ./client localhost 65000
[515]   Done                    ./client localhost 65000
[516]   Done                    ./client localhost 65000
[517]   Done                    ./client localhost 65000
[518]   Done                    ./client localhost 65000
[519]   Done                    ./client localhost 65000
[520]   Done                    ./client localhost 65000
[521]   Done                    ./client localhost 65000
[522]   Done                    ./client localhost 65000
[523]   Done                    ./client localhost 65000
[524]   Done                    ./client localhost 65000
[525]   Done                    ./client localhost 65000
[526]   Done                    ./client localhost 65000
[527]   Done                    ./client localhost 65000
[528]   Done                    ./client localhost 65000
[529]   Done                    ./client localhost 65000
[530]   Done                    ./client localhost 65000
[531]   Done                    ./client localhost 65000
[532]   Done                    ./client localhost 65000
[533]   Done                    ./client localhost 65000
[534]   Done                    ./client localhost 65000
[535]   Done                    ./client localhost 65000
[536]   Done                    ./client localhost 65000
[537]   Done                    ./client localhost 65000
[538]   Done                    ./client localhost 65000
[539]   Done                    ./client localhost 65000
[540]   Done                    ./client localhost 65000
[541]   Done                    ./client localhost 65000
[542]   Done                    ./client localhost 65000
[543]   Done                    ./client localhost 65000
[544]   Done                    ./client localhost 65000
[545]   Done                    ./client localhost 65000
[546]   Done                    ./client localhost 65000
[547]   Done                    ./client localhost 65000
[548]   Done                    ./client localhost 65000
[549]   Done                    ./client localhost 65000
[550]   Done                    ./client localhost 65000
[551]   Done                    ./client localhost 65000
[552]   Done                    ./client localhost 65000
[553]   Done                    ./client localhost 65000
[554]   Done                    ./client localhost 65000
[555]   Done                    ./client localhost 65000
[556]   Done                    ./client localhost 65000
[557]   Done                    ./client localhost 65000
[558]   Done                    ./client localhost 65000
[559]   Done                    ./client localhost 65000
[560]   Done                    ./client localhost 65000
[561]   Done                    ./client localhost 65000
[562]   Done                    ./client localhost 65000
[563]   Done                    ./client localhost 65000
[564]   Done                    ./client localhost 65000
[565]   Done                    ./client localhost 65000
[566]   Done                    ./client localhost 65000
[567]   Done                    ./client localhost 65000
[568]   Done                    ./client localhost 65000
[569]   Done                    ./client localhost 65000
[570]   Done                    ./client localhost 65000
[571]   Done                    ./client localhost 65000
[572]   Done                    ./client localhost 65000
[573]   Done                    ./client localhost 65000
[574]   Done                    ./client localhost 65000
[575]   Done                    ./client localhost 65000
[576]   Done                    ./client localhost 65000
[577]   Done                    ./client localhost 65000
[578]   Done                    ./client localhost 65000
[579]   Done                    ./client localhost 65000
[580]   Done                    ./client localhost 65000
[581]   Done                    ./client localhost 65000
[582]   Done                    ./client localhost 65000
[583]   Done                    ./client localhost 65000
[584]   Done                    ./client localhost 65000
[585]   Done                    ./client localhost 65000
[586]   Done                    ./client localhost 65000
[587]   Done                    ./client localhost 65000
[588]   Done                    ./client localhost 65000
[589]   Done                    ./client localhost 65000
[590]   Done                    ./client localhost 65000
[591]   Done                    ./client localhost 65000
[592]   Done                    ./client localhost 65000
[593]   Done                    ./client localhost 65000
[594]   Done                    ./client localhost 65000
[595]   Done                    ./client localhost 65000
[596]   Done                    ./client localhost 65000
[597]   Done                    ./client localhost 65000
[598]   Done                    ./client localhost 65000
[599]   Done                    ./client localhost 65000
[600]   Done                    ./client localhost 65000
[601]   Done                    ./client localhost 65000
[602]   Done                    ./client localhost 65000
[603]   Done                    ./client localhost 65000
[604]   Done                    ./client localhost 65000
[605]   Done                    ./client localhost 65000
[606]   Done                    ./client localhost 65000
[607]   Done                    ./client localhost 65000
[608]   Done                    ./client localhost 65000
[609]   Done                    ./client localhost 65000
[610]   Done                    ./client localhost 65000
[611]   Done                    ./client localhost 65000
[612]   Done                    ./client localhost 65000
[613]   Done                    ./client localhost 65000
[614]   Done                    ./client localhost 65000
[615]   Done                    ./client localhost 65000
[616]   Done                    ./client localhost 65000
[617]   Done                    ./client localhost 65000
[618]   Done                    ./client localhost 65000
[619]   Done                    ./client localhost 65000
[620]   Done                    ./client localhost 65000
[621]   Done                    ./client localhost 65000
[622]   Done                    ./client localhost 65000
[623]   Done                    ./client localhost 65000
[624]   Done                    ./client localhost 65000
[625]   Done                    ./client localhost 65000
[626]   Done                    ./client localhost 65000
[627]   Done                    ./client localhost 65000
[628]   Done                    ./client localhost 65000
[629]   Done                    ./client localhost 65000
[630]   Done                    ./client localhost 65000
[631]   Done                    ./client localhost 65000
[632]   Done                    ./client localhost 65000
[633]   Done                    ./client localhost 65000
[634]   Done                    ./client localhost 65000
[635]   Done                    ./client localhost 65000
[636]   Done                    ./client localhost 65000
[637]   Done                    ./client localhost 65000
[638]   Done                    ./client localhost 65000
[639]   Done                    ./client localhost 65000
[640]   Done                    ./client localhost 65000
[641]   Done                    ./client localhost 65000
[642]   Done                    ./client localhost 65000
[643]   Done                    ./client localhost 65000
[644]   Done                    ./client localhost 65000
[645]   Done                    ./client localhost 65000
[646]   Done                    ./client localhost 65000
[647]   Done                    ./client localhost 65000
[648]   Done                    ./client localhost 65000
[649]   Done                    ./client localhost 65000
[650]   Done                    ./client localhost 65000
[651]   Done                    ./client localhost 65000
[652]   Done                    ./client localhost 65000
[653]   Done                    ./client localhost 65000
[654]   Done                    ./client localhost 65000
[655]   Done                    ./client localhost 65000
[656]   Done                    ./client localhost 65000
[657]   Done                    ./client localhost 65000
[658]   Done                    ./client localhost 65000
[659]   Done                    ./client localhost 65000
[660]   Done                    ./client localhost 65000
[661]   Done                    ./client localhost 65000
[662]   Done                    ./client localhost 65000
[663]   Done                    ./client localhost 65000
[664]   Done                    ./client localhost 65000
[665]   Done                    ./client localhost 65000
[666]   Done                    ./client localhost 65000
[667]   Done                    ./client localhost 65000
[668]   Done                    ./client localhost 65000
[669]   Done                    ./client localhost 65000
[670]   Done                    ./client localhost 65000
[671]   Done                    ./client localhost 65000
[672]   Done                    ./client localhost 65000
[673]   Done                    ./client localhost 65000
[674]   Done                    ./client localhost 65000
[675]   Done                    ./client localhost 65000
[676]   Done                    ./client localhost 65000
[677]   Done                    ./client localhost 65000
[678]   Done                    ./client localhost 65000
[679]   Done                    ./client localhost 65000
[680]   Done                    ./client localhost 65000
[681]   Done                    ./client localhost 65000
[682]   Done                    ./client localhost 65000
[683]   Done                    ./client localhost 65000
[684]   Done                    ./client localhost 65000
[685]   Done                    ./client localhost 65000
[686]   Done                    ./client localhost 65000
[687]   Done                    ./client localhost 65000
[688]   Done                    ./client localhost 65000
[689]   Done                    ./client localhost 65000
[690]   Done                    ./client localhost 65000
[691]   Done                    ./client localhost 65000
[692]   Done                    ./client localhost 65000
[693]   Done                    ./client localhost 65000
[694]   Done                    ./client localhost 65000
[695]   Done                    ./client localhost 65000
[696]   Done                    ./client localhost 65000
[697]   Done                    ./client localhost 65000
[698]   Done                    ./client localhost 65000
[699]   Done                    ./client localhost 65000
[700]   Done                    ./client localhost 65000
[701]   Done                    ./client localhost 65000
[702]   Done                    ./client localhost 65000
[703]   Done                    ./client localhost 65000
[704]   Done                    ./client localhost 65000
[705]   Done                    ./client localhost 65000
[706]   Done                    ./client localhost 65000
[707]   Done                    ./client localhost 65000
[708]   Done                    ./client localhost 65000
[709]   Done                    ./client localhost 65000
[710]   Done                    ./client localhost 65000
[711]   Done                    ./client localhost 65000
[712]   Done                    ./client localhost 65000
[713]   Done                    ./client localhost 65000
[714]   Done                    ./client localhost 65000
[715]   Done                    ./client localhost 65000
[716]   Done                    ./client localhost 65000
[717]   Done                    ./client localhost 65000
[718]   Done                    ./client localhost 65000
[719]   Done                    ./client localhost 65000
[720]   Done                    ./client localhost 65000
[721]   Done                    ./client localhost 65000
[722]   Done                    ./client localhost 65000
[723]   Done                    ./client localhost 65000
[724]   Done                    ./client localhost 65000
[725]   Done                    ./client localhost 65000
[726]   Done                    ./client localhost 65000
[727]   Done                    ./client localhost 65000
[728]   Done                    ./client localhost 65000
[729]   Done                    ./client localhost 65000
[730]   Done                    ./client localhost 65000
[731]   Done                    ./client localhost 65000
[732]   Done                    ./client localhost 65000
[733]   Done                    ./client localhost 65000
[734]   Done                    ./client localhost 65000
[735]   Done                    ./client localhost 65000
[736]   Done                    ./client localhost 65000
[737]   Done                    ./client localhost 65000
[738]   Done                    ./client localhost 65000
[739]   Done                    ./client localhost 65000
[740]   Done                    ./client localhost 65000
[741]   Done                    ./client localhost 65000
[742]   Done                    ./client localhost 65000
[743]   Done                    ./client localhost 65000
[744]   Done                    ./client localhost 65000
[745]   Done                    ./client localhost 65000
[746]   Done                    ./client localhost 65000
[747]   Done                    ./client localhost 65000
[748]   Done                    ./client localhost 65000
[749]   Done                    ./client localhost 65000
[750]   Done                    ./client localhost 65000
[751]   Done                    ./client localhost 65000
[752]   Done                    ./client localhost 65000
[753]   Done                    ./client localhost 65000
[754]   Done                    ./client localhost 65000
[755]   Done                    ./client localhost 65000
[756]   Done                    ./client localhost 65000
[757]   Done                    ./client localhost 65000
[758]   Done                    ./client localhost 65000
[759]   Done                    ./client localhost 65000
[760]   Done                    ./client localhost 65000
[761]   Done                    ./client localhost 65000
[762]   Done                    ./client localhost 65000
[763]   Done                    ./client localhost 65000
[764]   Done                    ./client localhost 65000
[765]   Done                    ./client localhost 65000
[766]   Done                    ./client localhost 65000
[767]   Done                    ./client localhost 65000
[768]   Done                    ./client localhost 65000
[769]   Done                    ./client localhost 65000
[770]   Done                    ./client localhost 65000
[771]   Done                    ./client localhost 65000
[772]   Done                    ./client localhost 65000
[773]   Done                    ./client localhost 65000
[774]   Done                    ./client localhost 65000
[775]   Done                    ./client localhost 65000
[776]   Done                    ./client localhost 65000
[777]   Done                    ./client localhost 65000
[778]   Done                    ./client localhost 65000
[779]   Done                    ./client localhost 65000
[780]   Done                    ./client localhost 65000
[781]   Done                    ./client localhost 65000
[782]   Done                    ./client localhost 65000
[783]   Done                    ./client localhost 65000
[784]   Done                    ./client localhost 65000
[785]   Done                    ./client localhost 65000
[786]   Done                    ./client localhost 65000
[787]   Done                    ./client localhost 65000
[788]   Done                    ./client localhost 65000
[789]   Done                    ./client localhost 65000
[790]   Done                    ./client localhost 65000
[791]   Done                    ./client localhost 65000
[792]   Done                    ./client localhost 65000
[793]   Done                    ./client localhost 65000
[794]   Done                    ./client localhost 65000
[795]   Done                    ./client localhost 65000
[796]   Done                    ./client localhost 65000
[797]   Done                    ./client localhost 65000
[798]   Done                    ./client localhost 65000
[799]   Done                    ./client localhost 65000
[800]   Done                    ./client localhost 65000
[801]   Done                    ./client localhost 65000
[802]   Done                    ./client localhost 65000
[803]   Done                    ./client localhost 65000
[804]   Done                    ./client localhost 65000
[805]   Done                    ./client localhost 65000
[806]   Done                    ./client localhost 65000
[807]   Done                    ./client localhost 65000
[808]   Done                    ./client localhost 65000
[809]   Done                    ./client localhost 65000
[810]   Done                    ./client localhost 65000
[811]   Done                    ./client localhost 65000
[812]   Done                    ./client localhost 65000
[813]   Done                    ./client localhost 65000
[814]   Done                    ./client localhost 65000
[815]   Done                    ./client localhost 65000
[816]   Done                    ./client localhost 65000
[817]   Done                    ./client localhost 65000
[818]   Done                    ./client localhost 65000
[819]   Done                    ./client localhost 65000
[820]   Done                    ./client localhost 65000
[821]   Done                    ./client localhost 65000
[822]   Done                    ./client localhost 65000
[823]   Done                    ./client localhost 65000
[824]   Done                    ./client localhost 65000
[825]   Done                    ./client localhost 65000
[826]   Done                    ./client localhost 65000
[827]   Done                    ./client localhost 65000
[828]   Done                    ./client localhost 65000
[829]   Done                    ./client localhost 65000
[830]   Done                    ./client localhost 65000
[831]   Done                    ./client localhost 65000
[832]   Done                    ./client localhost 65000
[833]   Done                    ./client localhost 65000
[834]   Done                    ./client localhost 65000
[835]   Done                    ./client localhost 65000
[836]   Done                    ./client localhost 65000
[837]   Done                    ./client localhost 65000
[838]   Done                    ./client localhost 65000
[839]   Done                    ./client localhost 65000
[840]   Done                    ./client localhost 65000
[841]   Done                    ./client localhost 65000
[842]   Done                    ./client localhost 65000
[843]   Done                    ./client localhost 65000
[844]   Done                    ./client localhost 65000
[845]   Done                    ./client localhost 65000
[846]   Done                    ./client localhost 65000
[847]   Done                    ./client localhost 65000
[848]   Done                    ./client localhost 65000
[849]   Done                    ./client localhost 65000
[850]   Done                    ./client localhost 65000
[851]   Done                    ./client localhost 65000
[852]   Done                    ./client localhost 65000
[853]   Done                    ./client localhost 65000
[854]   Done                    ./client localhost 65000
[855]   Done                    ./client localhost 65000
[856]   Done                    ./client localhost 65000
[857]   Done                    ./client localhost 65000
[858]   Done                    ./client localhost 65000
[859]   Done                    ./client localhost 65000
[860]   Done                    ./client localhost 65000
[861]   Done                    ./client localhost 65000
[862]   Done                    ./client localhost 65000
[863]   Done                    ./client localhost 65000
[864]   Done                    ./client localhost 65000
[865]   Done                    ./client localhost 65000
[866]   Done                    ./client localhost 65000
[867]   Done                    ./client localhost 65000
[868]   Done                    ./client localhost 65000
[869]   Done                    ./client localhost 65000
[870]   Done                    ./client localhost 65000
[871]   Done                    ./client localhost 65000
[872]   Done                    ./client localhost 65000
[873]   Done                    ./client localhost 65000
[874]   Done                    ./client localhost 65000
[875]   Done                    ./client localhost 65000
[876]   Done                    ./client localhost 65000
[877]   Done                    ./client localhost 65000
[878]   Done                    ./client localhost 65000
[879]   Done                    ./client localhost 65000
[880]   Done                    ./client localhost 65000
[881]   Done                    ./client localhost 65000
[882]   Done                    ./client localhost 65000
[883]   Done                    ./client localhost 65000
[884]   Done                    ./client localhost 65000
[885]   Done                    ./client localhost 65000
[886]   Done                    ./client localhost 65000
[887]   Done                    ./client localhost 65000
[888]   Done                    ./client localhost 65000
[889]   Done                    ./client localhost 65000
[890]   Done                    ./client localhost 65000
[891]   Done                    ./client localhost 65000
[892]   Done                    ./client localhost 65000
[893]   Done                    ./client localhost 65000
[894]   Done                    ./client localhost 65000
[895]   Done                    ./client localhost 65000
[896]   Done                    ./client localhost 65000
[897]   Done                    ./client localhost 65000
[898]   Done                    ./client localhost 65000
[899]   Done                    ./client localhost 65000
[900]   Done                    ./client localhost 65000
[901]   Done                    ./client localhost 65000
[902]   Done                    ./client localhost 65000
[903]   Done                    ./client localhost 65000
[904]   Done                    ./client localhost 65000
[905]   Done                    ./client localhost 65000
[906]   Done                    ./client localhost 65000
[907]   Done                    ./client localhost 65000
[908]   Done                    ./client localhost 65000
[909]   Done                    ./client localhost 65000
[910]   Done                    ./client localhost 65000
[911]   Done                    ./client localhost 65000
[912]   Done                    ./client localhost 65000
[913]   Done                    ./client localhost 65000
[914]   Done                    ./client localhost 65000
[915]   Done                    ./client localhost 65000
[916]   Done                    ./client localhost 65000
[917]   Done                    ./client localhost 65000
[918]   Done                    ./client localhost 65000
[919]   Done                    ./client localhost 65000
[920]   Done                    ./client localhost 65000
[921]   Done                    ./client localhost 65000
[922]   Done                    ./client localhost 65000
[923]   Done                    ./client localhost 65000
[924]   Done                    ./client localhost 65000
[925]   Done                    ./client localhost 65000
[926]   Done                    ./client localhost 65000
[927]   Done                    ./client localhost 65000
[928]   Done                    ./client localhost 65000
[929]   Done                    ./client localhost 65000
[930]   Done                    ./client localhost 65000
[931]   Done                    ./client localhost 65000
[932]   Done                    ./client localhost 65000
[933]   Done                    ./client localhost 65000
[934]   Done                    ./client localhost 65000
[935]   Done                    ./client localhost 65000
[936]   Done                    ./client localhost 65000
[937]   Done                    ./client localhost 65000
[938]   Done                    ./client localhost 65000
[939]   Done                    ./client localhost 65000
[940]   Done                    ./client localhost 65000
[941]   Done                    ./client localhost 65000
[942]   Done                    ./client localhost 65000
[943]   Done                    ./client localhost 65000
[944]   Done                    ./client localhost 65000
[945]   Done                    ./client localhost 65000
[946]   Done                    ./client localhost 65000
[947]   Done                    ./client localhost 65000
[948]   Done                    ./client localhost 65000
[949]   Done                    ./client localhost 65000
[950]   Done                    ./client localhost 65000
[951]   Done                    ./client localhost 65000
[952]   Done                    ./client localhost 65000
[953]   Done                    ./client localhost 65000
[954]   Done                    ./client localhost 65000
[955]   Done                    ./client localhost 65000
[956]   Done                    ./client localhost 65000
[957]   Done                    ./client localhost 65000
[958]   Done                    ./client localhost 65000
[959]   Done                    ./client localhost 65000
[960]   Done                    ./client localhost 65000
[961]   Done                    ./client localhost 65000
[962]   Done                    ./client localhost 65000
[963]   Done                    ./client localhost 65000
[964]   Done                    ./client localhost 65000
[965]   Done                    ./client localhost 65000
[966]   Done                    ./client localhost 65000
[967]   Done                    ./client localhost 65000
[968]   Done                    ./client localhost 65000
[969]   Done                    ./client localhost 65000
[970]   Done                    ./client localhost 65000
[971]   Done                    ./client localhost 65000
[972]   Done                    ./client localhost 65000
[973]   Done                    ./client localhost 65000
[974]   Done                    ./client localhost 65000
[975]   Done                    ./client localhost 65000
[976]   Done                    ./client localhost 65000
[977]   Done                    ./client localhost 65000
[978]   Done                    ./client localhost 65000
[979]   Done                    ./client localhost 65000
[980]   Done                    ./client localhost 65000
[981]   Done                    ./client localhost 65000
[982]   Done                    ./client localhost 65000
[983]   Done                    ./client localhost 65000
[984]   Done                    ./client localhost 65000
[985]   Done                    ./client localhost 65000
[986]   Done                    ./client localhost 65000
[987]   Done                    ./client localhost 65000
[988]   Done                    ./client localhost 65000
[989]   Done                    ./client localhost 65000
[990]   Done                    ./client localhost 65000
[991]   Done                    ./client localhost 65000
[992]   Done                    ./client localhost 65000
[993]   Done                    ./client localhost 65000
[994]   Done                    ./client localhost 65000
[995]   Done                    ./client localhost 65000
[996]   Done                    ./client localhost 65000
[997]   Done                    ./client localhost 65000
[998]   Done                    ./client localhost 65000
[999]-  Done                    ./client localhost 65000
[1000]+  Done                    ./client localhost 65000
[2016-11-12T18:43:49,252741248-10:00 super@enyo hw6]$ scp client.c 192.168.1.105:~/
super@192.168.1.105's password: 
client.c                                                                                          100% 1046   168.5KB/s   
00:00    
[2016-11-12T18:44:19,184541106-10:00 super@enyo hw6]$ ssh 192.168.1.105
super@192.168.1.105's password: 
Welcome to Arch Linux ARM

     Website: http://archlinuxarm.org
       Forum: http://archlinuxarm.org/forum
         IRC: #archlinux-arm on irc.Freenode.net
Last login: Sun Nov 13 04:09:05 2016 from 192.168.1.103
[super@alarmpi ~]$ gcc -o client client.c 
[super@alarmpi ~]$ ip addr show wlan0
3: wlan0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
    link/ether b8:27:eb:31:e1:67 brd ff:ff:ff:ff:ff:ff
    inet 192.168.1.105/24 brd 192.168.1.255 scope global wlan0
       valid_lft forever preferred_lft forever
    inet6 fe80::d667:446b:3914:6c5f/64 scope link 
       valid_lft forever preferred_lft forever
[super@alarmpi ~]$ ./client 192.168.1.103 65000
[1]: Connection established. 
                             [1]: Waiting for connection... 
                                                            Sat Nov 12 18:45:12 2016
[super@alarmpi ~]$ ./client 192.168.1.103 65000
[7]: Connection established. 
                             [7]: Waiting for connection... 
                                                            Sat Nov 12 18:45:17 2016
[super@alarmpi ~]$ exit
logout
Connection to 192.168.1.105 closed.
[2016-11-12T18:45:22,433799015-10:00 super@enyo hw6]$ ./client localhost 65000
[0]: Connection established. 
[0]: Waiting for connection... 
Sat Nov 12 18:45:37 2016
[2016-11-12T18:45:37,306109766-10:00 super@enyo hw6]$ 

