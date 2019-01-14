define private i128 @mul64x64L(i64 %r2, i64 %r3)
{
%r4 = zext i64 %r2 to i128
%r5 = zext i64 %r3 to i128
%r6 = mul i128 %r4, %r5
ret i128 %r6
}
define private i64 @extractHigh64(i128 %r2)
{
%r3 = lshr i128 %r2, 64
%r4 = trunc i128 %r3 to i64
ret i64 %r4
}
define private i128 @mulPos64x64(i64* noalias  %r2, i64 %r3, i64 %r4)
{
%r5 = getelementptr i64, i64* %r2, i64 %r4
%r6 = load i64, i64* %r5
%r7 = call i128 @mul64x64L(i64 %r6, i64 %r3)
ret i128 %r7
}
define i192 @makeNIST_P192L()
{
%r8 = sub i64 0, 1
%r9 = sub i64 0, 2
%r10 = sub i64 0, 1
%r11 = zext i64 %r8 to i192
%r12 = zext i64 %r9 to i192
%r13 = zext i64 %r10 to i192
%r14 = shl i192 %r12, 64
%r15 = shl i192 %r13, 128
%r16 = add i192 %r11, %r14
%r17 = add i192 %r16, %r15
ret i192 %r17
}
define void @mcl_fpDbl_mod_NIST_P192L(i64* noalias  %r1, i64* noalias  %r2)
{
%r3 = load i64, i64* %r2
%r4 = zext i64 %r3 to i128
%r6 = getelementptr i64, i64* %r2, i32 1
%r7 = load i64, i64* %r6
%r8 = zext i64 %r7 to i128
%r9 = shl i128 %r8, 64
%r10 = or i128 %r4, %r9
%r11 = zext i128 %r10 to i192
%r13 = getelementptr i64, i64* %r2, i32 2
%r14 = load i64, i64* %r13
%r15 = zext i64 %r14 to i192
%r16 = shl i192 %r15, 128
%r17 = or i192 %r11, %r16
%r18 = zext i192 %r17 to i256
%r20 = getelementptr i64, i64* %r2, i32 3
%r21 = load i64, i64* %r20
%r22 = zext i64 %r21 to i128
%r24 = getelementptr i64, i64* %r20, i32 1
%r25 = load i64, i64* %r24
%r26 = zext i64 %r25 to i128
%r27 = shl i128 %r26, 64
%r28 = or i128 %r22, %r27
%r29 = zext i128 %r28 to i192
%r31 = getelementptr i64, i64* %r20, i32 2
%r32 = load i64, i64* %r31
%r33 = zext i64 %r32 to i192
%r34 = shl i192 %r33, 128
%r35 = or i192 %r29, %r34
%r36 = zext i192 %r35 to i256
%r37 = shl i192 %r35, 64
%r38 = zext i192 %r37 to i256
%r39 = lshr i192 %r35, 128
%r40 = trunc i192 %r39 to i64
%r41 = zext i64 %r40 to i256
%r42 = or i256 %r38, %r41
%r43 = shl i256 %r41, 64
%r44 = add i256 %r18, %r36
%r45 = add i256 %r44, %r42
%r46 = add i256 %r45, %r43
%r47 = lshr i256 %r46, 192
%r48 = trunc i256 %r47 to i64
%r49 = zext i64 %r48 to i256
%r50 = shl i256 %r49, 64
%r51 = or i256 %r49, %r50
%r52 = trunc i256 %r46 to i192
%r53 = zext i192 %r52 to i256
%r54 = add i256 %r53, %r51
%r55 = call i192 @makeNIST_P192L()
%r56 = zext i192 %r55 to i256
%r57 = sub i256 %r54, %r56
%r58 = lshr i256 %r57, 192
%r59 = trunc i256 %r58 to i1
%r60 = select i1 %r59, i256 %r54, i256 %r57
%r61 = trunc i256 %r60 to i192
%r62 = trunc i192 %r61 to i64
%r64 = getelementptr i64, i64* %r1, i32 0
store i64 %r62, i64* %r64
%r65 = lshr i192 %r61, 64
%r66 = trunc i192 %r65 to i64
%r68 = getelementptr i64, i64* %r1, i32 1
store i64 %r66, i64* %r68
%r69 = lshr i192 %r65, 64
%r70 = trunc i192 %r69 to i64
%r72 = getelementptr i64, i64* %r1, i32 2
store i64 %r70, i64* %r72
ret void
}
define void @mcl_fp_sqr_NIST_P192L(i64* noalias  %r1, i64* noalias  %r2)
{
%r4 = alloca i64, i32 6
call void @mcl_fpDbl_sqrPre3L(i64* %r4, i64* %r2)
call void @mcl_fpDbl_mod_NIST_P192L(i64* %r1, i64* %r4)
ret void
}
define void @mcl_fp_mulNIST_P192L(i64* noalias  %r1, i64* noalias  %r2, i64* noalias  %r3)
{
%r5 = alloca i64, i32 6
call void @mcl_fpDbl_mulPre3L(i64* %r5, i64* %r2, i64* %r3)
call void @mcl_fpDbl_mod_NIST_P192L(i64* %r1, i64* %r5)
ret void
}
define void @mcl_fpDbl_mod_NIST_P521L(i64* noalias  %r1, i64* noalias  %r2)
{
%r3 = load i64, i64* %r2
%r4 = zext i64 %r3 to i128
%r6 = getelementptr i64, i64* %r2, i32 1
%r7 = load i64, i64* %r6
%r8 = zext i64 %r7 to i128
%r9 = shl i128 %r8, 64
%r10 = or i128 %r4, %r9
%r11 = zext i128 %r10 to i192
%r13 = getelementptr i64, i64* %r2, i32 2
%r14 = load i64, i64* %r13
%r15 = zext i64 %r14 to i192
%r16 = shl i192 %r15, 128
%r17 = or i192 %r11, %r16
%r18 = zext i192 %r17 to i256
%r20 = getelementptr i64, i64* %r2, i32 3
%r21 = load i64, i64* %r20
%r22 = zext i64 %r21 to i256
%r23 = shl i256 %r22, 192
%r24 = or i256 %r18, %r23
%r25 = zext i256 %r24 to i320
%r27 = getelementptr i64, i64* %r2, i32 4
%r28 = load i64, i64* %r27
%r29 = zext i64 %r28 to i320
%r30 = shl i320 %r29, 256
%r31 = or i320 %r25, %r30
%r32 = zext i320 %r31 to i384
%r34 = getelementptr i64, i64* %r2, i32 5
%r35 = load i64, i64* %r34
%r36 = zext i64 %r35 to i384
%r37 = shl i384 %r36, 320
%r38 = or i384 %r32, %r37
%r39 = zext i384 %r38 to i448
%r41 = getelementptr i64, i64* %r2, i32 6
%r42 = load i64, i64* %r41
%r43 = zext i64 %r42 to i448
%r44 = shl i448 %r43, 384
%r45 = or i448 %r39, %r44
%r46 = zext i448 %r45 to i512
%r48 = getelementptr i64, i64* %r2, i32 7
%r49 = load i64, i64* %r48
%r50 = zext i64 %r49 to i512
%r51 = shl i512 %r50, 448
%r52 = or i512 %r46, %r51
%r53 = zext i512 %r52 to i576
%r55 = getelementptr i64, i64* %r2, i32 8
%r56 = load i64, i64* %r55
%r57 = zext i64 %r56 to i576
%r58 = shl i576 %r57, 512
%r59 = or i576 %r53, %r58
%r60 = zext i576 %r59 to i640
%r62 = getelementptr i64, i64* %r2, i32 9
%r63 = load i64, i64* %r62
%r64 = zext i64 %r63 to i640
%r65 = shl i640 %r64, 576
%r66 = or i640 %r60, %r65
%r67 = zext i640 %r66 to i704
%r69 = getelementptr i64, i64* %r2, i32 10
%r70 = load i64, i64* %r69
%r71 = zext i64 %r70 to i704
%r72 = shl i704 %r71, 640
%r73 = or i704 %r67, %r72
%r74 = zext i704 %r73 to i768
%r76 = getelementptr i64, i64* %r2, i32 11
%r77 = load i64, i64* %r76
%r78 = zext i64 %r77 to i768
%r79 = shl i768 %r78, 704
%r80 = or i768 %r74, %r79
%r81 = zext i768 %r80 to i832
%r83 = getelementptr i64, i64* %r2, i32 12
%r84 = load i64, i64* %r83
%r85 = zext i64 %r84 to i832
%r86 = shl i832 %r85, 768
%r87 = or i832 %r81, %r86
%r88 = zext i832 %r87 to i896
%r90 = getelementptr i64, i64* %r2, i32 13
%r91 = load i64, i64* %r90
%r92 = zext i64 %r91 to i896
%r93 = shl i896 %r92, 832
%r94 = or i896 %r88, %r93
%r95 = zext i896 %r94 to i960
%r97 = getelementptr i64, i64* %r2, i32 14
%r98 = load i64, i64* %r97
%r99 = zext i64 %r98 to i960
%r100 = shl i960 %r99, 896
%r101 = or i960 %r95, %r100
%r102 = zext i960 %r101 to i1024
%r104 = getelementptr i64, i64* %r2, i32 15
%r105 = load i64, i64* %r104
%r106 = zext i64 %r105 to i1024
%r107 = shl i1024 %r106, 960
%r108 = or i1024 %r102, %r107
%r109 = zext i1024 %r108 to i1088
%r111 = getelementptr i64, i64* %r2, i32 16
%r112 = load i64, i64* %r111
%r113 = zext i64 %r112 to i1088
%r114 = shl i1088 %r113, 1024
%r115 = or i1088 %r109, %r114
%r116 = trunc i1088 %r115 to i521
%r117 = zext i521 %r116 to i576
%r118 = lshr i1088 %r115, 521
%r119 = trunc i1088 %r118 to i576
%r120 = add i576 %r117, %r119
%r121 = lshr i576 %r120, 521
%r123 = and i576 %r121, 1
%r124 = add i576 %r120, %r123
%r125 = trunc i576 %r124 to i521
%r126 = zext i521 %r125 to i576
%r127 = lshr i576 %r126, 512
%r128 = trunc i576 %r127 to i64
%r130 = or i64 %r128, -512
%r131 = lshr i576 %r126, 0
%r132 = trunc i576 %r131 to i64
%r133 = and i64 %r130, %r132
%r134 = lshr i576 %r126, 64
%r135 = trunc i576 %r134 to i64
%r136 = and i64 %r133, %r135
%r137 = lshr i576 %r126, 128
%r138 = trunc i576 %r137 to i64
%r139 = and i64 %r136, %r138
%r140 = lshr i576 %r126, 192
%r141 = trunc i576 %r140 to i64
%r142 = and i64 %r139, %r141
%r143 = lshr i576 %r126, 256
%r144 = trunc i576 %r143 to i64
%r145 = and i64 %r142, %r144
%r146 = lshr i576 %r126, 320
%r147 = trunc i576 %r146 to i64
%r148 = and i64 %r145, %r147
%r149 = lshr i576 %r126, 384
%r150 = trunc i576 %r149 to i64
%r151 = and i64 %r148, %r150
%r152 = lshr i576 %r126, 448
%r153 = trunc i576 %r152 to i64
%r154 = and i64 %r151, %r153
%r156 = icmp eq i64 %r154, -1
br i1%r156, label %zero, label %nonzero
zero:
store i64 0, i64* %r1
%r160 = getelementptr i64, i64* %r1, i32 1
store i64 0, i64* %r160
%r163 = getelementptr i64, i64* %r1, i32 2
store i64 0, i64* %r163
%r166 = getelementptr i64, i64* %r1, i32 3
store i64 0, i64* %r166
%r169 = getelementptr i64, i64* %r1, i32 4
store i64 0, i64* %r169
%r172 = getelementptr i64, i64* %r1, i32 5
store i64 0, i64* %r172
%r175 = getelementptr i64, i64* %r1, i32 6
store i64 0, i64* %r175
%r178 = getelementptr i64, i64* %r1, i32 7
store i64 0, i64* %r178
%r181 = getelementptr i64, i64* %r1, i32 8
store i64 0, i64* %r181
ret void
nonzero:
%r182 = trunc i576 %r126 to i64
%r184 = getelementptr i64, i64* %r1, i32 0
store i64 %r182, i64* %r184
%r185 = lshr i576 %r126, 64
%r186 = trunc i576 %r185 to i64
%r188 = getelementptr i64, i64* %r1, i32 1
store i64 %r186, i64* %r188
%r189 = lshr i576 %r185, 64
%r190 = trunc i576 %r189 to i64
%r192 = getelementptr i64, i64* %r1, i32 2
store i64 %r190, i64* %r192
%r193 = lshr i576 %r189, 64
%r194 = trunc i576 %r193 to i64
%r196 = getelementptr i64, i64* %r1, i32 3
store i64 %r194, i64* %r196
%r197 = lshr i576 %r193, 64
%r198 = trunc i576 %r197 to i64
%r200 = getelementptr i64, i64* %r1, i32 4
store i64 %r198, i64* %r200
%r201 = lshr i576 %r197, 64
%r202 = trunc i576 %r201 to i64
%r204 = getelementptr i64, i64* %r1, i32 5
store i64 %r202, i64* %r204
%r205 = lshr i576 %r201, 64
%r206 = trunc i576 %r205 to i64
%r208 = getelementptr i64, i64* %r1, i32 6
store i64 %r206, i64* %r208
%r209 = lshr i576 %r205, 64
%r210 = trunc i576 %r209 to i64
%r212 = getelementptr i64, i64* %r1, i32 7
store i64 %r210, i64* %r212
%r213 = lshr i576 %r209, 64
%r214 = trunc i576 %r213 to i64
%r216 = getelementptr i64, i64* %r1, i32 8
store i64 %r214, i64* %r216
ret void
}
define private i128 @mulPv64x64(i64* noalias  %r2, i64 %r3)
{
%r5 = call i128 @mulPos64x64(i64* %r2, i64 %r3, i64 0)
%r6 = trunc i128 %r5 to i64
%r7 = call i64 @extractHigh64(i128 %r5)
%r8 = zext i64 %r6 to i128
%r9 = zext i64 %r7 to i128
%r10 = shl i128 %r9, 64
%r11 = add i128 %r8, %r10
ret i128 %r11
}
define void @mcl_fp_mulUnitPre1L(i64* noalias  %r1, i64* noalias  %r2, i64 %r3)
{
%r4 = call i128 @mulPv64x64(i64* %r2, i64 %r3)
%r5 = trunc i128 %r4 to i64
%r7 = getelementptr i64, i64* %r1, i32 0
store i64 %r5, i64* %r7
%r8 = lshr i128 %r4, 64
%r9 = trunc i128 %r8 to i64
%r11 = getelementptr i64, i64* %r1, i32 1
store i64 %r9, i64* %r11
ret void
}
define void @mcl_fpDbl_mulPre1L(i64* noalias  %r1, i64* noalias  %r2, i64* noalias  %r3)
{
%r4 = load i64, i64* %r2
%r5 = load i64, i64* %r3
%r6 = zext i64 %r4 to i128
%r7 = zext i64 %r5 to i128
%r8 = mul i128 %r6, %r7
%r9 = trunc i128 %r8 to i64
%r11 = getelementptr i64, i64* %r1, i32 0
store i64 %r9, i64* %r11
%r12 = lshr i128 %r8, 64
%r13 = trunc i128 %r12 to i64
%r15 = getelementptr i64, i64* %r1, i32 1
store i64 %r13, i64* %r15
ret void
}
define void @mcl_fpDbl_sqrPre1L(i64* noalias  %r1, i64* noalias  %r2)
{
%r3 = load i64, i64* %r2
%r4 = load i64, i64* %r2
%r5 = zext i64 %r3 to i128
%r6 = zext i64 %r4 to i128
%r7 = mul i128 %r5, %r6
%r8 = trunc i128 %r7 to i64
%r10 = getelementptr i64, i64* %r1, i32 0
store i64 %r8, i64* %r10
%r11 = lshr i128 %r7, 64
%r12 = trunc i128 %r11 to i64
%r14 = getelementptr i64, i64* %r1, i32 1
store i64 %r12, i64* %r14
ret void
}
define void @mcl_fp_mont1L(i64* %r1, i64* %r2, i64* %r3, i64* %r4)
{
%r6 = getelementptr i64, i64* %r4, i32 -1
%r7 = load i64, i64* %r6
%r9 = getelementptr i64, i64* %r3, i32 0
%r10 = load i64, i64* %r9
%r11 = call i128 @mulPv64x64(i64* %r2, i64 %r10)
%r12 = zext i128 %r11 to i192
%r13 = trunc i128 %r11 to i64
%r14 = mul i64 %r13, %r7
%r15 = call i128 @mulPv64x64(i64* %r4, i64 %r14)
%r16 = zext i128 %r15 to i192
%r17 = add i192 %r12, %r16
%r18 = lshr i192 %r17, 64
%r19 = trunc i192 %r18 to i128
%r20 = load i64, i64* %r4
%r21 = zext i64 %r20 to i128
%r22 = sub i128 %r19, %r21
%r23 = lshr i128 %r22, 64
%r24 = trunc i128 %r23 to i1
%r25 = select i1 %r24, i128 %r19, i128 %r22
%r26 = trunc i128 %r25 to i64
store i64 %r26, i64* %r1
ret void
}
define void @mcl_fp_montNF1L(i64* %r1, i64* %r2, i64* %r3, i64* %r4)
{
%r6 = getelementptr i64, i64* %r4, i32 -1
%r7 = load i64, i64* %r6
%r8 = load i64, i64* %r3
%r9 = call i128 @mulPv64x64(i64* %r2, i64 %r8)
%r10 = trunc i128 %r9 to i64
%r11 = mul i64 %r10, %r7
%r12 = call i128 @mulPv64x64(i64* %r4, i64 %r11)
%r13 = add i128 %r9, %r12
%r14 = lshr i128 %r13, 64
%r15 = trunc i128 %r14 to i64
%r16 = load i64, i64* %r4
%r17 = sub i64 %r15, %r16
%r18 = lshr i64 %r17, 63
%r19 = trunc i64 %r18 to i1
%r20 = select i1 %r19, i64 %r15, i64 %r17
store i64 %r20, i64* %r1
ret void
}
define void @mcl_fp_montRed1L(i64* noalias  %r1, i64* noalias  %r2, i64* noalias  %r3)
{
%r5 = getelementptr i64, i64* %r3, i32 -1
%r6 = load i64, i64* %r5
%r7 = load i64, i64* %r3
%r8 = load i64, i64* %r2
%r9 = zext i64 %r8 to i128
%r11 = getelementptr i64, i64* %r2, i32 1
%r12 = load i64, i64* %r11
%r13 = zext i64 %r12 to i128
%r14 = shl i128 %r13, 64
%r15 = or i128 %r9, %r14
%r16 = zext i128 %r15 to i192
%r17 = trunc i192 %r16 to i64
%r18 = mul i64 %r17, %r6
%r19 = call i128 @mulPv64x64(i64* %r3, i64 %r18)
%r20 = zext i128 %r19 to i192
%r21 = add i192 %r16, %r20
%r22 = lshr i192 %r21, 64
%r23 = trunc i192 %r22 to i128
%r24 = zext i64 %r7 to i128
%r25 = sub i128 %r23, %r24
%r26 = lshr i128 %r25, 64
%r27 = trunc i128 %r26 to i1
%r28 = select i1 %r27, i128 %r23, i128 %r25
%r29 = trunc i128 %r28 to i64
store i64 %r29, i64* %r1
ret void
}
define i64 @mcl_fp_addPre1L(i64* noalias  %r2, i64* noalias  %r3, i64* noalias  %r4)
{
%r5 = load i64, i64* %r3
%r6 = zext i64 %r5 to i128
%r7 = load i64, i64* %r4
%r8 = zext i64 %r7 to i128
%r9 = add i128 %r6, %r8
%r10 = trunc i128 %r9 to i64
store i64 %r10, i64* %r2
%r11 = lshr i128 %r9, 64
%r12 = trunc i128 %r11 to i64
ret i64 %r12
}
define i64 @mcl_fp_subPre1L(i64* noalias  %r2, i64* noalias  %r3, i64* noalias  %r4)
{
%r5 = load i64, i64* %r3
%r6 = zext i64 %r5 to i128
%r7 = load i64, i64* %r4
%r8 = zext i64 %r7 to i128
%r9 = sub i128 %r6, %r8
%r10 = trunc i128 %r9 to i64
store i64 %r10, i64* %r2
%r11 = lshr i128 %r9, 64
%r12 = trunc i128 %r11 to i64
%r14 = and i64 %r12, 1
ret i64 %r14
}
define void @mcl_fp_shr1_1L(i64* noalias  %r1, i64* noalias  %r2)
{
%r3 = load i64, i64* %r2
%r4 = lshr i64 %r3, 1
store i64 %r4, i64* %r1
ret void
}
define void @mcl_fp_add1L(i64* noalias  %r1, i64* noalias  %r2, i64* noalias  %r3, i64* noalias  %r4)
{
%r5 = load i64, i64* %r2
%r6 = load i64, i64* %r3
%r7 = zext i64 %r5 to i128
%r8 = zext i64 %r6 to i128
%r9 = add i128 %r7, %r8
%r10 = trunc i128 %r9 to i64
store i64 %r10, i64* %r1
%r11 = load i64, i64* %r4
%r12 = zext i64 %r11 to i128
%r13 = sub i128 %r9, %r12
%r14 = lshr i128 %r13, 64
%r15 = trunc i128 %r14 to i1
br i1%r15, label %carry, label %nocarry
nocarry:
%r16 = trunc i128 %r13 to i64
store i64 %r16, i64* %r1
ret void
carry:
ret void
}
define void @mcl_fp_addNF1L(i64* noalias  %r1, i64* noalias  %r2, i64* noalias  %r3, i64* noalias  %r4)
{
%r5 = load i64, i64* %r2
%r6 = load i64, i64* %r3
%r7 = add i64 %r5, %r6
%r8 = load i64, i64* %r4
%r9 = sub i64 %r7, %r8
%r10 = lshr i64 %r9, 63
%r11 = trunc i64 %r10 to i1
%r12 = select i1 %r11, i64 %r7, i64 %r9
store i64 %r12, i64* %r1
ret void
}
define void @mcl_fp_sub1L(i64* noalias  %r1, i64* noalias  %r2, i64* noalias  %r3, i64* noalias  %r4)
{
%r5 = load i64, i64* %r2
%r6 = load i64, i64* %r3
%r7 = zext i64 %r5 to i128
%r8 = zext i64 %r6 to i128
%r9 = sub i128 %r7, %r8
%r10 = trunc i128 %r9 to i64
%r11 = lshr i128 %r9, 64
%r12 = trunc i128 %r11 to i1
store i64 %r10, i64* %r1
br i1%r12, label %carry, label %nocarry
nocarry:
ret void
carry:
%r13 = load i64, i64* %r4
%r14 = add i64 %r10, %r13
store i64 %r14, i64* %r1
ret void
}
define void @mcl_fp_subNF1L(i64* noalias  %r1, i64* noalias  %r2, i64* noalias  %r3, i64* noalias  %r4)
{
%r5 = load i64, i64* %r2
%r6 = load i64, i64* %r3
%r7 = sub i64 %r5, %r6
%r8 = lshr i64 %r7, 63
%r9 = trunc i64 %r8 to i1
%r10 = load i64, i64* %r4
%r12 = select i1 %r9, i64 %r10, i64 0
%r13 = add i64 %r7, %r12
store i64 %r13, i64* %r1
ret void
}
define void @mcl_fpDbl_add1L(i64* noalias  %r1, i64* noalias  %r2, i64* noalias  %r3, i64* noalias  %r4)
{
%r5 = load i64, i64* %r2
%r6 = zext i64 %r5 to i128
%r8 = getelementptr i64, i64* %r2, i32 1
%r9 = load i64, i64* %r8
%r10 = zext i64 %r9 to i128
%r11 = shl i128 %r10, 64
%r12 = or i128 %r6, %r11
%r13 = load i64, i64* %r3
%r14 = zext i64 %r13 to i128
%r16 = getelementptr i64, i64* %r3, i32 1
%r17 = load i64, i64* %r16
%r18 = zext i64 %r17 to i128
%r19 = shl i128 %r18, 64
%r20 = or i128 %r14, %r19
%r21 = zext i128 %r12 to i192
%r22 = zext i128 %r20 to i192
%r23 = add i192 %r21, %r22
%r24 = trunc i192 %r23 to i64
store i64 %r24, i64* %r1
%r25 = lshr i192 %r23, 64
%r26 = trunc i192 %r25 to i128
%r27 = load i64, i64* %r4
%r28 = zext i64 %r27 to i128
%r29 = sub i128 %r26, %r28
%r30 = lshr i128 %r29, 64
%r31 = trunc i128 %r30 to i1
%r32 = select i1 %r31, i128 %r26, i128 %r29
%r33 = trunc i128 %r32 to i64
%r35 = getelementptr i64, i64* %r1, i32 1
store i64 %r33, i64* %r35
ret void
}
define void @mcl_fpDbl_sub1L(i64* noalias  %r1, i64* noalias  %r2, i64* noalias  %r3, i64* noalias  %r4)
{
%r5 = load i64, i64* %r2
%r6 = zext i64 %r5 to i128
%r8 = getelementptr i64, i64* %r2, i32 1
%r9 = load i64, i64* %r8
%r10 = zext i64 %r9 to i128
%r11 = shl i128 %r10, 64
%r12 = or i128 %r6, %r11
%r13 = load i64, i64* %r3
%r14 = zext i64 %r13 to i128
%r16 = getelementptr i64, i64* %r3, i32 1
%r17 = load i64, i64* %r16
%r18 = zext i64 %r17 to i128
%r19 = shl i128 %r18, 64
%r20 = or i128 %r14, %r19
%r21 = zext i128 %r12 to i192
%r22 = zext i128 %r20 to i192
%r23 = sub i192 %r21, %r22
%r24 = trunc i192 %r23 to i64
store i64 %r24, i64* %r1
%r25 = lshr i192 %r23, 64
%r26 = trunc i192 %r25 to i64
%r27 = lshr i192 %r23, 128
%r28 = trunc i192 %r27 to i1
%r29 = load i64, i64* %r4
%r31 = select i1 %r28, i64 %r29, i64 0
%r32 = add i64 %r26, %r31
%r34 = getelementptr i64, i64* %r1, i32 1
store i64 %r32, i64* %r34
ret void
}
define private i192 @mulPv128x64(i64* noalias  %r2, i64 %r3)
{
%r5 = call i128 @mulPos64x64(i64* %r2, i64 %r3, i64 0)
%r6 = trunc i128 %r5 to i64
%r7 = call i64 @extractHigh64(i128 %r5)
%r9 = call i128 @mulPos64x64(i64* %r2, i64 %r3, i64 1)
%r10 = trunc i128 %r9 to i64
%r11 = call i64 @extractHigh64(i128 %r9)
%r12 = zext i64 %r6 to i128
%r13 = zext i64 %r10 to i128
%r14 = shl i128 %r13, 64
%r15 = or i128 %r12, %r14
%r16 = zext i64 %r7 to i128
%r17 = zext i64 %r11 to i128
%r18 = shl i128 %r17, 64
%r19 = or i128 %r16, %r18
%r20 = zext i128 %r15 to i192
%r21 = zext i128 %r19 to i192
%r22 = shl i192 %r21, 64
%r23 = add i192 %r20, %r22
ret i192 %r23
}
define void @mcl_fp_mulUnitPre2L(i64* noalias  %r1, i64* noalias  %r2, i64 %r3)
{
%r4 = call i192 @mulPv128x64(i64* %r2, i64 %r3)
%r5 = trunc i192 %r4 to i64
%r7 = getelementptr i64, i64* %r1, i32 0
store i64 %r5, i64* %r7
%r8 = lshr i192 %r4, 64
%r9 = trunc i192 %r8 to i64
%r11 = getelementptr i64, i64* %r1, i32 1
store i64 %r9, i64* %r11
%r12 = lshr i192 %r8, 64
%r13 = trunc i192 %r12 to i64
%r15 = getelementptr i64, i64* %r1, i32 2
store i64 %r13, i64* %r15
ret void
}
define void @mcl_fpDbl_mulPre2L(i64* noalias  %r1, i64* noalias  %r2, i64* noalias  %r3)
{
%r4 = load i64, i64* %r3
%r5 = call i192 @mulPv128x64(i64* %r2, i64 %r4)
%r6 = trunc i192 %r5 to i64
store i64 %r6, i64* %r1
%r7 = lshr i192 %r5, 64
%r9 = getelementptr i64, i64* %r3, i32 1
%r10 = load i64, i64* %r9
%r11 = call i192 @mulPv128x64(i64* %r2, i64 %r10)
%r12 = add i192 %r7, %r11
%r14 = getelementptr i64, i64* %r1, i32 1
%r15 = trunc i192 %r12 to i64
%r17 = getelementptr i64, i64* %r14, i32 0
store i64 %r15, i64* %r17
%r18 = lshr i192 %r12, 64
%r19 = trunc i192 %r18 to i64
%r21 = getelementptr i64, i64* %r14, i32 1
store i64 %r19, i64* %r21
%r22 = lshr i192 %r18, 64
%r23 = trunc i192 %r22 to i64
%r25 = getelementptr i64, i64* %r14, i32 2
store i64 %r23, i64* %r25
ret void
}
define void @mcl_fpDbl_sqrPre2L(i64* noalias  %r1, i64* noalias  %r2)
{
%r3 = load i64, i64* %r2
%r4 = call i192 @mulPv128x64(i64* %r2, i64 %r3)
%r5 = trunc i192 %r4 to i64
store i64 %r5, i64* %r1
%r6 = lshr i192 %r4, 64
%r8 = getelementptr i64, i64* %r2, i32 1
%r9 = load i64, i64* %r8
%r10 = call i192 @mulPv128x64(i64* %r2, i64 %r9)
%r11 = add i192 %r6, %r10
%r13 = getelementptr i64, i64* %r1, i32 1
%r14 = trunc i192 %r11 to i64
%r16 = getelementptr i64, i64* %r13, i32 0
store i64 %r14, i64* %r16
%r17 = lshr i192 %r11, 64
%r18 = trunc i192 %r17 to i64
%r20 = getelementptr i64, i64* %r13, i32 1
store i64 %r18, i64* %r20
%r21 = lshr i192 %r17, 64
%r22 = trunc i192 %r21 to i64
%r24 = getelementptr i64, i64* %r13, i32 2
store i64 %r22, i64* %r24
ret void
}
define void @mcl_fp_mont2L(i64* %r1, i64* %r2, i64* %r3, i64* %r4)
{
%r6 = getelementptr i64, i64* %r4, i32 -1
%r7 = load i64, i64* %r6
%r9 = getelementptr i64, i64* %r3, i32 0
%r10 = load i64, i64* %r9
%r11 = call i192 @mulPv128x64(i64* %r2, i64 %r10)
%r12 = zext i192 %r11 to i256
%r13 = trunc i192 %r11 to i64
%r14 = mul i64 %r13, %r7
%r15 = call i192 @mulPv128x64(i64* %r4, i64 %r14)
%r16 = zext i192 %r15 to i256
%r17 = add i256 %r12, %r16
%r18 = lshr i256 %r17, 64
%r20 = getelementptr i64, i64* %r3, i32 1
%r21 = load i64, i64* %r20
%r22 = call i192 @mulPv128x64(i64* %r2, i64 %r21)
%r23 = zext i192 %r22 to i256
%r24 = add i256 %r18, %r23
%r25 = trunc i256 %r24 to i64
%r26 = mul i64 %r25, %r7
%r27 = call i192 @mulPv128x64(i64* %r4, i64 %r26)
%r28 = zext i192 %r27 to i256
%r29 = add i256 %r24, %r28
%r30 = lshr i256 %r29, 64
%r31 = trunc i256 %r30 to i192
%r32 = load i64, i64* %r4
%r33 = zext i64 %r32 to i128
%r35 = getelementptr i64, i64* %r4, i32 1
%r36 = load i64, i64* %r35
%r37 = zext i64 %r36 to i128
%r38 = shl i128 %r37, 64
%r39 = or i128 %r33, %r38
%r40 = zext i128 %r39 to i192
%r41 = sub i192 %r31, %r40
%r42 = lshr i192 %r41, 128
%r43 = trunc i192 %r42 to i1
%r44 = select i1 %r43, i192 %r31, i192 %r41
%r45 = trunc i192 %r44 to i128
%r46 = trunc i128 %r45 to i64
%r48 = getelementptr i64, i64* %r1, i32 0
store i64 %r46, i64* %r48
%r49 = lshr i128 %r45, 64
%r50 = trunc i128 %r49 to i64
%r52 = getelementptr i64, i64* %r1, i32 1
store i64 %r50, i64* %r52
ret void
}
define void @mcl_fp_montNF2L(i64* %r1, i64* %r2, i64* %r3, i64* %r4)
{
%r6 = getelementptr i64, i64* %r4, i32 -1
%r7 = load i64, i64* %r6
%r8 = load i64, i64* %r3
%r9 = call i192 @mulPv128x64(i64* %r2, i64 %r8)
%r10 = trunc i192 %r9 to i64
%r11 = mul i64 %r10, %r7
%r12 = call i192 @mulPv128x64(i64* %r4, i64 %r11)
%r13 = add i192 %r9, %r12
%r14 = lshr i192 %r13, 64
%r16 = getelementptr i64, i64* %r3, i32 1
%r17 = load i64, i64* %r16
%r18 = call i192 @mulPv128x64(i64* %r2, i64 %r17)
%r19 = add i192 %r14, %r18
%r20 = trunc i192 %r19 to i64
%r21 = mul i64 %r20, %r7
%r22 = call i192 @mulPv128x64(i64* %r4, i64 %r21)
%r23 = add i192 %r19, %r22
%r24 = lshr i192 %r23, 64
%r25 = trunc i192 %r24 to i128
%r26 = load i64, i64* %r4
%r27 = zext i64 %r26 to i128
%r29 = getelementptr i64, i64* %r4, i32 1
%r30 = load i64, i64* %r29
%r31 = zext i64 %r30 to i128
%r32 = shl i128 %r31, 64
%r33 = or i128 %r27, %r32
%r34 = sub i128 %r25, %r33
%r35 = lshr i128 %r34, 127
%r36 = trunc i128 %r35 to i1
%r37 = select i1 %r36, i128 %r25, i128 %r34
%r38 = trunc i128 %r37 to i64
%r40 = getelementptr i64, i64* %r1, i32 0
store i64 %r38, i64* %r40
%r41 = lshr i128 %r37, 64
%r42 = trunc i128 %r41 to i64
%r44 = getelementptr i64, i64* %r1, i32 1
store i64 %r42, i64* %r44
ret void
}
define void @mcl_fp_montRed2L(i64* noalias  %r1, i64* noalias  %r2, i64* noalias  %r3)
{
%r5 = getelementptr i64, i64* %r3, i32 -1
%r6 = load i64, i64* %r5
%r7 = load i64, i64* %r3
%r8 = zext i64 %r7 to i128
%r10 = getelementptr i64, i64* %r3, i32 1
%r11 = load i64, i64* %r10
%r12 = zext i64 %r11 to i128
%r13 = shl i128 %r12, 64
%r14 = or i128 %r8, %r13
%r15 = load i64, i64* %r2
%r16 = zext i64 %r15 to i128
%r18 = getelementptr i64, i64* %r2, i32 1
%r19 = load i64, i64* %r18
%r20 = zext i64 %r19 to i128
%r21 = shl i128 %r20, 64
%r22 = or i128 %r16, %r21
%r23 = zext i128 %r22 to i192
%r25 = getelementptr i64, i64* %r2, i32 2
%r26 = load i64, i64* %r25
%r27 = zext i64 %r26 to i192
%r28 = shl i192 %r27, 128
%r29 = or i192 %r23, %r28
%r30 = zext i192 %r29 to i256
%r32 = getelementptr i64, i64* %r2, i32 3
%r33 = load i64, i64* %r32
%r34 = zext i64 %r33 to i256
%r35 = shl i256 %r34, 192
%r36 = or i256 %r30, %r35
%r37 = zext i256 %r36 to i320
%r38 = trunc i320 %r37 to i64
%r39 = mul i64 %r38, %r6
%r40 = call i192 @mulPv128x64(i64* %r3, i64 %r39)
%r41 = zext i192 %r40 to i320
%r42 = add i320 %r37, %r41
%r43 = lshr i320 %r42, 64
%r44 = trunc i320 %r43 to i256
%r45 = trunc i256 %r44 to i64
%r46 = mul i64 %r45, %r6
%r47 = call i192 @mulPv128x64(i64* %r3, i64 %r46)
%r48 = zext i192 %r47 to i256
%r49 = add i256 %r44, %r48
%r50 = lshr i256 %r49, 64
%r51 = trunc i256 %r50 to i192
%r52 = zext i128 %r14 to i192
%r53 = sub i192 %r51, %r52
%r54 = lshr i192 %r53, 128
%r55 = trunc i192 %r54 to i1
%r56 = select i1 %r55, i192 %r51, i192 %r53
%r57 = trunc i192 %r56 to i128
%r58 = trunc i128 %r57 to i64
%r60 = getelementptr i64, i64* %r1, i32 0
store i64 %r58, i64* %r60
%r61 = lshr i128 %r57, 64
%r62 = trunc i128 %r61 to i64
%r64 = getelementptr i64, i64* %r1, i32 1
store i64 %r62, i64* %r64
ret void
}
define i64 @mcl_fp_addPre2L(i64* noalias  %r2, i64* noalias  %r3, i64* noalias  %r4)
{
%r5 = load i64, i64* %r3
%r6 = zext i64 %r5 to i128
%r8 = getelementptr i64, i64* %r3, i32 1
%r9 = load i64, i64* %r8
%r10 = zext i64 %r9 to i128
%r11 = shl i128 %r10, 64
%r12 = or i128 %r6, %r11
%r13 = zext i128 %r12 to i192
%r14 = load i64, i64* %r4
%r15 = zext i64 %r14 to i128
%r17 = getelementptr i64, i64* %r4, i32 1
%r18 = load i64, i64* %r17
%r19 = zext i64 %r18 to i128
%r20 = shl i128 %r19, 64
%r21 = or i128 %r15, %r20
%r22 = zext i128 %r21 to i192
%r23 = add i192 %r13, %r22
%r24 = trunc i192 %r23 to i128
%r25 = trunc i128 %r24 to i64
%r27 = getelementptr i64, i64* %r2, i32 0
store i64 %r25, i64* %r27
%r28 = lshr i128 %r24, 64
%r29 = trunc i128 %r28 to i64
%r31 = getelementptr i64, i64* %r2, i32 1
store i64 %r29, i64* %r31
%r32 = lshr i192 %r23, 128
%r33 = trunc i192 %r32 to i64
ret i64 %r33
}
define i64 @mcl_fp_subPre2L(i64* noalias  %r2, i64* noalias  %r3, i64* noalias  %r4)
{
%r5 = load i64, i64* %r3
%r6 = zext i64 %r5 to i128
%r8 = getelementptr i64, i64* %r3, i32 1
%r9 = load i64, i64* %r8
%r10 = zext i64 %r9 to i128
%r11 = shl i128 %r10, 64
%r12 = or i128 %r6, %r11
%r13 = zext i128 %r12 to i192
%r14 = load i64, i64* %r4
%r15 = zext i64 %r14 to i128
%r17 = getelementptr i64, i64* %r4, i32 1
%r18 = load i64, i64* %r17
%r19 = zext i64 %r18 to i128
%r20 = shl i128 %r19, 64
%r21 = or i128 %r15, %r20
%r22 = zext i128 %r21 to i192
%r23 = sub i192 %r13, %r22
%r24 = trunc i192 %r23 to i128
%r25 = trunc i128 %r24 to i64
%r27 = getelementptr i64, i64* %r2, i32 0
store i64 %r25, i64* %r27
%r28 = lshr i128 %r24, 64
%r29 = trunc i128 %r28 to i64
%r31 = getelementptr i64, i64* %r2, i32 1
store i64 %r29, i64* %r31
%r32 = lshr i192 %r23, 128
%r33 = trunc i192 %r32 to i64
%r35 = and i64 %r33, 1
ret i64 %r35
}
define void @mcl_fp_shr1_2L(i64* noalias  %r1, i64* noalias  %r2)
{
%r3 = load i64, i64* %r2
%r4 = zext i64 %r3 to i128
%r6 = getelementptr i64, i64* %r2, i32 1
%r7 = load i64, i64* %r6
%r8 = zext i64 %r7 to i128
%r9 = shl i128 %r8, 64
%r10 = or i128 %r4, %r9
%r11 = lshr i128 %r10, 1
%r12 = trunc i128 %r11 to i64
%r14 = getelementptr i64, i64* %r1, i32 0
store i64 %r12, i64* %r14
%r15 = lshr i128 %r11, 64
%r16 = trunc i128 %r15 to i64
%r18 = getelementptr i64, i64* %r1, i32 1
store i64 %r16, i64* %r18
ret void
}
define void @mcl_fp_add2L(i64* noalias  %r1, i64* noalias  %r2, i64* noalias  %r3, i64* noalias  %r4)
{
%r5 = load i64, i64* %r2
%r6 = zext i64 %r5 to i128
%r8 = getelementptr i64, i64* %r2, i32 1
%r9 = load i64, i64* %r8
%r10 = zext i64 %r9 to i128
%r11 = shl i128 %r10, 64
%r12 = or i128 %r6, %r11
%r13 = load i64, i64* %r3
%r14 = zext i64 %r13 to i128
%r16 = getelementptr i64, i64* %r3, i32 1
%r17 = load i64, i64* %r16
%r18 = zext i64 %r17 to i128
%r19 = shl i128 %r18, 64
%r20 = or i128 %r14, %r19
%r21 = zext i128 %r12 to i192
%r22 = zext i128 %r20 to i192
%r23 = add i192 %r21, %r22
%r24 = trunc i192 %r23 to i128
%r25 = trunc i128 %r24 to i64
%r27 = getelementptr i64, i64* %r1, i32 0
store i64 %r25, i64* %r27
%r28 = lshr i128 %r24, 64
%r29 = trunc i128 %r28 to i64
%r31 = getelementptr i64, i64* %r1, i32 1
store i64 %r29, i64* %r31
%r32 = load i64, i64* %r4
%r33 = zext i64 %r32 to i128
%r35 = getelementptr i64, i64* %r4, i32 1
%r36 = load i64, i64* %r35
%r37 = zext i64 %r36 to i128
%r38 = shl i128 %r37, 64
%r39 = or i128 %r33, %r38
%r40 = zext i128 %r39 to i192
%r41 = sub i192 %r23, %r40
%r42 = lshr i192 %r41, 128
%r43 = trunc i192 %r42 to i1
br i1%r43, label %carry, label %nocarry
nocarry:
%r44 = trunc i192 %r41 to i128
%r45 = trunc i128 %r44 to i64
%r47 = getelementptr i64, i64* %r1, i32 0
store i64 %r45, i64* %r47
%r48 = lshr i128 %r44, 64
%r49 = trunc i128 %r48 to i64
%r51 = getelementptr i64, i64* %r1, i32 1
store i64 %r49, i64* %r51
ret void
carry:
ret void
}
define void @mcl_fp_addNF2L(i64* noalias  %r1, i64* noalias  %r2, i64* noalias  %r3, i64* noalias  %r4)
{
%r5 = load i64, i64* %r2
%r6 = zext i64 %r5 to i128
%r8 = getelementptr i64, i64* %r2, i32 1
%r9 = load i64, i64* %r8
%r10 = zext i64 %r9 to i128
%r11 = shl i128 %r10, 64
%r12 = or i128 %r6, %r11
%r13 = load i64, i64* %r3
%r14 = zext i64 %r13 to i128
%r16 = getelementptr i64, i64* %r3, i32 1
%r17 = load i64, i64* %r16
%r18 = zext i64 %r17 to i128
%r19 = shl i128 %r18, 64
%r20 = or i128 %r14, %r19
%r21 = add i128 %r12, %r20
%r22 = load i64, i64* %r4
%r23 = zext i64 %r22 to i128
%r25 = getelementptr i64, i64* %r4, i32 1
%r26 = load i64, i64* %r25
%r27 = zext i64 %r26 to i128
%r28 = shl i128 %r27, 64
%r29 = or i128 %r23, %r28
%r30 = sub i128 %r21, %r29
%r31 = lshr i128 %r30, 127
%r32 = trunc i128 %r31 to i1
%r33 = select i1 %r32, i128 %r21, i128 %r30
%r34 = trunc i128 %r33 to i64
%r36 = getelementptr i64, i64* %r1, i32 0
store i64 %r34, i64* %r36
%r37 = lshr i128 %r33, 64
%r38 = trunc i128 %r37 to i64
%r40 = getelementptr i64, i64* %r1, i32 1
store i64 %r38, i64* %r40
ret void
}
define void @mcl_fp_sub2L(i64* noalias  %r1, i64* noalias  %r2, i64* noalias  %r3, i64* noalias  %r4)
{
%r5 = load i64, i64* %r2
%r6 = zext i64 %r5 to i128
%r8 = getelementptr i64, i64* %r2, i32 1
%r9 = load i64, i64* %r8
%r10 = zext i64 %r9 to i128
%r11 = shl i128 %r10, 64
%r12 = or i128 %r6, %r11
%r13 = load i64, i64* %r3
%r14 = zext i64 %r13 to i128
%r16 = getelementptr i64, i64* %r3, i32 1
%r17 = load i64, i64* %r16
%r18 = zext i64 %r17 to i128
%r19 = shl i128 %r18, 64
%r20 = or i128 %r14, %r19
%r21 = zext i128 %r12 to i192
%r22 = zext i128 %r20 to i192
%r23 = sub i192 %r21, %r22
%r24 = trunc i192 %r23 to i128
%r25 = lshr i192 %r23, 128
%r26 = trunc i192 %r25 to i1
%r27 = trunc i128 %r24 to i64
%r29 = getelementptr i64, i64* %r1, i32 0
store i64 %r27, i64* %r29
%r30 = lshr i128 %r24, 64
%r31 = trunc i128 %r30 to i64
%r33 = getelementptr i64, i64* %r1, i32 1
store i64 %r31, i64* %r33
br i1%r26, label %carry, label %nocarry
nocarry:
ret void
carry:
%r34 = load i64, i64* %r4
%r35 = zext i64 %r34 to i128
%r37 = getelementptr i64, i64* %r4, i32 1
%r38 = load i64, i64* %r37
%r39 = zext i64 %r38 to i128
%r40 = shl i128 %r39, 64
%r41 = or i128 %r35, %r40
%r42 = add i128 %r24, %r41
%r43 = trunc i128 %r42 to i64
%r45 = getelementptr i64, i64* %r1, i32 0
store i64 %r43, i64* %r45
%r46 = lshr i128 %r42, 64
%r47 = trunc i128 %r46 to i64
%r49 = getelementptr i64, i64* %r1, i32 1
store i64 %r47, i64* %r49
ret void
}
define void @mcl_fp_subNF2L(i64* noalias  %r1, i64* noalias  %r2, i64* noalias  %r3, i64* noalias  %r4)
{
%r5 = load i64, i64* %r2
%r6 = zext i64 %r5 to i128
%r8 = getelementptr i64, i64* %r2, i32 1
%r9 = load i64, i64* %r8
%r10 = zext i64 %r9 to i128
%r11 = shl i128 %r10, 64
%r12 = or i128 %r6, %r11
%r13 = load i64, i64* %r3
%r14 = zext i64 %r13 to i128
%r16 = getelementptr i64, i64* %r3, i32 1
%r17 = load i64, i64* %r16
%r18 = zext i64 %r17 to i128
%r19 = shl i128 %r18, 64
%r20 = or i128 %r14, %r19
%r21 = sub i128 %r12, %r20
%r22 = lshr i128 %r21, 127
%r23 = trunc i128 %r22 to i1
%r24 = load i64, i64* %r4
%r25 = zext i64 %r24 to i128
%r27 = getelementptr i64, i64* %r4, i32 1
%r28 = load i64, i64* %r27
%r29 = zext i64 %r28 to i128
%r30 = shl i128 %r29, 64
%r31 = or i128 %r25, %r30
%r33 = select i1 %r23, i128 %r31, i128 0
%r34 = add i128 %r21, %r33
%r35 = trunc i128 %r34 to i64
%r37 = getelementptr i64, i64* %r1, i32 0
store i64 %r35, i64* %r37
%r38 = lshr i128 %r34, 64
%r39 = trunc i128 %r38 to i64
%r41 = getelementptr i64, i64* %r1, i32 1
store i64 %r39, i64* %r41
ret void
}
define void @mcl_fpDbl_add2L(i64* noalias  %r1, i64* noalias  %r2, i64* noalias  %r3, i64* noalias  %r4)
{
%r5 = load i64, i64* %r2
%r6 = zext i64 %r5 to i128
%r8 = getelementptr i64, i64* %r2, i32 1
%r9 = load i64, i64* %r8
%r10 = zext i64 %r9 to i128
%r11 = shl i128 %r10, 64
%r12 = or i128 %r6, %r11
%r13 = zext i128 %r12 to i192
%r15 = getelementptr i64, i64* %r2, i32 2
%r16 = load i64, i64* %r15
%r17 = zext i64 %r16 to i192
%r18 = shl i192 %r17, 128
%r19 = or i192 %r13, %r18
%r20 = zext i192 %r19 to i256
%r22 = getelementptr i64, i64* %r2, i32 3
%r23 = load i64, i64* %r22
%r24 = zext i64 %r23 to i256
%r25 = shl i256 %r24, 192
%r26 = or i256 %r20, %r25
%r27 = load i64, i64* %r3
%r28 = zext i64 %r27 to i128
%r30 = getelementptr i64, i64* %r3, i32 1
%r31 = load i64, i64* %r30
%r32 = zext i64 %r31 to i128
%r33 = shl i128 %r32, 64
%r34 = or i128 %r28, %r33
%r35 = zext i128 %r34 to i192
%r37 = getelementptr i64, i64* %r3, i32 2
%r38 = load i64, i64* %r37
%r39 = zext i64 %r38 to i192
%r40 = shl i192 %r39, 128
%r41 = or i192 %r35, %r40
%r42 = zext i192 %r41 to i256
%r44 = getelementptr i64, i64* %r3, i32 3
%r45 = load i64, i64* %r44
%r46 = zext i64 %r45 to i256
%r47 = shl i256 %r46, 192
%r48 = or i256 %r42, %r47
%r49 = zext i256 %r26 to i320
%r50 = zext i256 %r48 to i320
%r51 = add i320 %r49, %r50
%r52 = trunc i320 %r51 to i128
%r53 = trunc i128 %r52 to i64
%r55 = getelementptr i64, i64* %r1, i32 0
store i64 %r53, i64* %r55
%r56 = lshr i128 %r52, 64
%r57 = trunc i128 %r56 to i64
%r59 = getelementptr i64, i64* %r1, i32 1
store i64 %r57, i64* %r59
%r60 = lshr i320 %r51, 128
%r61 = trunc i320 %r60 to i192
%r62 = load i64, i64* %r4
%r63 = zext i64 %r62 to i128
%r65 = getelementptr i64, i64* %r4, i32 1
%r66 = load i64, i64* %r65
%r67 = zext i64 %r66 to i128
%r68 = shl i128 %r67, 64
%r69 = or i128 %r63, %r68
%r70 = zext i128 %r69 to i192
%r71 = sub i192 %r61, %r70
%r72 = lshr i192 %r71, 128
%r73 = trunc i192 %r72 to i1
%r74 = select i1 %r73, i192 %r61, i192 %r71
%r75 = trunc i192 %r74 to i128
%r77 = getelementptr i64, i64* %r1, i32 2
%r78 = trunc i128 %r75 to i64
%r80 = getelementptr i64, i64* %r77, i32 0
store i64 %r78, i64* %r80
%r81 = lshr i128 %r75, 64
%r82 = trunc i128 %r81 to i64
%r84 = getelementptr i64, i64* %r77, i32 1
store i64 %r82, i64* %r84
ret void
}
define void @mcl_fpDbl_sub2L(i64* noalias  %r1, i64* noalias  %r2, i64* noalias  %r3, i64* noalias  %r4)
{
%r5 = load i64, i64* %r2
%r6 = zext i64 %r5 to i128
%r8 = getelementptr i64, i64* %r2, i32 1
%r9 = load i64, i64* %r8
%r10 = zext i64 %r9 to i128
%r11 = shl i128 %r10, 64
%r12 = or i128 %r6, %r11
%r13 = zext i128 %r12 to i192
%r15 = getelementptr i64, i64* %r2, i32 2
%r16 = load i64, i64* %r15
%r17 = zext i64 %r16 to i192
%r18 = shl i192 %r17, 128
%r19 = or i192 %r13, %r18
%r20 = zext i192 %r19 to i256
%r22 = getelementptr i64, i64* %r2, i32 3
%r23 = load i64, i64* %r22
%r24 = zext i64 %r23 to i256
%r25 = shl i256 %r24, 192
%r26 = or i256 %r20, %r25
%r27 = load i64, i64* %r3
%r28 = zext i64 %r27 to i128
%r30 = getelementptr i64, i64* %r3, i32 1
%r31 = load i64, i64* %r30
%r32 = zext i64 %r31 to i128
%r33 = shl i128 %r32, 64
%r34 = or i128 %r28, %r33
%r35 = zext i128 %r34 to i192
%r37 = getelementptr i64, i64* %r3, i32 2
%r38 = load i64, i64* %r37
%r39 = zext i64 %r38 to i192
%r40 = shl i192 %r39, 128
%r41 = or i192 %r35, %r40
%r42 = zext i192 %r41 to i256
%r44 = getelementptr i64, i64* %r3, i32 3
%r45 = load i64, i64* %r44
%r46 = zext i64 %r45 to i256
%r47 = shl i256 %r46, 192
%r48 = or i256 %r42, %r47
%r49 = zext i256 %r26 to i320
%r50 = zext i256 %r48 to i320
%r51 = sub i320 %r49, %r50
%r52 = trunc i320 %r51 to i128
%r53 = trunc i128 %r52 to i64
%r55 = getelementptr i64, i64* %r1, i32 0
store i64 %r53, i64* %r55
%r56 = lshr i128 %r52, 64
%r57 = trunc i128 %r56 to i64
%r59 = getelementptr i64, i64* %r1, i32 1
store i64 %r57, i64* %r59
%r60 = lshr i320 %r51, 128
%r61 = trunc i320 %r60 to i128
%r62 = lshr i320 %r51, 256
%r63 = trunc i320 %r62 to i1
%r64 = load i64, i64* %r4
%r65 = zext i64 %r64 to i128
%r67 = getelementptr i64, i64* %r4, i32 1
%r68 = load i64, i64* %r67
%r69 = zext i64 %r68 to i128
%r70 = shl i128 %r69, 64
%r71 = or i128 %r65, %r70
%r73 = select i1 %r63, i128 %r71, i128 0
%r74 = add i128 %r61, %r73
%r76 = getelementptr i64, i64* %r1, i32 2
%r77 = trunc i128 %r74 to i64
%r79 = getelementptr i64, i64* %r76, i32 0
store i64 %r77, i64* %r79
%r80 = lshr i128 %r74, 64
%r81 = trunc i128 %r80 to i64
%r83 = getelementptr i64, i64* %r76, i32 1
store i64 %r81, i64* %r83
ret void
}
define private i256 @mulPv192x64(i64* noalias  %r2, i64 %r3)
{
%r5 = call i128 @mulPos64x64(i64* %r2, i64 %r3, i64 0)
%r6 = trunc i128 %r5 to i64
%r7 = call i64 @extractHigh64(i128 %r5)
%r9 = call i128 @mulPos64x64(i64* %r2, i64 %r3, i64 1)
%r10 = trunc i128 %r9 to i64
%r11 = call i64 @extractHigh64(i128 %r9)
%r13 = call i128 @mulPos64x64(i64* %r2, i64 %r3, i64 2)
%r14 = trunc i128 %r13 to i64
%r15 = call i64 @extractHigh64(i128 %r13)
%r16 = zext i64 %r6 to i128
%r17 = zext i64 %r10 to i128
%r18 = shl i128 %r17, 64
%r19 = or i128 %r16, %r18
%r20 = zext i128 %r19 to i192
%r21 = zext i64 %r14 to i192
%r22 = shl i192 %r21, 128
%r23 = or i192 %r20, %r22
%r24 = zext i64 %r7 to i128
%r25 = zext i64 %r11 to i128
%r26 = shl i128 %r25, 64
%r27 = or i128 %r24, %r26
%r28 = zext i128 %r27 to i192
%r29 = zext i64 %r15 to i192
%r30 = shl i192 %r29, 128
%r31 = or i192 %r28, %r30
%r32 = zext i192 %r23 to i256
%r33 = zext i192 %r31 to i256
%r34 = shl i256 %r33, 64
%r35 = add i256 %r32, %r34
ret i256 %r35
}
define void @mcl_fp_mulUnitPre3L(i64* noalias  %r1, i64* noalias  %r2, i64 %r3)
{
%r4 = call i256 @mulPv192x64(i64* %r2, i64 %r3)
%r5 = trunc i256 %r4 to i64
%r7 = getelementptr i64, i64* %r1, i32 0
store i64 %r5, i64* %r7
%r8 = lshr i256 %r4, 64
%r9 = trunc i256 %r8 to i64
%r11 = getelementptr i64, i64* %r1, i32 1
store i64 %r9, i64* %r11
%r12 = lshr i256 %r8, 64
%r13 = trunc i256 %r12 to i64
%r15 = getelementptr i64, i64* %r1, i32 2
store i64 %r13, i64* %r15
%r16 = lshr i256 %r12, 64
%r17 = trunc i256 %r16 to i64
%r19 = getelementptr i64, i64* %r1, i32 3
store i64 %r17, i64* %r19
ret void
}
define void @mcl_fpDbl_mulPre3L(i64* noalias  %r1, i64* noalias  %r2, i64* noalias  %r3)
{
%r4 = load i64, i64* %r3
%r5 = call i256 @mulPv192x64(i64* %r2, i64 %r4)
%r6 = trunc i256 %r5 to i64
store i64 %r6, i64* %r1
%r7 = lshr i256 %r5, 64
%r9 = getelementptr i64, i64* %r3, i32 1
%r10 = load i64, i64* %r9
%r11 = call i256 @mulPv192x64(i64* %r2, i64 %r10)
%r12 = add i256 %r7, %r11
%r13 = trunc i256 %r12 to i64
%r15 = getelementptr i64, i64* %r1, i32 1
store i64 %r13, i64* %r15
%r16 = lshr i256 %r12, 64
%r18 = getelementptr i64, i64* %r3, i32 2
%r19 = load i64, i64* %r18
%r20 = call i256 @mulPv192x64(i64* %r2, i64 %r19)
%r21 = add i256 %r16, %r20
%r23 = getelementptr i64, i64* %r1, i32 2
%r24 = trunc i256 %r21 to i64
%r26 = getelementptr i64, i64* %r23, i32 0
store i64 %r24, i64* %r26
%r27 = lshr i256 %r21, 64
%r28 = trunc i256 %r27 to i64
%r30 = getelementptr i64, i64* %r23, i32 1
store i64 %r28, i64* %r30
%r31 = lshr i256 %r27, 64
%r32 = trunc i256 %r31 to i64
%r34 = getelementptr i64, i64* %r23, i32 2
store i64 %r32, i64* %r34
%r35 = lshr i256 %r31, 64
%r36 = trunc i256 %r35 to i64
%r38 = getelementptr i64, i64* %r23, i32 3
store i64 %r36, i64* %r38
ret void
}
define void @mcl_fpDbl_sqrPre3L(i64* noalias  %r1, i64* noalias  %r2)
{
%r3 = load i64, i64* %r2
%r4 = call i256 @mulPv192x64(i64* %r2, i64 %r3)
%r5 = trunc i256 %r4 to i64
store i64 %r5, i64* %r1
%r6 = lshr i256 %r4, 64
%r8 = getelementptr i64, i64* %r2, i32 1
%r9 = load i64, i64* %r8
%r10 = call i256 @mulPv192x64(i64* %r2, i64 %r9)
%r11 = add i256 %r6, %r10
%r12 = trunc i256 %r11 to i64
%r14 = getelementptr i64, i64* %r1, i32 1
store i64 %r12, i64* %r14
%r15 = lshr i256 %r11, 64
%r17 = getelementptr i64, i64* %r2, i32 2
%r18 = load i64, i64* %r17
%r19 = call i256 @mulPv192x64(i64* %r2, i64 %r18)
%r20 = add i256 %r15, %r19
%r22 = getelementptr i64, i64* %r1, i32 2
%r23 = trunc i256 %r20 to i64
%r25 = getelementptr i64, i64* %r22, i32 0
store i64 %r23, i64* %r25
%r26 = lshr i256 %r20, 64
%r27 = trunc i256 %r26 to i64
%r29 = getelementptr i64, i64* %r22, i32 1
store i64 %r27, i64* %r29
%r30 = lshr i256 %r26, 64
%r31 = trunc i256 %r30 to i64
%r33 = getelementptr i64, i64* %r22, i32 2
store i64 %r31, i64* %r33
%r34 = lshr i256 %r30, 64
%r35 = trunc i256 %r34 to i64
%r37 = getelementptr i64, i64* %r22, i32 3
store i64 %r35, i64* %r37
ret void
}
define void @mcl_fp_mont3L(i64* %r1, i64* %r2, i64* %r3, i64* %r4)
{
%r6 = getelementptr i64, i64* %r4, i32 -1
%r7 = load i64, i64* %r6
%r9 = getelementptr i64, i64* %r3, i32 0
%r10 = load i64, i64* %r9
%r11 = call i256 @mulPv192x64(i64* %r2, i64 %r10)
%r12 = zext i256 %r11 to i320
%r13 = trunc i256 %r11 to i64
%r14 = mul i64 %r13, %r7
%r15 = call i256 @mulPv192x64(i64* %r4, i64 %r14)
%r16 = zext i256 %r15 to i320
%r17 = add i320 %r12, %r16
%r18 = lshr i320 %r17, 64
%r20 = getelementptr i64, i64* %r3, i32 1
%r21 = load i64, i64* %r20
%r22 = call i256 @mulPv192x64(i64* %r2, i64 %r21)
%r23 = zext i256 %r22 to i320
%r24 = add i320 %r18, %r23
%r25 = trunc i320 %r24 to i64
%r26 = mul i64 %r25, %r7
%r27 = call i256 @mulPv192x64(i64* %r4, i64 %r26)
%r28 = zext i256 %r27 to i320
%r29 = add i320 %r24, %r28
%r30 = lshr i320 %r29, 64
%r32 = getelementptr i64, i64* %r3, i32 2
%r33 = load i64, i64* %r32
%r34 = call i256 @mulPv192x64(i64* %r2, i64 %r33)
%r35 = zext i256 %r34 to i320
%r36 = add i320 %r30, %r35
%r37 = trunc i320 %r36 to i64
%r38 = mul i64 %r37, %r7
%r39 = call i256 @mulPv192x64(i64* %r4, i64 %r38)
%r40 = zext i256 %r39 to i320
%r41 = add i320 %r36, %r40
%r42 = lshr i320 %r41, 64
%r43 = trunc i320 %r42 to i256
%r44 = load i64, i64* %r4
%r45 = zext i64 %r44 to i128
%r47 = getelementptr i64, i64* %r4, i32 1
%r48 = load i64, i64* %r47
%r49 = zext i64 %r48 to i128
%r50 = shl i128 %r49, 64
%r51 = or i128 %r45, %r50
%r52 = zext i128 %r51 to i192
%r54 = getelementptr i64, i64* %r4, i32 2
%r55 = load i64, i64* %r54
%r56 = zext i64 %r55 to i192
%r57 = shl i192 %r56, 128
%r58 = or i192 %r52, %r57
%r59 = zext i192 %r58 to i256
%r60 = sub i256 %r43, %r59
%r61 = lshr i256 %r60, 192
%r62 = trunc i256 %r61 to i1
%r63 = select i1 %r62, i256 %r43, i256 %r60
%r64 = trunc i256 %r63 to i192
%r65 = trunc i192 %r64 to i64
%r67 = getelementptr i64, i64* %r1, i32 0
store i64 %r65, i64* %r67
%r68 = lshr i192 %r64, 64
%r69 = trunc i192 %r68 to i64
%r71 = getelementptr i64, i64* %r1, i32 1
store i64 %r69, i64* %r71
%r72 = lshr i192 %r68, 64
%r73 = trunc i192 %r72 to i64
%r75 = getelementptr i64, i64* %r1, i32 2
store i64 %r73, i64* %r75
ret void
}
define void @mcl_fp_montNF3L(i64* %r1, i64* %r2, i64* %r3, i64* %r4)
{
%r6 = getelementptr i64, i64* %r4, i32 -1
%r7 = load i64, i64* %r6
%r8 = load i64, i64* %r3
%r9 = call i256 @mulPv192x64(i64* %r2, i64 %r8)
%r10 = trunc i256 %r9 to i64
%r11 = mul i64 %r10, %r7
%r12 = call i256 @mulPv192x64(i64* %r4, i64 %r11)
%r13 = add i256 %r9, %r12
%r14 = lshr i256 %r13, 64
%r16 = getelementptr i64, i64* %r3, i32 1
%r17 = load i64, i64* %r16
%r18 = call i256 @mulPv192x64(i64* %r2, i64 %r17)
%r19 = add i256 %r14, %r18
%r20 = trunc i256 %r19 to i64
%r21 = mul i64 %r20, %r7
%r22 = call i256 @mulPv192x64(i64* %r4, i64 %r21)
%r23 = add i256 %r19, %r22
%r24 = lshr i256 %r23, 64
%r26 = getelementptr i64, i64* %r3, i32 2
%r27 = load i64, i64* %r26
%r28 = call i256 @mulPv192x64(i64* %r2, i64 %r27)
%r29 = add i256 %r24, %r28
%r30 = trunc i256 %r29 to i64
%r31 = mul i64 %r30, %r7
%r32 = call i256 @mulPv192x64(i64* %r4, i64 %r31)
%r33 = add i256 %r29, %r32
%r34 = lshr i256 %r33, 64
%r35 = trunc i256 %r34 to i192
%r36 = load i64, i64* %r4
%r37 = zext i64 %r36 to i128
%r39 = getelementptr i64, i64* %r4, i32 1
%r40 = load i64, i64* %r39
%r41 = zext i64 %r40 to i128
%r42 = shl i128 %r41, 64
%r43 = or i128 %r37, %r42
%r44 = zext i128 %r43 to i192
%r46 = getelementptr i64, i64* %r4, i32 2
%r47 = load i64, i64* %r46
%r48 = zext i64 %r47 to i192
%r49 = shl i192 %r48, 128
%r50 = or i192 %r44, %r49
%r51 = sub i192 %r35, %r50
%r52 = lshr i192 %r51, 191
%r53 = trunc i192 %r52 to i1
%r54 = select i1 %r53, i192 %r35, i192 %r51
%r55 = trunc i192 %r54 to i64
%r57 = getelementptr i64, i64* %r1, i32 0
store i64 %r55, i64* %r57
%r58 = lshr i192 %r54, 64
%r59 = trunc i192 %r58 to i64
%r61 = getelementptr i64, i64* %r1, i32 1
store i64 %r59, i64* %r61
%r62 = lshr i192 %r58, 64
%r63 = trunc i192 %r62 to i64
%r65 = getelementptr i64, i64* %r1, i32 2
store i64 %r63, i64* %r65
ret void
}
define void @mcl_fp_montRed3L(i64* noalias  %r1, i64* noalias  %r2, i64* noalias  %r3)
{
%r5 = getelementptr i64, i64* %r3, i32 -1
%r6 = load i64, i64* %r5
%r7 = load i64, i64* %r3
%r8 = zext i64 %r7 to i128
%r10 = getelementptr i64, i64* %r3, i32 1
%r11 = load i64, i64* %r10
%r12 = zext i64 %r11 to i128
%r13 = shl i128 %r12, 64
%r14 = or i128 %r8, %r13
%r15 = zext i128 %r14 to i192
%r17 = getelementptr i64, i64* %r3, i32 2
%r18 = load i64, i64* %r17
%r19 = zext i64 %r18 to i192
%r20 = shl i192 %r19, 128
%r21 = or i192 %r15, %r20
%r22 = load i64, i64* %r2
%r23 = zext i64 %r22 to i128
%r25 = getelementptr i64, i64* %r2, i32 1
%r26 = load i64, i64* %r25
%r27 = zext i64 %r26 to i128
%r28 = shl i128 %r27, 64
%r29 = or i128 %r23, %r28
%r30 = zext i128 %r29 to i192
%r32 = getelementptr i64, i64* %r2, i32 2
%r33 = load i64, i64* %r32
%r34 = zext i64 %r33 to i192
%r35 = shl i192 %r34, 128
%r36 = or i192 %r30, %r35
%r37 = zext i192 %r36 to i256
%r39 = getelementptr i64, i64* %r2, i32 3
%r40 = load i64, i64* %r39
%r41 = zext i64 %r40 to i256
%r42 = shl i256 %r41, 192
%r43 = or i256 %r37, %r42
%r44 = zext i256 %r43 to i320
%r46 = getelementptr i64, i64* %r2, i32 4
%r47 = load i64, i64* %r46
%r48 = zext i64 %r47 to i320
%r49 = shl i320 %r48, 256
%r50 = or i320 %r44, %r49
%r51 = zext i320 %r50 to i384
%r53 = getelementptr i64, i64* %r2, i32 5
%r54 = load i64, i64* %r53
%r55 = zext i64 %r54 to i384
%r56 = shl i384 %r55, 320
%r57 = or i384 %r51, %r56
%r58 = zext i384 %r57 to i448
%r59 = trunc i448 %r58 to i64
%r60 = mul i64 %r59, %r6
%r61 = call i256 @mulPv192x64(i64* %r3, i64 %r60)
%r62 = zext i256 %r61 to i448
%r63 = add i448 %r58, %r62
%r64 = lshr i448 %r63, 64
%r65 = trunc i448 %r64 to i384
%r66 = trunc i384 %r65 to i64
%r67 = mul i64 %r66, %r6
%r68 = call i256 @mulPv192x64(i64* %r3, i64 %r67)
%r69 = zext i256 %r68 to i384
%r70 = add i384 %r65, %r69
%r71 = lshr i384 %r70, 64
%r72 = trunc i384 %r71 to i320
%r73 = trunc i320 %r72 to i64
%r74 = mul i64 %r73, %r6
%r75 = call i256 @mulPv192x64(i64* %r3, i64 %r74)
%r76 = zext i256 %r75 to i320
%r77 = add i320 %r72, %r76
%r78 = lshr i320 %r77, 64
%r79 = trunc i320 %r78 to i256
%r80 = zext i192 %r21 to i256
%r81 = sub i256 %r79, %r80
%r82 = lshr i256 %r81, 192
%r83 = trunc i256 %r82 to i1
%r84 = select i1 %r83, i256 %r79, i256 %r81
%r85 = trunc i256 %r84 to i192
%r86 = trunc i192 %r85 to i64
%r88 = getelementptr i64, i64* %r1, i32 0
store i64 %r86, i64* %r88
%r89 = lshr i192 %r85, 64
%r90 = trunc i192 %r89 to i64
%r92 = getelementptr i64, i64* %r1, i32 1
store i64 %r90, i64* %r92
%r93 = lshr i192 %r89, 64
%r94 = trunc i192 %r93 to i64
%r96 = getelementptr i64, i64* %r1, i32 2
store i64 %r94, i64* %r96
ret void
}
define i64 @mcl_fp_addPre3L(i64* noalias  %r2, i64* noalias  %r3, i64* noalias  %r4)
{
%r5 = load i64, i64* %r3
%r6 = zext i64 %r5 to i128
%r8 = getelementptr i64, i64* %r3, i32 1
%r9 = load i64, i64* %r8
%r10 = zext i64 %r9 to i128
%r11 = shl i128 %r10, 64
%r12 = or i128 %r6, %r11
%r13 = zext i128 %r12 to i192
%r15 = getelementptr i64, i64* %r3, i32 2
%r16 = load i64, i64* %r15
%r17 = zext i64 %r16 to i192
%r18 = shl i192 %r17, 128
%r19 = or i192 %r13, %r18
%r20 = zext i192 %r19 to i256
%r21 = load i64, i64* %r4
%r22 = zext i64 %r21 to i128
%r24 = getelementptr i64, i64* %r4, i32 1
%r25 = load i64, i64* %r24
%r26 = zext i64 %r25 to i128
%r27 = shl i128 %r26, 64
%r28 = or i128 %r22, %r27
%r29 = zext i128 %r28 to i192
%r31 = getelementptr i64, i64* %r4, i32 2
%r32 = load i64, i64* %r31
%r33 = zext i64 %r32 to i192
%r34 = shl i192 %r33, 128
%r35 = or i192 %r29, %r34
%r36 = zext i192 %r35 to i256
%r37 = add i256 %r20, %r36
%r38 = trunc i256 %r37 to i192
%r39 = trunc i192 %r38 to i64
%r41 = getelementptr i64, i64* %r2, i32 0
store i64 %r39, i64* %r41
%r42 = lshr i192 %r38, 64
%r43 = trunc i192 %r42 to i64
%r45 = getelementptr i64, i64* %r2, i32 1
store i64 %r43, i64* %r45
%r46 = lshr i192 %r42, 64
%r47 = trunc i192 %r46 to i64
%r49 = getelementptr i64, i64* %r2, i32 2
store i64 %r47, i64* %r49
%r50 = lshr i256 %r37, 192
%r51 = trunc i256 %r50 to i64
ret i64 %r51
}
define i64 @mcl_fp_subPre3L(i64* noalias  %r2, i64* noalias  %r3, i64* noalias  %r4)
{
%r5 = load i64, i64* %r3
%r6 = zext i64 %r5 to i128
%r8 = getelementptr i64, i64* %r3, i32 1
%r9 = load i64, i64* %r8
%r10 = zext i64 %r9 to i128
%r11 = shl i128 %r10, 64
%r12 = or i128 %r6, %r11
%r13 = zext i128 %r12 to i192
%r15 = getelementptr i64, i64* %r3, i32 2
%r16 = load i64, i64* %r15
%r17 = zext i64 %r16 to i192
%r18 = shl i192 %r17, 128
%r19 = or i192 %r13, %r18
%r20 = zext i192 %r19 to i256
%r21 = load i64, i64* %r4
%r22 = zext i64 %r21 to i128
%r24 = getelementptr i64, i64* %r4, i32 1
%r25 = load i64, i64* %r24
%r26 = zext i64 %r25 to i128
%r27 = shl i128 %r26, 64
%r28 = or i128 %r22, %r27
%r29 = zext i128 %r28 to i192
%r31 = getelementptr i64, i64* %r4, i32 2
%r32 = load i64, i64* %r31
%r33 = zext i64 %r32 to i192
%r34 = shl i192 %r33, 128
%r35 = or i192 %r29, %r34
%r36 = zext i192 %r35 to i256
%r37 = sub i256 %r20, %r36
%r38 = trunc i256 %r37 to i192
%r39 = trunc i192 %r38 to i64
%r41 = getelementptr i64, i64* %r2, i32 0
store i64 %r39, i64* %r41
%r42 = lshr i192 %r38, 64
%r43 = trunc i192 %r42 to i64
%r45 = getelementptr i64, i64* %r2, i32 1
store i64 %r43, i64* %r45
%r46 = lshr i192 %r42, 64
%r47 = trunc i192 %r46 to i64
%r49 = getelementptr i64, i64* %r2, i32 2
store i64 %r47, i64* %r49
%r50 = lshr i256 %r37, 192
%r51 = trunc i256 %r50 to i64
%r53 = and i64 %r51, 1
ret i64 %r53
}
define void @mcl_fp_shr1_3L(i64* noalias  %r1, i64* noalias  %r2)
{
%r3 = load i64, i64* %r2
%r4 = zext i64 %r3 to i128
%r6 = getelementptr i64, i64* %r2, i32 1
%r7 = load i64, i64* %r6
%r8 = zext i64 %r7 to i128
%r9 = shl i128 %r8, 64
%r10 = or i128 %r4, %r9
%r11 = zext i128 %r10 to i192
%r13 = getelementptr i64, i64* %r2, i32 2
%r14 = load i64, i64* %r13
%r15 = zext i64 %r14 to i192
%r16 = shl i192 %r15, 128
%r17 = or i192 %r11, %r16
%r18 = lshr i192 %r17, 1
%r19 = trunc i192 %r18 to i64
%r21 = getelementptr i64, i64* %r1, i32 0
store i64 %r19, i64* %r21
%r22 = lshr i192 %r18, 64
%r23 = trunc i192 %r22 to i64
%r25 = getelementptr i64, i64* %r1, i32 1
store i64 %r23, i64* %r25
%r26 = lshr i192 %r22, 64
%r27 = trunc i192 %r26 to i64
%r29 = getelementptr i64, i64* %r1, i32 2
store i64 %r27, i64* %r29
ret void
}
define void @mcl_fp_add3L(i64* noalias  %r1, i64* noalias  %r2, i64* noalias  %r3, i64* noalias  %r4)
{
%r5 = load i64, i64* %r2
%r6 = zext i64 %r5 to i128
%r8 = getelementptr i64, i64* %r2, i32 1
%r9 = load i64, i64* %r8
%r10 = zext i64 %r9 to i128
%r11 = shl i128 %r10, 64
%r12 = or i128 %r6, %r11
%r13 = zext i128 %r12 to i192
%r15 = getelementptr i64, i64* %r2, i32 2
%r16 = load i64, i64* %r15
%r17 = zext i64 %r16 to i192
%r18 = shl i192 %r17, 128
%r19 = or i192 %r13, %r18
%r20 = load i64, i64* %r3
%r21 = zext i64 %r20 to i128
%r23 = getelementptr i64, i64* %r3, i32 1
%r24 = load i64, i64* %r23
%r25 = zext i64 %r24 to i128
%r26 = shl i128 %r25, 64
%r27 = or i128 %r21, %r26
%r28 = zext i128 %r27 to i192
%r30 = getelementptr i64, i64* %r3, i32 2
%r31 = load i64, i64* %r30
%r32 = zext i64 %r31 to i192
%r33 = shl i192 %r32, 128
%r34 = or i192 %r28, %r33
%r35 = zext i192 %r19 to i256
%r36 = zext i192 %r34 to i256
%r37 = add i256 %r35, %r36
%r38 = trunc i256 %r37 to i192
%r39 = trunc i192 %r38 to i64
%r41 = getelementptr i64, i64* %r1, i32 0
store i64 %r39, i64* %r41
%r42 = lshr i192 %r38, 64
%r43 = trunc i192 %r42 to i64
%r45 = getelementptr i64, i64* %r1, i32 1
store i64 %r43, i64* %r45
%r46 = lshr i192 %r42, 64
%r47 = trunc i192 %r46 to i64
%r49 = getelementptr i64, i64* %r1, i32 2
store i64 %r47, i64* %r49
%r50 = load i64, i64* %r4
%r51 = zext i64 %r50 to i128
%r53 = getelementptr i64, i64* %r4, i32 1
%r54 = load i64, i64* %r53
%r55 = zext i64 %r54 to i128
%r56 = shl i128 %r55, 64
%r57 = or i128 %r51, %r56
%r58 = zext i128 %r57 to i192
%r60 = getelementptr i64, i64* %r4, i32 2
%r61 = load i64, i64* %r60
%r62 = zext i64 %r61 to i192
%r63 = shl i192 %r62, 128
%r64 = or i192 %r58, %r63
%r65 = zext i192 %r64 to i256
%r66 = sub i256 %r37, %r65
%r67 = lshr i256 %r66, 192
%r68 = trunc i256 %r67 to i1
br i1%r68, label %carry, label %nocarry
nocarry:
%r69 = trunc i256 %r66 to i192
%r70 = trunc i192 %r69 to i64
%r72 = getelementptr i64, i64* %r1, i32 0
store i64 %r70, i64* %r72
%r73 = lshr i192 %r69, 64
%r74 = trunc i192 %r73 to i64
%r76 = getelementptr i64, i64* %r1, i32 1
store i64 %r74, i64* %r76
%r77 = lshr i192 %r73, 64
%r78 = trunc i192 %r77 to i64
%r80 = getelementptr i64, i64* %r1, i32 2
store i64 %r78, i64* %r80
ret void
carry:
ret void
}
define void @mcl_fp_addNF3L(i64* noalias  %r1, i64* noalias  %r2, i64* noalias  %r3, i64* noalias  %r4)
{
%r5 = load i64, i64* %r2
%r6 = zext i64 %r5 to i128
%r8 = getelementptr i64, i64* %r2, i32 1
%r9 = load i64, i64* %r8
%r10 = zext i64 %r9 to i128
%r11 = shl i128 %r10, 64
%r12 = or i128 %r6, %r11
%r13 = zext i128 %r12 to i192
%r15 = getelementptr i64, i64* %r2, i32 2
%r16 = load i64, i64* %r15
%r17 = zext i64 %r16 to i192
%r18 = shl i192 %r17, 128
%r19 = or i192 %r13, %r18
%r20 = load i64, i64* %r3
%r21 = zext i64 %r20 to i128
%r23 = getelementptr i64, i64* %r3, i32 1
%r24 = load i64, i64* %r23
%r25 = zext i64 %r24 to i128
%r26 = shl i128 %r25, 64
%r27 = or i128 %r21, %r26
%r28 = zext i128 %r27 to i192
%r30 = getelementptr i64, i64* %r3, i32 2
%r31 = load i64, i64* %r30
%r32 = zext i64 %r31 to i192
%r33 = shl i192 %r32, 128
%r34 = or i192 %r28, %r33
%r35 = add i192 %r19, %r34
%r36 = load i64, i64* %r4
%r37 = zext i64 %r36 to i128
%r39 = getelementptr i64, i64* %r4, i32 1
%r40 = load i64, i64* %r39
%r41 = zext i64 %r40 to i128
%r42 = shl i128 %r41, 64
%r43 = or i128 %r37, %r42
%r44 = zext i128 %r43 to i192
%r46 = getelementptr i64, i64* %r4, i32 2
%r47 = load i64, i64* %r46
%r48 = zext i64 %r47 to i192
%r49 = shl i192 %r48, 128
%r50 = or i192 %r44, %r49
%r51 = sub i192 %r35, %r50
%r52 = lshr i192 %r51, 191
%r53 = trunc i192 %r52 to i1
%r54 = select i1 %r53, i192 %r35, i192 %r51
%r55 = trunc i192 %r54 to i64
%r57 = getelementptr i64, i64* %r1, i32 0
store i64 %r55, i64* %r57
%r58 = lshr i192 %r54, 64
%r59 = trunc i192 %r58 to i64
%r61 = getelementptr i64, i64* %r1, i32 1
store i64 %r59, i64* %r61
%r62 = lshr i192 %r58, 64
%r63 = trunc i192 %r62 to i64
%r65 = getelementptr i64, i64* %r1, i32 2
store i64 %r63, i64* %r65
ret void
}
define void @mcl_fp_sub3L(i64* noalias  %r1, i64* noalias  %r2, i64* noalias  %r3, i64* noalias  %r4)
{
%r5 = load i64, i64* %r2
%r6 = zext i64 %r5 to i128
%r8 = getelementptr i64, i64* %r2, i32 1
%r9 = load i64, i64* %r8
%r10 = zext i64 %r9 to i128
%r11 = shl i128 %r10, 64
%r12 = or i128 %r6, %r11
%r13 = zext i128 %r12 to i192
%r15 = getelementptr i64, i64* %r2, i32 2
%r16 = load i64, i64* %r15
%r17 = zext i64 %r16 to i192
%r18 = shl i192 %r17, 128
%r19 = or i192 %r13, %r18
%r20 = load i64, i64* %r3
%r21 = zext i64 %r20 to i128
%r23 = getelementptr i64, i64* %r3, i32 1
%r24 = load i64, i64* %r23
%r25 = zext i64 %r24 to i128
%r26 = shl i128 %r25, 64
%r27 = or i128 %r21, %r26
%r28 = zext i128 %r27 to i192
%r30 = getelementptr i64, i64* %r3, i32 2
%r31 = load i64, i64* %r30
%r32 = zext i64 %r31 to i192
%r33 = shl i192 %r32, 128
%r34 = or i192 %r28, %r33
%r35 = zext i192 %r19 to i256
%r36 = zext i192 %r34 to i256
%r37 = sub i256 %r35, %r36
%r38 = trunc i256 %r37 to i192
%r39 = lshr i256 %r37, 192
%r40 = trunc i256 %r39 to i1
%r41 = trunc i192 %r38 to i64
%r43 = getelementptr i64, i64* %r1, i32 0
store i64 %r41, i64* %r43
%r44 = lshr i192 %r38, 64
%r45 = trunc i192 %r44 to i64
%r47 = getelementptr i64, i64* %r1, i32 1
store i64 %r45, i64* %r47
%r48 = lshr i192 %r44, 64
%r49 = trunc i192 %r48 to i64
%r51 = getelementptr i64, i64* %r1, i32 2
store i64 %r49, i64* %r51
br i1%r40, label %carry, label %nocarry
nocarry:
ret void
carry:
%r52 = load i64, i64* %r4
%r53 = zext i64 %r52 to i128
%r55 = getelementptr i64, i64* %r4, i32 1
%r56 = load i64, i64* %r55
%r57 = zext i64 %r56 to i128
%r58 = shl i128 %r57, 64
%r59 = or i128 %r53, %r58
%r60 = zext i128 %r59 to i192
%r62 = getelementptr i64, i64* %r4, i32 2
%r63 = load i64, i64* %r62
%r64 = zext i64 %r63 to i192
%r65 = shl i192 %r64, 128
%r66 = or i192 %r60, %r65
%r67 = add i192 %r38, %r66
%r68 = trunc i192 %r67 to i64
%r70 = getelementptr i64, i64* %r1, i32 0
store i64 %r68, i64* %r70
%r71 = lshr i192 %r67, 64
%r72 = trunc i192 %r71 to i64
%r74 = getelementptr i64, i64* %r1, i32 1
store i64 %r72, i64* %r74
%r75 = lshr i192 %r71, 64
%r76 = trunc i192 %r75 to i64
%r78 = getelementptr i64, i64* %r1, i32 2
store i64 %r76, i64* %r78
ret void
}
define void @mcl_fp_subNF3L(i64* noalias  %r1, i64* noalias  %r2, i64* noalias  %r3, i64* noalias  %r4)
{
%r5 = load i64, i64* %r2
%r6 = zext i64 %r5 to i128
%r8 = getelementptr i64, i64* %r2, i32 1
%r9 = load i64, i64* %r8
%r10 = zext i64 %r9 to i128
%r11 = shl i128 %r10, 64
%r12 = or i128 %r6, %r11
%r13 = zext i128 %r12 to i192
%r15 = getelementptr i64, i64* %r2, i32 2
%r16 = load i64, i64* %r15
%r17 = zext i64 %r16 to i192
%r18 = shl i192 %r17, 128
%r19 = or i192 %r13, %r18
%r20 = load i64, i64* %r3
%r21 = zext i64 %r20 to i128
%r23 = getelementptr i64, i64* %r3, i32 1
%r24 = load i64, i64* %r23
%r25 = zext i64 %r24 to i128
%r26 = shl i128 %r25, 64
%r27 = or i128 %r21, %r26
%r28 = zext i128 %r27 to i192
%r30 = getelementptr i64, i64* %r3, i32 2
%r31 = load i64, i64* %r30
%r32 = zext i64 %r31 to i192
%r33 = shl i192 %r32, 128
%r34 = or i192 %r28, %r33
%r35 = sub i192 %r19, %r34
%r36 = lshr i192 %r35, 191
%r37 = trunc i192 %r36 to i1
%r38 = load i64, i64* %r4
%r39 = zext i64 %r38 to i128
%r41 = getelementptr i64, i64* %r4, i32 1
%r42 = load i64, i64* %r41
%r43 = zext i64 %r42 to i128
%r44 = shl i128 %r43, 64
%r45 = or i128 %r39, %r44
%r46 = zext i128 %r45 to i192
%r48 = getelementptr i64, i64* %r4, i32 2
%r49 = load i64, i64* %r48
%r50 = zext i64 %r49 to i192
%r51 = shl i192 %r50, 128
%r52 = or i192 %r46, %r51
%r54 = select i1 %r37, i192 %r52, i192 0
%r55 = add i192 %r35, %r54
%r56 = trunc i192 %r55 to i64
%r58 = getelementptr i64, i64* %r1, i32 0
store i64 %r56, i64* %r58
%r59 = lshr i192 %r55, 64
%r60 = trunc i192 %r59 to i64
%r62 = getelementptr i64, i64* %r1, i32 1
store i64 %r60, i64* %r62
%r63 = lshr i192 %r59, 64
%r64 = trunc i192 %r63 to i64
%r66 = getelementptr i64, i64* %r1, i32 2
store i64 %r64, i64* %r66
ret void
}
define void @mcl_fpDbl_add3L(i64* noalias  %r1, i64* noalias  %r2, i64* noalias  %r3, i64* noalias  %r4)
{
%r5 = load i64, i64* %r2
%r6 = zext i64 %r5 to i128
%r8 = getelementptr i64, i64* %r2, i32 1
%r9 = load i64, i64* %r8
%r10 = zext i64 %r9 to i128
%r11 = shl i128 %r10, 64
%r12 = or i128 %r6, %r11
%r13 = zext i128 %r12 to i192
%r15 = getelementptr i64, i64* %r2, i32 2
%r16 = load i64, i64* %r15
%r17 = zext i64 %r16 to i192
%r18 = shl i192 %r17, 128
%r19 = or i192 %r13, %r18
%r20 = zext i192 %r19 to i256
%r22 = getelementptr i64, i64* %r2, i32 3
%r23 = load i64, i64* %r22
%r24 = zext i64 %r23 to i256
%r25 = shl i256 %r24, 192
%r26 = or i256 %r20, %r25
%r27 = zext i256 %r26 to i320
%r29 = getelementptr i64, i64* %r2, i32 4
%r30 = load i64, i64* %r29
%r31 = zext i64 %r30 to i320
%r32 = shl i320 %r31, 256
%r33 = or i320 %r27, %r32
%r34 = zext i320 %r33 to i384
%r36 = getelementptr i64, i64* %r2, i32 5
%r37 = load i64, i64* %r36
%r38 = zext i64 %r37 to i384
%r39 = shl i384 %r38, 320
%r40 = or i384 %r34, %r39
%r41 = load i64, i64* %r3
%r42 = zext i64 %r41 to i128
%r44 = getelementptr i64, i64* %r3, i32 1
%r45 = load i64, i64* %r44
%r46 = zext i64 %r45 to i128
%r47 = shl i128 %r46, 64
%r48 = or i128 %r42, %r47
%r49 = zext i128 %r48 to i192
%r51 = getelementptr i64, i64* %r3, i32 2
%r52 = load i64, i64* %r51
%r53 = zext i64 %r52 to i192
%r54 = shl i192 %r53, 128
%r55 = or i192 %r49, %r54
%r56 = zext i192 %r55 to i256
%r58 = getelementptr i64, i64* %r3, i32 3
%r59 = load i64, i64* %r58
%r60 = zext i64 %r59 to i256
%r61 = shl i256 %r60, 192
%r62 = or i256 %r56, %r61
%r63 = zext i256 %r62 to i320
%r65 = getelementptr i64, i64* %r3, i32 4
%r66 = load i64, i64* %r65
%r67 = zext i64 %r66 to i320
%r68 = shl i320 %r67, 256
%r69 = or i320 %r63, %r68
%r70 = zext i320 %r69 to i384
%r72 = getelementptr i64, i64* %r3, i32 5
%r73 = load i64, i64* %r72
%r74 = zext i64 %r73 to i384
%r75 = shl i384 %r74, 320
%r76 = or i384 %r70, %r75
%r77 = zext i384 %r40 to i448
%r78 = zext i384 %r76 to i448
%r79 = add i448 %r77, %r78
%r80 = trunc i448 %r79 to i192
%r81 = trunc i192 %r80 to i64
%r83 = getelementptr i64, i64* %r1, i32 0
store i64 %r81, i64* %r83
%r84 = lshr i192 %r80, 64
%r85 = trunc i192 %r84 to i64
%r87 = getelementptr i64, i64* %r1, i32 1
store i64 %r85, i64* %r87
%r88 = lshr i192 %r84, 64
%r89 = trunc i192 %r88 to i64
%r91 = getelementptr i64, i64* %r1, i32 2
store i64 %r89, i64* %r91
%r92 = lshr i448 %r79, 192
%r93 = trunc i448 %r92 to i256
%r94 = load i64, i64* %r4
%r95 = zext i64 %r94 to i128
%r97 = getelementptr i64, i64* %r4, i32 1
%r98 = load i64, i64* %r97
%r99 = zext i64 %r98 to i128
%r100 = shl i128 %r99, 64
%r101 = or i128 %r95, %r100
%r102 = zext i128 %r101 to i192
%r104 = getelementptr i64, i64* %r4, i32 2
%r105 = load i64, i64* %r104
%r106 = zext i64 %r105 to i192
%r107 = shl i192 %r106, 128
%r108 = or i192 %r102, %r107
%r109 = zext i192 %r108 to i256
%r110 = sub i256 %r93, %r109
%r111 = lshr i256 %r110, 192
%r112 = trunc i256 %r111 to i1
%r113 = select i1 %r112, i256 %r93, i256 %r110
%r114 = trunc i256 %r113 to i192
%r116 = getelementptr i64, i64* %r1, i32 3
%r117 = trunc i192 %r114 to i64
%r119 = getelementptr i64, i64* %r116, i32 0
store i64 %r117, i64* %r119
%r120 = lshr i192 %r114, 64
%r121 = trunc i192 %r120 to i64
%r123 = getelementptr i64, i64* %r116, i32 1
store i64 %r121, i64* %r123
%r124 = lshr i192 %r120, 64
%r125 = trunc i192 %r124 to i64
%r127 = getelementptr i64, i64* %r116, i32 2
store i64 %r125, i64* %r127
ret void
}
define void @mcl_fpDbl_sub3L(i64* noalias  %r1, i64* noalias  %r2, i64* noalias  %r3, i64* noalias  %r4)
{
%r5 = load i64, i64* %r2
%r6 = zext i64 %r5 to i128
%r8 = getelementptr i64, i64* %r2, i32 1
%r9 = load i64, i64* %r8
%r10 = zext i64 %r9 to i128
%r11 = shl i128 %r10, 64
%r12 = or i128 %r6, %r11
%r13 = zext i128 %r12 to i192
%r15 = getelementptr i64, i64* %r2, i32 2
%r16 = load i64, i64* %r15
%r17 = zext i64 %r16 to i192
%r18 = shl i192 %r17, 128
%r19 = or i192 %r13, %r18
%r20 = zext i192 %r19 to i256
%r22 = getelementptr i64, i64* %r2, i32 3
%r23 = load i64, i64* %r22
%r24 = zext i64 %r23 to i256
%r25 = shl i256 %r24, 192
%r26 = or i256 %r20, %r25
%r27 = zext i256 %r26 to i320
%r29 = getelementptr i64, i64* %r2, i32 4
%r30 = load i64, i64* %r29
%r31 = zext i64 %r30 to i320
%r32 = shl i320 %r31, 256
%r33 = or i320 %r27, %r32
%r34 = zext i320 %r33 to i384
%r36 = getelementptr i64, i64* %r2, i32 5
%r37 = load i64, i64* %r36
%r38 = zext i64 %r37 to i384
%r39 = shl i384 %r38, 320
%r40 = or i384 %r34, %r39
%r41 = load i64, i64* %r3
%r42 = zext i64 %r41 to i128
%r44 = getelementptr i64, i64* %r3, i32 1
%r45 = load i64, i64* %r44
%r46 = zext i64 %r45 to i128
%r47 = shl i128 %r46, 64
%r48 = or i128 %r42, %r47
%r49 = zext i128 %r48 to i192
%r51 = getelementptr i64, i64* %r3, i32 2
%r52 = load i64, i64* %r51
%r53 = zext i64 %r52 to i192
%r54 = shl i192 %r53, 128
%r55 = or i192 %r49, %r54
%r56 = zext i192 %r55 to i256
%r58 = getelementptr i64, i64* %r3, i32 3
%r59 = load i64, i64* %r58
%r60 = zext i64 %r59 to i256
%r61 = shl i256 %r60, 192
%r62 = or i256 %r56, %r61
%r63 = zext i256 %r62 to i320
%r65 = getelementptr i64, i64* %r3, i32 4
%r66 = load i64, i64* %r65
%r67 = zext i64 %r66 to i320
%r68 = shl i320 %r67, 256
%r69 = or i320 %r63, %r68
%r70 = zext i320 %r69 to i384
%r72 = getelementptr i64, i64* %r3, i32 5
%r73 = load i64, i64* %r72
%r74 = zext i64 %r73 to i384
%r75 = shl i384 %r74, 320
%r76 = or i384 %r70, %r75
%r77 = zext i384 %r40 to i448
%r78 = zext i384 %r76 to i448
%r79 = sub i448 %r77, %r78
%r80 = trunc i448 %r79 to i192
%r81 = trunc i192 %r80 to i64
%r83 = getelementptr i64, i64* %r1, i32 0
store i64 %r81, i64* %r83
%r84 = lshr i192 %r80, 64
%r85 = trunc i192 %r84 to i64
%r87 = getelementptr i64, i64* %r1, i32 1
store i64 %r85, i64* %r87
%r88 = lshr i192 %r84, 64
%r89 = trunc i192 %r88 to i64
%r91 = getelementptr i64, i64* %r1, i32 2
store i64 %r89, i64* %r91
%r92 = lshr i448 %r79, 192
%r93 = trunc i448 %r92 to i192
%r94 = lshr i448 %r79, 384
%r95 = trunc i448 %r94 to i1
%r96 = load i64, i64* %r4
%r97 = zext i64 %r96 to i128
%r99 = getelementptr i64, i64* %r4, i32 1
%r100 = load i64, i64* %r99
%r101 = zext i64 %r100 to i128
%r102 = shl i128 %r101, 64
%r103 = or i128 %r97, %r102
%r104 = zext i128 %r103 to i192
%r106 = getelementptr i64, i64* %r4, i32 2
%r107 = load i64, i64* %r106
%r108 = zext i64 %r107 to i192
%r109 = shl i192 %r108, 128
%r110 = or i192 %r104, %r109
%r112 = select i1 %r95, i192 %r110, i192 0
%r113 = add i192 %r93, %r112
%r115 = getelementptr i64, i64* %r1, i32 3
%r116 = trunc i192 %r113 to i64
%r118 = getelementptr i64, i64* %r115, i32 0
store i64 %r116, i64* %r118
%r119 = lshr i192 %r113, 64
%r120 = trunc i192 %r119 to i64
%r122 = getelementptr i64, i64* %r115, i32 1
store i64 %r120, i64* %r122
%r123 = lshr i192 %r119, 64
%r124 = trunc i192 %r123 to i64
%r126 = getelementptr i64, i64* %r115, i32 2
store i64 %r124, i64* %r126
ret void
}
define private i320 @mulPv256x64(i64* noalias  %r2, i64 %r3)
{
%r5 = call i128 @mulPos64x64(i64* %r2, i64 %r3, i64 0)
%r6 = trunc i128 %r5 to i64
%r7 = call i64 @extractHigh64(i128 %r5)
%r9 = call i128 @mulPos64x64(i64* %r2, i64 %r3, i64 1)
%r10 = trunc i128 %r9 to i64
%r11 = call i64 @extractHigh64(i128 %r9)
%r13 = call i128 @mulPos64x64(i64* %r2, i64 %r3, i64 2)
%r14 = trunc i128 %r13 to i64
%r15 = call i64 @extractHigh64(i128 %r13)
%r17 = call i128 @mulPos64x64(i64* %r2, i64 %r3, i64 3)
%r18 = trunc i128 %r17 to i64
%r19 = call i64 @extractHigh64(i128 %r17)
%r20 = zext i64 %r6 to i128
%r21 = zext i64 %r10 to i128
%r22 = shl i128 %r21, 64
%r23 = or i128 %r20, %r22
%r24 = zext i128 %r23 to i192
%r25 = zext i64 %r14 to i192
%r26 = shl i192 %r25, 128
%r27 = or i192 %r24, %r26
%r28 = zext i192 %r27 to i256
%r29 = zext i64 %r18 to i256
%r30 = shl i256 %r29, 192
%r31 = or i256 %r28, %r30
%r32 = zext i64 %r7 to i128
%r33 = zext i64 %r11 to i128
%r34 = shl i128 %r33, 64
%r35 = or i128 %r32, %r34
%r36 = zext i128 %r35 to i192
%r37 = zext i64 %r15 to i192
%r38 = shl i192 %r37, 128
%r39 = or i192 %r36, %r38
%r40 = zext i192 %r39 to i256
%r41 = zext i64 %r19 to i256
%r42 = shl i256 %r41, 192
%r43 = or i256 %r40, %r42
%r44 = zext i256 %r31 to i320
%r45 = zext i256 %r43 to i320
%r46 = shl i320 %r45, 64
%r47 = add i320 %r44, %r46
ret i320 %r47
}
define void @mcl_fp_mulUnitPre4L(i64* noalias  %r1, i64* noalias  %r2, i64 %r3)
{
%r4 = call i320 @mulPv256x64(i64* %r2, i64 %r3)
%r5 = trunc i320 %r4 to i64
%r7 = getelementptr i64, i64* %r1, i32 0
store i64 %r5, i64* %r7
%r8 = lshr i320 %r4, 64
%r9 = trunc i320 %r8 to i64
%r11 = getelementptr i64, i64* %r1, i32 1
store i64 %r9, i64* %r11
%r12 = lshr i320 %r8, 64
%r13 = trunc i320 %r12 to i64
%r15 = getelementptr i64, i64* %r1, i32 2
store i64 %r13, i64* %r15
%r16 = lshr i320 %r12, 64
%r17 = trunc i320 %r16 to i64
%r19 = getelementptr i64, i64* %r1, i32 3
store i64 %r17, i64* %r19
%r20 = lshr i320 %r16, 64
%r21 = trunc i320 %r20 to i64
%r23 = getelementptr i64, i64* %r1, i32 4
store i64 %r21, i64* %r23
ret void
}
define void @mcl_fpDbl_mulPre4L(i64* noalias  %r1, i64* noalias  %r2, i64* noalias  %r3)
{
%r4 = load i64, i64* %r3
%r5 = call i320 @mulPv256x64(i64* %r2, i64 %r4)
%r6 = trunc i320 %r5 to i64
store i64 %r6, i64* %r1
%r7 = lshr i320 %r5, 64
%r9 = getelementptr i64, i64* %r3, i32 1
%r10 = load i64, i64* %r9
%r11 = call i320 @mulPv256x64(i64* %r2, i64 %r10)
%r12 = add i320 %r7, %r11
%r13 = trunc i320 %r12 to i64
%r15 = getelementptr i64, i64* %r1, i32 1
store i64 %r13, i64* %r15
%r16 = lshr i320 %r12, 64
%r18 = getelementptr i64, i64* %r3, i32 2
%r19 = load i64, i64* %r18
%r20 = call i320 @mulPv256x64(i64* %r2, i64 %r19)
%r21 = add i320 %r16, %r20
%r22 = trunc i320 %r21 to i64
%r24 = getelementptr i64, i64* %r1, i32 2
store i64 %r22, i64* %r24
%r25 = lshr i320 %r21, 64
%r27 = getelementptr i64, i64* %r3, i32 3
%r28 = load i64, i64* %r27
%r29 = call i320 @mulPv256x64(i64* %r2, i64 %r28)
%r30 = add i320 %r25, %r29
%r32 = getelementptr i64, i64* %r1, i32 3
%r33 = trunc i320 %r30 to i64
%r35 = getelementptr i64, i64* %r32, i32 0
store i64 %r33, i64* %r35
%r36 = lshr i320 %r30, 64
%r37 = trunc i320 %r36 to i64
%r39 = getelementptr i64, i64* %r32, i32 1
store i64 %r37, i64* %r39
%r40 = lshr i320 %r36, 64
%r41 = trunc i320 %r40 to i64
%r43 = getelementptr i64, i64* %r32, i32 2
store i64 %r41, i64* %r43
%r44 = lshr i320 %r40, 64
%r45 = trunc i320 %r44 to i64
%r47 = getelementptr i64, i64* %r32, i32 3
store i64 %r45, i64* %r47
%r48 = lshr i320 %r44, 64
%r49 = trunc i320 %r48 to i64
%r51 = getelementptr i64, i64* %r32, i32 4
store i64 %r49, i64* %r51
ret void
}
define void @mcl_fpDbl_sqrPre4L(i64* noalias  %r1, i64* noalias  %r2)
{
%r3 = load i64, i64* %r2
%r4 = call i320 @mulPv256x64(i64* %r2, i64 %r3)
%r5 = trunc i320 %r4 to i64
store i64 %r5, i64* %r1
%r6 = lshr i320 %r4, 64
%r8 = getelementptr i64, i64* %r2, i32 1
%r9 = load i64, i64* %r8
%r10 = call i320 @mulPv256x64(i64* %r2, i64 %r9)
%r11 = add i320 %r6, %r10
%r12 = trunc i320 %r11 to i64
%r14 = getelementptr i64, i64* %r1, i32 1
store i64 %r12, i64* %r14
%r15 = lshr i320 %r11, 64
%r17 = getelementptr i64, i64* %r2, i32 2
%r18 = load i64, i64* %r17
%r19 = call i320 @mulPv256x64(i64* %r2, i64 %r18)
%r20 = add i320 %r15, %r19
%r21 = trunc i320 %r20 to i64
%r23 = getelementptr i64, i64* %r1, i32 2
store i64 %r21, i64* %r23
%r24 = lshr i320 %r20, 64
%r26 = getelementptr i64, i64* %r2, i32 3
%r27 = load i64, i64* %r26
%r28 = call i320 @mulPv256x64(i64* %r2, i64 %r27)
%r29 = add i320 %r24, %r28
%r31 = getelementptr i64, i64* %r1, i32 3
%r32 = trunc i320 %r29 to i64
%r34 = getelementptr i64, i64* %r31, i32 0
store i64 %r32, i64* %r34
%r35 = lshr i320 %r29, 64
%r36 = trunc i320 %r35 to i64
%r38 = getelementptr i64, i64* %r31, i32 1
store i64 %r36, i64* %r38
%r39 = lshr i320 %r35, 64
%r40 = trunc i320 %r39 to i64
%r42 = getelementptr i64, i64* %r31, i32 2
store i64 %r40, i64* %r42
%r43 = lshr i320 %r39, 64
%r44 = trunc i320 %r43 to i64
%r46 = getelementptr i64, i64* %r31, i32 3
store i64 %r44, i64* %r46
%r47 = lshr i320 %r43, 64
%r48 = trunc i320 %r47 to i64
%r50 = getelementptr i64, i64* %r31, i32 4
store i64 %r48, i64* %r50
ret void
}
define void @mcl_fp_mont4L(i64* %r1, i64* %r2, i64* %r3, i64* %r4)
{
%r6 = getelementptr i64, i64* %r4, i32 -1
%r7 = load i64, i64* %r6
%r9 = getelementptr i64, i64* %r3, i32 0
%r10 = load i64, i64* %r9
%r11 = call i320 @mulPv256x64(i64* %r2, i64 %r10)
%r12 = zext i320 %r11 to i384
%r13 = trunc i320 %r11 to i64
%r14 = mul i64 %r13, %r7
%r15 = call i320 @mulPv256x64(i64* %r4, i64 %r14)
%r16 = zext i320 %r15 to i384
%r17 = add i384 %r12, %r16
%r18 = lshr i384 %r17, 64
%r20 = getelementptr i64, i64* %r3, i32 1
%r21 = load i64, i64* %r20
%r22 = call i320 @mulPv256x64(i64* %r2, i64 %r21)
%r23 = zext i320 %r22 to i384
%r24 = add i384 %r18, %r23
%r25 = trunc i384 %r24 to i64
%r26 = mul i64 %r25, %r7
%r27 = call i320 @mulPv256x64(i64* %r4, i64 %r26)
%r28 = zext i320 %r27 to i384
%r29 = add i384 %r24, %r28
%r30 = lshr i384 %r29, 64
%r32 = getelementptr i64, i64* %r3, i32 2
%r33 = load i64, i64* %r32
%r34 = call i320 @mulPv256x64(i64* %r2, i64 %r33)
%r35 = zext i320 %r34 to i384
%r36 = add i384 %r30, %r35
%r37 = trunc i384 %r36 to i64
%r38 = mul i64 %r37, %r7
%r39 = call i320 @mulPv256x64(i64* %r4, i64 %r38)
%r40 = zext i320 %r39 to i384
%r41 = add i384 %r36, %r40
%r42 = lshr i384 %r41, 64
%r44 = getelementptr i64, i64* %r3, i32 3
%r45 = load i64, i64* %r44
%r46 = call i320 @mulPv256x64(i64* %r2, i64 %r45)
%r47 = zext i320 %r46 to i384
%r48 = add i384 %r42, %r47
%r49 = trunc i384 %r48 to i64
%r50 = mul i64 %r49, %r7
%r51 = call i320 @mulPv256x64(i64* %r4, i64 %r50)
%r52 = zext i320 %r51 to i384
%r53 = add i384 %r48, %r52
%r54 = lshr i384 %r53, 64
%r55 = trunc i384 %r54 to i320
%r56 = load i64, i64* %r4
%r57 = zext i64 %r56 to i128
%r59 = getelementptr i64, i64* %r4, i32 1
%r60 = load i64, i64* %r59
%r61 = zext i64 %r60 to i128
%r62 = shl i128 %r61, 64
%r63 = or i128 %r57, %r62
%r64 = zext i128 %r63 to i192
%r66 = getelementptr i64, i64* %r4, i32 2
%r67 = load i64, i64* %r66
%r68 = zext i64 %r67 to i192
%r69 = shl i192 %r68, 128
%r70 = or i192 %r64, %r69
%r71 = zext i192 %r70 to i256
%r73 = getelementptr i64, i64* %r4, i32 3
%r74 = load i64, i64* %r73
%r75 = zext i64 %r74 to i256
%r76 = shl i256 %r75, 192
%r77 = or i256 %r71, %r76
%r78 = zext i256 %r77 to i320
%r79 = sub i320 %r55, %r78
%r80 = lshr i320 %r79, 256
%r81 = trunc i320 %r80 to i1
%r82 = select i1 %r81, i320 %r55, i320 %r79
%r83 = trunc i320 %r82 to i256
%r84 = trunc i256 %r83 to i64
%r86 = getelementptr i64, i64* %r1, i32 0
store i64 %r84, i64* %r86
%r87 = lshr i256 %r83, 64
%r88 = trunc i256 %r87 to i64
%r90 = getelementptr i64, i64* %r1, i32 1
store i64 %r88, i64* %r90
%r91 = lshr i256 %r87, 64
%r92 = trunc i256 %r91 to i64
%r94 = getelementptr i64, i64* %r1, i32 2
store i64 %r92, i64* %r94
%r95 = lshr i256 %r91, 64
%r96 = trunc i256 %r95 to i64
%r98 = getelementptr i64, i64* %r1, i32 3
store i64 %r96, i64* %r98
ret void
}
define void @mcl_fp_montNF4L(i64* %r1, i64* %r2, i64* %r3, i64* %r4)
{
%r6 = getelementptr i64, i64* %r4, i32 -1
%r7 = load i64, i64* %r6
%r8 = load i64, i64* %r3
%r9 = call i320 @mulPv256x64(i64* %r2, i64 %r8)
%r10 = trunc i320 %r9 to i64
%r11 = mul i64 %r10, %r7
%r12 = call i320 @mulPv256x64(i64* %r4, i64 %r11)
%r13 = add i320 %r9, %r12
%r14 = lshr i320 %r13, 64
%r16 = getelementptr i64, i64* %r3, i32 1
%r17 = load i64, i64* %r16
%r18 = call i320 @mulPv256x64(i64* %r2, i64 %r17)
%r19 = add i320 %r14, %r18
%r20 = trunc i320 %r19 to i64
%r21 = mul i64 %r20, %r7
%r22 = call i320 @mulPv256x64(i64* %r4, i64 %r21)
%r23 = add i320 %r19, %r22
%r24 = lshr i320 %r23, 64
%r26 = getelementptr i64, i64* %r3, i32 2
%r27 = load i64, i64* %r26
%r28 = call i320 @mulPv256x64(i64* %r2, i64 %r27)
%r29 = add i320 %r24, %r28
%r30 = trunc i320 %r29 to i64
%r31 = mul i64 %r30, %r7
%r32 = call i320 @mulPv256x64(i64* %r4, i64 %r31)
%r33 = add i320 %r29, %r32
%r34 = lshr i320 %r33, 64
%r36 = getelementptr i64, i64* %r3, i32 3
%r37 = load i64, i64* %r36
%r38 = call i320 @mulPv256x64(i64* %r2, i64 %r37)
%r39 = add i320 %r34, %r38
%r40 = trunc i320 %r39 to i64
%r41 = mul i64 %r40, %r7
%r42 = call i320 @mulPv256x64(i64* %r4, i64 %r41)
%r43 = add i320 %r39, %r42
%r44 = lshr i320 %r43, 64
%r45 = trunc i320 %r44 to i256
%r46 = load i64, i64* %r4
%r47 = zext i64 %r46 to i128
%r49 = getelementptr i64, i64* %r4, i32 1
%r50 = load i64, i64* %r49
%r51 = zext i64 %r50 to i128
%r52 = shl i128 %r51, 64
%r53 = or i128 %r47, %r52
%r54 = zext i128 %r53 to i192
%r56 = getelementptr i64, i64* %r4, i32 2
%r57 = load i64, i64* %r56
%r58 = zext i64 %r57 to i192
%r59 = shl i192 %r58, 128
%r60 = or i192 %r54, %r59
%r61 = zext i192 %r60 to i256
%r63 = getelementptr i64, i64* %r4, i32 3
%r64 = load i64, i64* %r63
%r65 = zext i64 %r64 to i256
%r66 = shl i256 %r65, 192
%r67 = or i256 %r61, %r66
%r68 = sub i256 %r45, %r67
%r69 = lshr i256 %r68, 255
%r70 = trunc i256 %r69 to i1
%r71 = select i1 %r70, i256 %r45, i256 %r68
%r72 = trunc i256 %r71 to i64
%r74 = getelementptr i64, i64* %r1, i32 0
store i64 %r72, i64* %r74
%r75 = lshr i256 %r71, 64
%r76 = trunc i256 %r75 to i64
%r78 = getelementptr i64, i64* %r1, i32 1
store i64 %r76, i64* %r78
%r79 = lshr i256 %r75, 64
%r80 = trunc i256 %r79 to i64
%r82 = getelementptr i64, i64* %r1, i32 2
store i64 %r80, i64* %r82
%r83 = lshr i256 %r79, 64
%r84 = trunc i256 %r83 to i64
%r86 = getelementptr i64, i64* %r1, i32 3
store i64 %r84, i64* %r86
ret void
}
define void @mcl_fp_montRed4L(i64* noalias  %r1, i64* noalias  %r2, i64* noalias  %r3)
{
%r5 = getelementptr i64, i64* %r3, i32 -1
%r6 = load i64, i64* %r5
%r7 = load i64, i64* %r3
%r8 = zext i64 %r7 to i128
%r10 = getelementptr i64, i64* %r3, i32 1
%r11 = load i64, i64* %r10
%r12 = zext i64 %r11 to i128
%r13 = shl i128 %r12, 64
%r14 = or i128 %r8, %r13
%r15 = zext i128 %r14 to i192
%r17 = getelementptr i64, i64* %r3, i32 2
%r18 = load i64, i64* %r17
%r19 = zext i64 %r18 to i192
%r20 = shl i192 %r19, 128
%r21 = or i192 %r15, %r20
%r22 = zext i192 %r21 to i256
%r24 = getelementptr i64, i64* %r3, i32 3
%r25 = load i64, i64* %r24
%r26 = zext i64 %r25 to i256
%r27 = shl i256 %r26, 192
%r28 = or i256 %r22, %r27
%r29 = load i64, i64* %r2
%r30 = zext i64 %r29 to i128
%r32 = getelementptr i64, i64* %r2, i32 1
%r33 = load i64, i64* %r32
%r34 = zext i64 %r33 to i128
%r35 = shl i128 %r34, 64
%r36 = or i128 %r30, %r35
%r37 = zext i128 %r36 to i192
%r39 = getelementptr i64, i64* %r2, i32 2
%r40 = load i64, i64* %r39
%r41 = zext i64 %r40 to i192
%r42 = shl i192 %r41, 128
%r43 = or i192 %r37, %r42
%r44 = zext i192 %r43 to i256
%r46 = getelementptr i64, i64* %r2, i32 3
%r47 = load i64, i64* %r46
%r48 = zext i64 %r47 to i256
%r49 = shl i256 %r48, 192
%r50 = or i256 %r44, %r49
%r51 = zext i256 %r50 to i320
%r53 = getelementptr i64, i64* %r2, i32 4
%r54 = load i64, i64* %r53
%r55 = zext i64 %r54 to i320
%r56 = shl i320 %r55, 256
%r57 = or i320 %r51, %r56
%r58 = zext i320 %r57 to i384
%r60 = getelementptr i64, i64* %r2, i32 5
%r61 = load i64, i64* %r60
%r62 = zext i64 %r61 to i384
%r63 = shl i384 %r62, 320
%r64 = or i384 %r58, %r63
%r65 = zext i384 %r64 to i448
%r67 = getelementptr i64, i64* %r2, i32 6
%r68 = load i64, i64* %r67
%r69 = zext i64 %r68 to i448
%r70 = shl i448 %r69, 384
%r71 = or i448 %r65, %r70
%r72 = zext i448 %r71 to i512
%r74 = getelementptr i64, i64* %r2, i32 7
%r75 = load i64, i64* %r74
%r76 = zext i64 %r75 to i512
%r77 = shl i512 %r76, 448
%r78 = or i512 %r72, %r77
%r79 = zext i512 %r78 to i576
%r80 = trunc i576 %r79 to i64
%r81 = mul i64 %r80, %r6
%r82 = call i320 @mulPv256x64(i64* %r3, i64 %r81)
%r83 = zext i320 %r82 to i576
%r84 = add i576 %r79, %r83
%r85 = lshr i576 %r84, 64
%r86 = trunc i576 %r85 to i512
%r87 = trunc i512 %r86 to i64
%r88 = mul i64 %r87, %r6
%r89 = call i320 @mulPv256x64(i64* %r3, i64 %r88)
%r90 = zext i320 %r89 to i512
%r91 = add i512 %r86, %r90
%r92 = lshr i512 %r91, 64
%r93 = trunc i512 %r92 to i448
%r94 = trunc i448 %r93 to i64
%r95 = mul i64 %r94, %r6
%r96 = call i320 @mulPv256x64(i64* %r3, i64 %r95)
%r97 = zext i320 %r96 to i448
%r98 = add i448 %r93, %r97
%r99 = lshr i448 %r98, 64
%r100 = trunc i448 %r99 to i384
%r101 = trunc i384 %r100 to i64
%r102 = mul i64 %r101, %r6
%r103 = call i320 @mulPv256x64(i64* %r3, i64 %r102)
%r104 = zext i320 %r103 to i384
%r105 = add i384 %r100, %r104
%r106 = lshr i384 %r105, 64
%r107 = trunc i384 %r106 to i320
%r108 = zext i256 %r28 to i320
%r109 = sub i320 %r107, %r108
%r110 = lshr i320 %r109, 256
%r111 = trunc i320 %r110 to i1
%r112 = select i1 %r111, i320 %r107, i320 %r109
%r113 = trunc i320 %r112 to i256
%r114 = trunc i256 %r113 to i64
%r116 = getelementptr i64, i64* %r1, i32 0
store i64 %r114, i64* %r116
%r117 = lshr i256 %r113, 64
%r118 = trunc i256 %r117 to i64
%r120 = getelementptr i64, i64* %r1, i32 1
store i64 %r118, i64* %r120
%r121 = lshr i256 %r117, 64
%r122 = trunc i256 %r121 to i64
%r124 = getelementptr i64, i64* %r1, i32 2
store i64 %r122, i64* %r124
%r125 = lshr i256 %r121, 64
%r126 = trunc i256 %r125 to i64
%r128 = getelementptr i64, i64* %r1, i32 3
store i64 %r126, i64* %r128
ret void
}
define i64 @mcl_fp_addPre4L(i64* noalias  %r2, i64* noalias  %r3, i64* noalias  %r4)
{
%r5 = load i64, i64* %r3
%r6 = zext i64 %r5 to i128
%r8 = getelementptr i64, i64* %r3, i32 1
%r9 = load i64, i64* %r8
%r10 = zext i64 %r9 to i128
%r11 = shl i128 %r10, 64
%r12 = or i128 %r6, %r11
%r13 = zext i128 %r12 to i192
%r15 = getelementptr i64, i64* %r3, i32 2
%r16 = load i64, i64* %r15
%r17 = zext i64 %r16 to i192
%r18 = shl i192 %r17, 128
%r19 = or i192 %r13, %r18
%r20 = zext i192 %r19 to i256
%r22 = getelementptr i64, i64* %r3, i32 3
%r23 = load i64, i64* %r22
%r24 = zext i64 %r23 to i256
%r25 = shl i256 %r24, 192
%r26 = or i256 %r20, %r25
%r27 = zext i256 %r26 to i320
%r28 = load i64, i64* %r4
%r29 = zext i64 %r28 to i128
%r31 = getelementptr i64, i64* %r4, i32 1
%r32 = load i64, i64* %r31
%r33 = zext i64 %r32 to i128
%r34 = shl i128 %r33, 64
%r35 = or i128 %r29, %r34
%r36 = zext i128 %r35 to i192
%r38 = getelementptr i64, i64* %r4, i32 2
%r39 = load i64, i64* %r38
%r40 = zext i64 %r39 to i192
%r41 = shl i192 %r40, 128
%r42 = or i192 %r36, %r41
%r43 = zext i192 %r42 to i256
%r45 = getelementptr i64, i64* %r4, i32 3
%r46 = load i64, i64* %r45
%r47 = zext i64 %r46 to i256
%r48 = shl i256 %r47, 192
%r49 = or i256 %r43, %r48
%r50 = zext i256 %r49 to i320
%r51 = add i320 %r27, %r50
%r52 = trunc i320 %r51 to i256
%r53 = trunc i256 %r52 to i64
%r55 = getelementptr i64, i64* %r2, i32 0
store i64 %r53, i64* %r55
%r56 = lshr i256 %r52, 64
%r57 = trunc i256 %r56 to i64
%r59 = getelementptr i64, i64* %r2, i32 1
store i64 %r57, i64* %r59
%r60 = lshr i256 %r56, 64
%r61 = trunc i256 %r60 to i64
%r63 = getelementptr i64, i64* %r2, i32 2
store i64 %r61, i64* %r63
%r64 = lshr i256 %r60, 64
%r65 = trunc i256 %r64 to i64
%r67 = getelementptr i64, i64* %r2, i32 3
store i64 %r65, i64* %r67
%r68 = lshr i320 %r51, 256
%r69 = trunc i320 %r68 to i64
ret i64 %r69
}
define i64 @mcl_fp_subPre4L(i64* noalias  %r2, i64* noalias  %r3, i64* noalias  %r4)
{
%r5 = load i64, i64* %r3
%r6 = zext i64 %r5 to i128
%r8 = getelementptr i64, i64* %r3, i32 1
%r9 = load i64, i64* %r8
%r10 = zext i64 %r9 to i128
%r11 = shl i128 %r10, 64
%r12 = or i128 %r6, %r11
%r13 = zext i128 %r12 to i192
%r15 = getelementptr i64, i64* %r3, i32 2
%r16 = load i64, i64* %r15
%r17 = zext i64 %r16 to i192
%r18 = shl i192 %r17, 128
%r19 = or i192 %r13, %r18
%r20 = zext i192 %r19 to i256
%r22 = getelementptr i64, i64* %r3, i32 3
%r23 = load i64, i64* %r22
%r24 = zext i64 %r23 to i256
%r25 = shl i256 %r24, 192
%r26 = or i256 %r20, %r25
%r27 = zext i256 %r26 to i320
%r28 = load i64, i64* %r4
%r29 = zext i64 %r28 to i128
%r31 = getelementptr i64, i64* %r4, i32 1
%r32 = load i64, i64* %r31
%r33 = zext i64 %r32 to i128
%r34 = shl i128 %r33, 64
%r35 = or i128 %r29, %r34
%r36 = zext i128 %r35 to i192
%r38 = getelementptr i64, i64* %r4, i32 2
%r39 = load i64, i64* %r38
%r40 = zext i64 %r39 to i192
%r41 = shl i192 %r40, 128
%r42 = or i192 %r36, %r41
%r43 = zext i192 %r42 to i256
%r45 = getelementptr i64, i64* %r4, i32 3
%r46 = load i64, i64* %r45
%r47 = zext i64 %r46 to i256
%r48 = shl i256 %r47, 192
%r49 = or i256 %r43, %r48
%r50 = zext i256 %r49 to i320
%r51 = sub i320 %r27, %r50
%r52 = trunc i320 %r51 to i256
%r53 = trunc i256 %r52 to i64
%r55 = getelementptr i64, i64* %r2, i32 0
store i64 %r53, i64* %r55
%r56 = lshr i256 %r52, 64
%r57 = trunc i256 %r56 to i64
%r59 = getelementptr i64, i64* %r2, i32 1
store i64 %r57, i64* %r59
%r60 = lshr i256 %r56, 64
%r61 = trunc i256 %r60 to i64
%r63 = getelementptr i64, i64* %r2, i32 2
store i64 %r61, i64* %r63
%r64 = lshr i256 %r60, 64
%r65 = trunc i256 %r64 to i64
%r67 = getelementptr i64, i64* %r2, i32 3
store i64 %r65, i64* %r67
%r68 = lshr i320 %r51, 256
%r69 = trunc i320 %r68 to i64
%r71 = and i64 %r69, 1
ret i64 %r71
}
define void @mcl_fp_shr1_4L(i64* noalias  %r1, i64* noalias  %r2)
{
%r3 = load i64, i64* %r2
%r4 = zext i64 %r3 to i128
%r6 = getelementptr i64, i64* %r2, i32 1
%r7 = load i64, i64* %r6
%r8 = zext i64 %r7 to i128
%r9 = shl i128 %r8, 64
%r10 = or i128 %r4, %r9
%r11 = zext i128 %r10 to i192
%r13 = getelementptr i64, i64* %r2, i32 2
%r14 = load i64, i64* %r13
%r15 = zext i64 %r14 to i192
%r16 = shl i192 %r15, 128
%r17 = or i192 %r11, %r16
%r18 = zext i192 %r17 to i256
%r20 = getelementptr i64, i64* %r2, i32 3
%r21 = load i64, i64* %r20
%r22 = zext i64 %r21 to i256
%r23 = shl i256 %r22, 192
%r24 = or i256 %r18, %r23
%r25 = lshr i256 %r24, 1
%r26 = trunc i256 %r25 to i64
%r28 = getelementptr i64, i64* %r1, i32 0
store i64 %r26, i64* %r28
%r29 = lshr i256 %r25, 64
%r30 = trunc i256 %r29 to i64
%r32 = getelementptr i64, i64* %r1, i32 1
store i64 %r30, i64* %r32
%r33 = lshr i256 %r29, 64
%r34 = trunc i256 %r33 to i64
%r36 = getelementptr i64, i64* %r1, i32 2
store i64 %r34, i64* %r36
%r37 = lshr i256 %r33, 64
%r38 = trunc i256 %r37 to i64
%r40 = getelementptr i64, i64* %r1, i32 3
store i64 %r38, i64* %r40
ret void
}
define void @mcl_fp_add4L(i64* noalias  %r1, i64* noalias  %r2, i64* noalias  %r3, i64* noalias  %r4)
{
%r5 = load i64, i64* %r2
%r6 = zext i64 %r5 to i128
%r8 = getelementptr i64, i64* %r2, i32 1
%r9 = load i64, i64* %r8
%r10 = zext i64 %r9 to i128
%r11 = shl i128 %r10, 64
%r12 = or i128 %r6, %r11
%r13 = zext i128 %r12 to i192
%r15 = getelementptr i64, i64* %r2, i32 2
%r16 = load i64, i64* %r15
%r17 = zext i64 %r16 to i192
%r18 = shl i192 %r17, 128
%r19 = or i192 %r13, %r18
%r20 = zext i192 %r19 to i256
%r22 = getelementptr i64, i64* %r2, i32 3
%r23 = load i64, i64* %r22
%r24 = zext i64 %r23 to i256
%r25 = shl i256 %r24, 192
%r26 = or i256 %r20, %r25
%r27 = load i64, i64* %r3
%r28 = zext i64 %r27 to i128
%r30 = getelementptr i64, i64* %r3, i32 1
%r31 = load i64, i64* %r30
%r32 = zext i64 %r31 to i128
%r33 = shl i128 %r32, 64
%r34 = or i128 %r28, %r33
%r35 = zext i128 %r34 to i192
%r37 = getelementptr i64, i64* %r3, i32 2
%r38 = load i64, i64* %r37
%r39 = zext i64 %r38 to i192
%r40 = shl i192 %r39, 128
%r41 = or i192 %r35, %r40
%r42 = zext i192 %r41 to i256
%r44 = getelementptr i64, i64* %r3, i32 3
%r45 = load i64, i64* %r44
%r46 = zext i64 %r45 to i256
%r47 = shl i256 %r46, 192
%r48 = or i256 %r42, %r47
%r49 = zext i256 %r26 to i320
%r50 = zext i256 %r48 to i320
%r51 = add i320 %r49, %r50
%r52 = trunc i320 %r51 to i256
%r53 = trunc i256 %r52 to i64
%r55 = getelementptr i64, i64* %r1, i32 0
store i64 %r53, i64* %r55
%r56 = lshr i256 %r52, 64
%r57 = trunc i256 %r56 to i64
%r59 = getelementptr i64, i64* %r1, i32 1
store i64 %r57, i64* %r59
%r60 = lshr i256 %r56, 64
%r61 = trunc i256 %r60 to i64
%r63 = getelementptr i64, i64* %r1, i32 2
store i64 %r61, i64* %r63
%r64 = lshr i256 %r60, 64
%r65 = trunc i256 %r64 to i64
%r67 = getelementptr i64, i64* %r1, i32 3
store i64 %r65, i64* %r67
%r68 = load i64, i64* %r4
%r69 = zext i64 %r68 to i128
%r71 = getelementptr i64, i64* %r4, i32 1
%r72 = load i64, i64* %r71
%r73 = zext i64 %r72 to i128
%r74 = shl i128 %r73, 64
%r75 = or i128 %r69, %r74
%r76 = zext i128 %r75 to i192
%r78 = getelementptr i64, i64* %r4, i32 2
%r79 = load i64, i64* %r78
%r80 = zext i64 %r79 to i192
%r81 = shl i192 %r80, 128
%r82 = or i192 %r76, %r81
%r83 = zext i192 %r82 to i256
%r85 = getelementptr i64, i64* %r4, i32 3
%r86 = load i64, i64* %r85
%r87 = zext i64 %r86 to i256
%r88 = shl i256 %r87, 192
%r89 = or i256 %r83, %r88
%r90 = zext i256 %r89 to i320
%r91 = sub i320 %r51, %r90
%r92 = lshr i320 %r91, 256
%r93 = trunc i320 %r92 to i1
br i1%r93, label %carry, label %nocarry
nocarry:
%r94 = trunc i320 %r91 to i256
%r95 = trunc i256 %r94 to i64
%r97 = getelementptr i64, i64* %r1, i32 0
store i64 %r95, i64* %r97
%r98 = lshr i256 %r94, 64
%r99 = trunc i256 %r98 to i64
%r101 = getelementptr i64, i64* %r1, i32 1
store i64 %r99, i64* %r101
%r102 = lshr i256 %r98, 64
%r103 = trunc i256 %r102 to i64
%r105 = getelementptr i64, i64* %r1, i32 2
store i64 %r103, i64* %r105
%r106 = lshr i256 %r102, 64
%r107 = trunc i256 %r106 to i64
%r109 = getelementptr i64, i64* %r1, i32 3
store i64 %r107, i64* %r109
ret void
carry:
ret void
}
define void @mcl_fp_addNF4L(i64* noalias  %r1, i64* noalias  %r2, i64* noalias  %r3, i64* noalias  %r4)
{
%r5 = load i64, i64* %r2
%r6 = zext i64 %r5 to i128
%r8 = getelementptr i64, i64* %r2, i32 1
%r9 = load i64, i64* %r8
%r10 = zext i64 %r9 to i128
%r11 = shl i128 %r10, 64
%r12 = or i128 %r6, %r11
%r13 = zext i128 %r12 to i192
%r15 = getelementptr i64, i64* %r2, i32 2
%r16 = load i64, i64* %r15
%r17 = zext i64 %r16 to i192
%r18 = shl i192 %r17, 128
%r19 = or i192 %r13, %r18
%r20 = zext i192 %r19 to i256
%r22 = getelementptr i64, i64* %r2, i32 3
%r23 = load i64, i64* %r22
%r24 = zext i64 %r23 to i256
%r25 = shl i256 %r24, 192
%r26 = or i256 %r20, %r25
%r27 = load i64, i64* %r3
%r28 = zext i64 %r27 to i128
%r30 = getelementptr i64, i64* %r3, i32 1
%r31 = load i64, i64* %r30
%r32 = zext i64 %r31 to i128
%r33 = shl i128 %r32, 64
%r34 = or i128 %r28, %r33
%r35 = zext i128 %r34 to i192
%r37 = getelementptr i64, i64* %r3, i32 2
%r38 = load i64, i64* %r37
%r39 = zext i64 %r38 to i192
%r40 = shl i192 %r39, 128
%r41 = or i192 %r35, %r40
%r42 = zext i192 %r41 to i256
%r44 = getelementptr i64, i64* %r3, i32 3
%r45 = load i64, i64* %r44
%r46 = zext i64 %r45 to i256
%r47 = shl i256 %r46, 192
%r48 = or i256 %r42, %r47
%r49 = add i256 %r26, %r48
%r50 = load i64, i64* %r4
%r51 = zext i64 %r50 to i128
%r53 = getelementptr i64, i64* %r4, i32 1
%r54 = load i64, i64* %r53
%r55 = zext i64 %r54 to i128
%r56 = shl i128 %r55, 64
%r57 = or i128 %r51, %r56
%r58 = zext i128 %r57 to i192
%r60 = getelementptr i64, i64* %r4, i32 2
%r61 = load i64, i64* %r60
%r62 = zext i64 %r61 to i192
%r63 = shl i192 %r62, 128
%r64 = or i192 %r58, %r63
%r65 = zext i192 %r64 to i256
%r67 = getelementptr i64, i64* %r4, i32 3
%r68 = load i64, i64* %r67
%r69 = zext i64 %r68 to i256
%r70 = shl i256 %r69, 192
%r71 = or i256 %r65, %r70
%r72 = sub i256 %r49, %r71
%r73 = lshr i256 %r72, 255
%r74 = trunc i256 %r73 to i1
%r75 = select i1 %r74, i256 %r49, i256 %r72
%r76 = trunc i256 %r75 to i64
%r78 = getelementptr i64, i64* %r1, i32 0
store i64 %r76, i64* %r78
%r79 = lshr i256 %r75, 64
%r80 = trunc i256 %r79 to i64
%r82 = getelementptr i64, i64* %r1, i32 1
store i64 %r80, i64* %r82
%r83 = lshr i256 %r79, 64
%r84 = trunc i256 %r83 to i64
%r86 = getelementptr i64, i64* %r1, i32 2
store i64 %r84, i64* %r86
%r87 = lshr i256 %r83, 64
%r88 = trunc i256 %r87 to i64
%r90 = getelementptr i64, i64* %r1, i32 3
store i64 %r88, i64* %r90
ret void
}
define void @mcl_fp_sub4L(i64* noalias  %r1, i64* noalias  %r2, i64* noalias  %r3, i64* noalias  %r4)
{
%r5 = load i64, i64* %r2
%r6 = zext i64 %r5 to i128
%r8 = getelementptr i64, i64* %r2, i32 1
%r9 = load i64, i64* %r8
%r10 = zext i64 %r9 to i128
%r11 = shl i128 %r10, 64
%r12 = or i128 %r6, %r11
%r13 = zext i128 %r12 to i192
%r15 = getelementptr i64, i64* %r2, i32 2
%r16 = load i64, i64* %r15
%r17 = zext i64 %r16 to i192
%r18 = shl i192 %r17, 128
%r19 = or i192 %r13, %r18
%r20 = zext i192 %r19 to i256
%r22 = getelementptr i64, i64* %r2, i32 3
%r23 = load i64, i64* %r22
%r24 = zext i64 %r23 to i256
%r25 = shl i256 %r24, 192
%r26 = or i256 %r20, %r25
%r27 = load i64, i64* %r3
%r28 = zext i64 %r27 to i128
%r30 = getelementptr i64, i64* %r3, i32 1
%r31 = load i64, i64* %r30
%r32 = zext i64 %r31 to i128
%r33 = shl i128 %r32, 64
%r34 = or i128 %r28, %r33
%r35 = zext i128 %r34 to i192
%r37 = getelementptr i64, i64* %r3, i32 2
%r38 = load i64, i64* %r37
%r39 = zext i64 %r38 to i192
%r40 = shl i192 %r39, 128
%r41 = or i192 %r35, %r40
%r42 = zext i192 %r41 to i256
%r44 = getelementptr i64, i64* %r3, i32 3
%r45 = load i64, i64* %r44
%r46 = zext i64 %r45 to i256
%r47 = shl i256 %r46, 192
%r48 = or i256 %r42, %r47
%r49 = zext i256 %r26 to i320
%r50 = zext i256 %r48 to i320
%r51 = sub i320 %r49, %r50
%r52 = trunc i320 %r51 to i256
%r53 = lshr i320 %r51, 256
%r54 = trunc i320 %r53 to i1
%r55 = trunc i256 %r52 to i64
%r57 = getelementptr i64, i64* %r1, i32 0
store i64 %r55, i64* %r57
%r58 = lshr i256 %r52, 64
%r59 = trunc i256 %r58 to i64
%r61 = getelementptr i64, i64* %r1, i32 1
store i64 %r59, i64* %r61
%r62 = lshr i256 %r58, 64
%r63 = trunc i256 %r62 to i64
%r65 = getelementptr i64, i64* %r1, i32 2
store i64 %r63, i64* %r65
%r66 = lshr i256 %r62, 64
%r67 = trunc i256 %r66 to i64
%r69 = getelementptr i64, i64* %r1, i32 3
store i64 %r67, i64* %r69
br i1%r54, label %carry, label %nocarry
nocarry:
ret void
carry:
%r70 = load i64, i64* %r4
%r71 = zext i64 %r70 to i128
%r73 = getelementptr i64, i64* %r4, i32 1
%r74 = load i64, i64* %r73
%r75 = zext i64 %r74 to i128
%r76 = shl i128 %r75, 64
%r77 = or i128 %r71, %r76
%r78 = zext i128 %r77 to i192
%r80 = getelementptr i64, i64* %r4, i32 2
%r81 = load i64, i64* %r80
%r82 = zext i64 %r81 to i192
%r83 = shl i192 %r82, 128
%r84 = or i192 %r78, %r83
%r85 = zext i192 %r84 to i256
%r87 = getelementptr i64, i64* %r4, i32 3
%r88 = load i64, i64* %r87
%r89 = zext i64 %r88 to i256
%r90 = shl i256 %r89, 192
%r91 = or i256 %r85, %r90
%r92 = add i256 %r52, %r91
%r93 = trunc i256 %r92 to i64
%r95 = getelementptr i64, i64* %r1, i32 0
store i64 %r93, i64* %r95
%r96 = lshr i256 %r92, 64
%r97 = trunc i256 %r96 to i64
%r99 = getelementptr i64, i64* %r1, i32 1
store i64 %r97, i64* %r99
%r100 = lshr i256 %r96, 64
%r101 = trunc i256 %r100 to i64
%r103 = getelementptr i64, i64* %r1, i32 2
store i64 %r101, i64* %r103
%r104 = lshr i256 %r100, 64
%r105 = trunc i256 %r104 to i64
%r107 = getelementptr i64, i64* %r1, i32 3
store i64 %r105, i64* %r107
ret void
}
define void @mcl_fp_subNF4L(i64* noalias  %r1, i64* noalias  %r2, i64* noalias  %r3, i64* noalias  %r4)
{
%r5 = load i64, i64* %r2
%r6 = zext i64 %r5 to i128
%r8 = getelementptr i64, i64* %r2, i32 1
%r9 = load i64, i64* %r8
%r10 = zext i64 %r9 to i128
%r11 = shl i128 %r10, 64
%r12 = or i128 %r6, %r11
%r13 = zext i128 %r12 to i192
%r15 = getelementptr i64, i64* %r2, i32 2
%r16 = load i64, i64* %r15
%r17 = zext i64 %r16 to i192
%r18 = shl i192 %r17, 128
%r19 = or i192 %r13, %r18
%r20 = zext i192 %r19 to i256
%r22 = getelementptr i64, i64* %r2, i32 3
%r23 = load i64, i64* %r22
%r24 = zext i64 %r23 to i256
%r25 = shl i256 %r24, 192
%r26 = or i256 %r20, %r25
%r27 = load i64, i64* %r3
%r28 = zext i64 %r27 to i128
%r30 = getelementptr i64, i64* %r3, i32 1
%r31 = load i64, i64* %r30
%r32 = zext i64 %r31 to i128
%r33 = shl i128 %r32, 64
%r34 = or i128 %r28, %r33
%r35 = zext i128 %r34 to i192
%r37 = getelementptr i64, i64* %r3, i32 2
%r38 = load i64, i64* %r37
%r39 = zext i64 %r38 to i192
%r40 = shl i192 %r39, 128
%r41 = or i192 %r35, %r40
%r42 = zext i192 %r41 to i256
%r44 = getelementptr i64, i64* %r3, i32 3
%r45 = load i64, i64* %r44
%r46 = zext i64 %r45 to i256
%r47 = shl i256 %r46, 192
%r48 = or i256 %r42, %r47
%r49 = sub i256 %r26, %r48
%r50 = lshr i256 %r49, 255
%r51 = trunc i256 %r50 to i1
%r52 = load i64, i64* %r4
%r53 = zext i64 %r52 to i128
%r55 = getelementptr i64, i64* %r4, i32 1
%r56 = load i64, i64* %r55
%r57 = zext i64 %r56 to i128
%r58 = shl i128 %r57, 64
%r59 = or i128 %r53, %r58
%r60 = zext i128 %r59 to i192
%r62 = getelementptr i64, i64* %r4, i32 2
%r63 = load i64, i64* %r62
%r64 = zext i64 %r63 to i192
%r65 = shl i192 %r64, 128
%r66 = or i192 %r60, %r65
%r67 = zext i192 %r66 to i256
%r69 = getelementptr i64, i64* %r4, i32 3
%r70 = load i64, i64* %r69
%r71 = zext i64 %r70 to i256
%r72 = shl i256 %r71, 192
%r73 = or i256 %r67, %r72
%r75 = select i1 %r51, i256 %r73, i256 0
%r76 = add i256 %r49, %r75
%r77 = trunc i256 %r76 to i64
%r79 = getelementptr i64, i64* %r1, i32 0
store i64 %r77, i64* %r79
%r80 = lshr i256 %r76, 64
%r81 = trunc i256 %r80 to i64
%r83 = getelementptr i64, i64* %r1, i32 1
store i64 %r81, i64* %r83
%r84 = lshr i256 %r80, 64
%r85 = trunc i256 %r84 to i64
%r87 = getelementptr i64, i64* %r1, i32 2
store i64 %r85, i64* %r87
%r88 = lshr i256 %r84, 64
%r89 = trunc i256 %r88 to i64
%r91 = getelementptr i64, i64* %r1, i32 3
store i64 %r89, i64* %r91
ret void
}
define void @mcl_fpDbl_add4L(i64* noalias  %r1, i64* noalias  %r2, i64* noalias  %r3, i64* noalias  %r4)
{
%r5 = load i64, i64* %r2
%r6 = zext i64 %r5 to i128
%r8 = getelementptr i64, i64* %r2, i32 1
%r9 = load i64, i64* %r8
%r10 = zext i64 %r9 to i128
%r11 = shl i128 %r10, 64
%r12 = or i128 %r6, %r11
%r13 = zext i128 %r12 to i192
%r15 = getelementptr i64, i64* %r2, i32 2
%r16 = load i64, i64* %r15
%r17 = zext i64 %r16 to i192
%r18 = shl i192 %r17, 128
%r19 = or i192 %r13, %r18
%r20 = zext i192 %r19 to i256
%r22 = getelementptr i64, i64* %r2, i32 3
%r23 = load i64, i64* %r22
%r24 = zext i64 %r23 to i256
%r25 = shl i256 %r24, 192
%r26 = or i256 %r20, %r25
%r27 = zext i256 %r26 to i320
%r29 = getelementptr i64, i64* %r2, i32 4
%r30 = load i64, i64* %r29
%r31 = zext i64 %r30 to i320
%r32 = shl i320 %r31, 256
%r33 = or i320 %r27, %r32
%r34 = zext i320 %r33 to i384
%r36 = getelementptr i64, i64* %r2, i32 5
%r37 = load i64, i64* %r36
%r38 = zext i64 %r37 to i384
%r39 = shl i384 %r38, 320
%r40 = or i384 %r34, %r39
%r41 = zext i384 %r40 to i448
%r43 = getelementptr i64, i64* %r2, i32 6
%r44 = load i64, i64* %r43
%r45 = zext i64 %r44 to i448
%r46 = shl i448 %r45, 384
%r47 = or i448 %r41, %r46
%r48 = zext i448 %r47 to i512
%r50 = getelementptr i64, i64* %r2, i32 7
%r51 = load i64, i64* %r50
%r52 = zext i64 %r51 to i512
%r53 = shl i512 %r52, 448
%r54 = or i512 %r48, %r53
%r55 = load i64, i64* %r3
%r56 = zext i64 %r55 to i128
%r58 = getelementptr i64, i64* %r3, i32 1
%r59 = load i64, i64* %r58
%r60 = zext i64 %r59 to i128
%r61 = shl i128 %r60, 64
%r62 = or i128 %r56, %r61
%r63 = zext i128 %r62 to i192
%r65 = getelementptr i64, i64* %r3, i32 2
%r66 = load i64, i64* %r65
%r67 = zext i64 %r66 to i192
%r68 = shl i192 %r67, 128
%r69 = or i192 %r63, %r68
%r70 = zext i192 %r69 to i256
%r72 = getelementptr i64, i64* %r3, i32 3
%r73 = load i64, i64* %r72
%r74 = zext i64 %r73 to i256
%r75 = shl i256 %r74, 192
%r76 = or i256 %r70, %r75
%r77 = zext i256 %r76 to i320
%r79 = getelementptr i64, i64* %r3, i32 4
%r80 = load i64, i64* %r79
%r81 = zext i64 %r80 to i320
%r82 = shl i320 %r81, 256
%r83 = or i320 %r77, %r82
%r84 = zext i320 %r83 to i384
%r86 = getelementptr i64, i64* %r3, i32 5
%r87 = load i64, i64* %r86
%r88 = zext i64 %r87 to i384
%r89 = shl i384 %r88, 320
%r90 = or i384 %r84, %r89
%r91 = zext i384 %r90 to i448
%r93 = getelementptr i64, i64* %r3, i32 6
%r94 = load i64, i64* %r93
%r95 = zext i64 %r94 to i448
%r96 = shl i448 %r95, 384
%r97 = or i448 %r91, %r96
%r98 = zext i448 %r97 to i512
%r100 = getelementptr i64, i64* %r3, i32 7
%r101 = load i64, i64* %r100
%r102 = zext i64 %r101 to i512
%r103 = shl i512 %r102, 448
%r104 = or i512 %r98, %r103
%r105 = zext i512 %r54 to i576
%r106 = zext i512 %r104 to i576
%r107 = add i576 %r105, %r106
%r108 = trunc i576 %r107 to i256
%r109 = trunc i256 %r108 to i64
%r111 = getelementptr i64, i64* %r1, i32 0
store i64 %r109, i64* %r111
%r112 = lshr i256 %r108, 64
%r113 = trunc i256 %r112 to i64
%r115 = getelementptr i64, i64* %r1, i32 1
store i64 %r113, i64* %r115
%r116 = lshr i256 %r112, 64
%r117 = trunc i256 %r116 to i64
%r119 = getelementptr i64, i64* %r1, i32 2
store i64 %r117, i64* %r119
%r120 = lshr i256 %r116, 64
%r121 = trunc i256 %r120 to i64
%r123 = getelementptr i64, i64* %r1, i32 3
store i64 %r121, i64* %r123
%r124 = lshr i576 %r107, 256
%r125 = trunc i576 %r124 to i320
%r126 = load i64, i64* %r4
%r127 = zext i64 %r126 to i128
%r129 = getelementptr i64, i64* %r4, i32 1
%r130 = load i64, i64* %r129
%r131 = zext i64 %r130 to i128
%r132 = shl i128 %r131, 64
%r133 = or i128 %r127, %r132
%r134 = zext i128 %r133 to i192
%r136 = getelementptr i64, i64* %r4, i32 2
%r137 = load i64, i64* %r136
%r138 = zext i64 %r137 to i192
%r139 = shl i192 %r138, 128
%r140 = or i192 %r134, %r139
%r141 = zext i192 %r140 to i256
%r143 = getelementptr i64, i64* %r4, i32 3
%r144 = load i64, i64* %r143
%r145 = zext i64 %r144 to i256
%r146 = shl i256 %r145, 192
%r147 = or i256 %r141, %r146
%r148 = zext i256 %r147 to i320
%r149 = sub i320 %r125, %r148
%r150 = lshr i320 %r149, 256
%r151 = trunc i320 %r150 to i1
%r152 = select i1 %r151, i320 %r125, i320 %r149
%r153 = trunc i320 %r152 to i256
%r155 = getelementptr i64, i64* %r1, i32 4
%r156 = trunc i256 %r153 to i64
%r158 = getelementptr i64, i64* %r155, i32 0
store i64 %r156, i64* %r158
%r159 = lshr i256 %r153, 64
%r160 = trunc i256 %r159 to i64
%r162 = getelementptr i64, i64* %r155, i32 1
store i64 %r160, i64* %r162
%r163 = lshr i256 %r159, 64
%r164 = trunc i256 %r163 to i64
%r166 = getelementptr i64, i64* %r155, i32 2
store i64 %r164, i64* %r166
%r167 = lshr i256 %r163, 64
%r168 = trunc i256 %r167 to i64
%r170 = getelementptr i64, i64* %r155, i32 3
store i64 %r168, i64* %r170
ret void
}
define void @mcl_fpDbl_sub4L(i64* noalias  %r1, i64* noalias  %r2, i64* noalias  %r3, i64* noalias  %r4)
{
%r5 = load i64, i64* %r2
%r6 = zext i64 %r5 to i128
%r8 = getelementptr i64, i64* %r2, i32 1
%r9 = load i64, i64* %r8
%r10 = zext i64 %r9 to i128
%r11 = shl i128 %r10, 64
%r12 = or i128 %r6, %r11
%r13 = zext i128 %r12 to i192
%r15 = getelementptr i64, i64* %r2, i32 2
%r16 = load i64, i64* %r15
%r17 = zext i64 %r16 to i192
%r18 = shl i192 %r17, 128
%r19 = or i192 %r13, %r18
%r20 = zext i192 %r19 to i256
%r22 = getelementptr i64, i64* %r2, i32 3
%r23 = load i64, i64* %r22
%r24 = zext i64 %r23 to i256
%r25 = shl i256 %r24, 192
%r26 = or i256 %r20, %r25
%r27 = zext i256 %r26 to i320
%r29 = getelementptr i64, i64* %r2, i32 4
%r30 = load i64, i64* %r29
%r31 = zext i64 %r30 to i320
%r32 = shl i320 %r31, 256
%r33 = or i320 %r27, %r32
%r34 = zext i320 %r33 to i384
%r36 = getelementptr i64, i64* %r2, i32 5
%r37 = load i64, i64* %r36
%r38 = zext i64 %r37 to i384
%r39 = shl i384 %r38, 320
%r40 = or i384 %r34, %r39
%r41 = zext i384 %r40 to i448
%r43 = getelementptr i64, i64* %r2, i32 6
%r44 = load i64, i64* %r43
%r45 = zext i64 %r44 to i448
%r46 = shl i448 %r45, 384
%r47 = or i448 %r41, %r46
%r48 = zext i448 %r47 to i512
%r50 = getelementptr i64, i64* %r2, i32 7
%r51 = load i64, i64* %r50
%r52 = zext i64 %r51 to i512
%r53 = shl i512 %r52, 448
%r54 = or i512 %r48, %r53
%r55 = load i64, i64* %r3
%r56 = zext i64 %r55 to i128
%r58 = getelementptr i64, i64* %r3, i32 1
%r59 = load i64, i64* %r58
%r60 = zext i64 %r59 to i128
%r61 = shl i128 %r60, 64
%r62 = or i128 %r56, %r61
%r63 = zext i128 %r62 to i192
%r65 = getelementptr i64, i64* %r3, i32 2
%r66 = load i64, i64* %r65
%r67 = zext i64 %r66 to i192
%r68 = shl i192 %r67, 128
%r69 = or i192 %r63, %r68
%r70 = zext i192 %r69 to i256
%r72 = getelementptr i64, i64* %r3, i32 3
%r73 = load i64, i64* %r72
%r74 = zext i64 %r73 to i256
%r75 = shl i256 %r74, 192
%r76 = or i256 %r70, %r75
%r77 = zext i256 %r76 to i320
%r79 = getelementptr i64, i64* %r3, i32 4
%r80 = load i64, i64* %r79
%r81 = zext i64 %r80 to i320
%r82 = shl i320 %r81, 256
%r83 = or i320 %r77, %r82
%r84 = zext i320 %r83 to i384
%r86 = getelementptr i64, i64* %r3, i32 5
%r87 = load i64, i64* %r86
%r88 = zext i64 %r87 to i384
%r89 = shl i384 %r88, 320
%r90 = or i384 %r84, %r89
%r91 = zext i384 %r90 to i448
%r93 = getelementptr i64, i64* %r3, i32 6
%r94 = load i64, i64* %r93
%r95 = zext i64 %r94 to i448
%r96 = shl i448 %r95, 384
%r97 = or i448 %r91, %r96
%r98 = zext i448 %r97 to i512
%r100 = getelementptr i64, i64* %r3, i32 7
%r101 = load i64, i64* %r100
%r102 = zext i64 %r101 to i512
%r103 = shl i512 %r102, 448
%r104 = or i512 %r98, %r103
%r105 = zext i512 %r54 to i576
%r106 = zext i512 %r104 to i576
%r107 = sub i576 %r105, %r106
%r108 = trunc i576 %r107 to i256
%r109 = trunc i256 %r108 to i64
%r111 = getelementptr i64, i64* %r1, i32 0
store i64 %r109, i64* %r111
%r112 = lshr i256 %r108, 64
%r113 = trunc i256 %r112 to i64
%r115 = getelementptr i64, i64* %r1, i32 1
store i64 %r113, i64* %r115
%r116 = lshr i256 %r112, 64
%r117 = trunc i256 %r116 to i64
%r119 = getelementptr i64, i64* %r1, i32 2
store i64 %r117, i64* %r119
%r120 = lshr i256 %r116, 64
%r121 = trunc i256 %r120 to i64
%r123 = getelementptr i64, i64* %r1, i32 3
store i64 %r121, i64* %r123
%r124 = lshr i576 %r107, 256
%r125 = trunc i576 %r124 to i256
%r126 = lshr i576 %r107, 512
%r127 = trunc i576 %r126 to i1
%r128 = load i64, i64* %r4
%r129 = zext i64 %r128 to i128
%r131 = getelementptr i64, i64* %r4, i32 1
%r132 = load i64, i64* %r131
%r133 = zext i64 %r132 to i128
%r134 = shl i128 %r133, 64
%r135 = or i128 %r129, %r134
%r136 = zext i128 %r135 to i192
%r138 = getelementptr i64, i64* %r4, i32 2
%r139 = load i64, i64* %r138
%r140 = zext i64 %r139 to i192
%r141 = shl i192 %r140, 128
%r142 = or i192 %r136, %r141
%r143 = zext i192 %r142 to i256
%r145 = getelementptr i64, i64* %r4, i32 3
%r146 = load i64, i64* %r145
%r147 = zext i64 %r146 to i256
%r148 = shl i256 %r147, 192
%r149 = or i256 %r143, %r148
%r151 = select i1 %r127, i256 %r149, i256 0
%r152 = add i256 %r125, %r151
%r154 = getelementptr i64, i64* %r1, i32 4
%r155 = trunc i256 %r152 to i64
%r157 = getelementptr i64, i64* %r154, i32 0
store i64 %r155, i64* %r157
%r158 = lshr i256 %r152, 64
%r159 = trunc i256 %r158 to i64
%r161 = getelementptr i64, i64* %r154, i32 1
store i64 %r159, i64* %r161
%r162 = lshr i256 %r158, 64
%r163 = trunc i256 %r162 to i64
%r165 = getelementptr i64, i64* %r154, i32 2
store i64 %r163, i64* %r165
%r166 = lshr i256 %r162, 64
%r167 = trunc i256 %r166 to i64
%r169 = getelementptr i64, i64* %r154, i32 3
store i64 %r167, i64* %r169
ret void
}
define private i384 @mulPv320x64(i64* noalias  %r2, i64 %r3)
{
%r5 = call i128 @mulPos64x64(i64* %r2, i64 %r3, i64 0)
%r6 = trunc i128 %r5 to i64
%r7 = call i64 @extractHigh64(i128 %r5)
%r9 = call i128 @mulPos64x64(i64* %r2, i64 %r3, i64 1)
%r10 = trunc i128 %r9 to i64
%r11 = call i64 @extractHigh64(i128 %r9)
%r13 = call i128 @mulPos64x64(i64* %r2, i64 %r3, i64 2)
%r14 = trunc i128 %r13 to i64
%r15 = call i64 @extractHigh64(i128 %r13)
%r17 = call i128 @mulPos64x64(i64* %r2, i64 %r3, i64 3)
%r18 = trunc i128 %r17 to i64
%r19 = call i64 @extractHigh64(i128 %r17)
%r21 = call i128 @mulPos64x64(i64* %r2, i64 %r3, i64 4)
%r22 = trunc i128 %r21 to i64
%r23 = call i64 @extractHigh64(i128 %r21)
%r24 = zext i64 %r6 to i128
%r25 = zext i64 %r10 to i128
%r26 = shl i128 %r25, 64
%r27 = or i128 %r24, %r26
%r28 = zext i128 %r27 to i192
%r29 = zext i64 %r14 to i192
%r30 = shl i192 %r29, 128
%r31 = or i192 %r28, %r30
%r32 = zext i192 %r31 to i256
%r33 = zext i64 %r18 to i256
%r34 = shl i256 %r33, 192
%r35 = or i256 %r32, %r34
%r36 = zext i256 %r35 to i320
%r37 = zext i64 %r22 to i320
%r38 = shl i320 %r37, 256
%r39 = or i320 %r36, %r38
%r40 = zext i64 %r7 to i128
%r41 = zext i64 %r11 to i128
%r42 = shl i128 %r41, 64
%r43 = or i128 %r40, %r42
%r44 = zext i128 %r43 to i192
%r45 = zext i64 %r15 to i192
%r46 = shl i192 %r45, 128
%r47 = or i192 %r44, %r46
%r48 = zext i192 %r47 to i256
%r49 = zext i64 %r19 to i256
%r50 = shl i256 %r49, 192
%r51 = or i256 %r48, %r50
%r52 = zext i256 %r51 to i320
%r53 = zext i64 %r23 to i320
%r54 = shl i320 %r53, 256
%r55 = or i320 %r52, %r54
%r56 = zext i320 %r39 to i384
%r57 = zext i320 %r55 to i384
%r58 = shl i384 %r57, 64
%r59 = add i384 %r56, %r58
ret i384 %r59
}
define void @mcl_fp_mulUnitPre5L(i64* noalias  %r1, i64* noalias  %r2, i64 %r3)
{
%r4 = call i384 @mulPv320x64(i64* %r2, i64 %r3)
%r5 = trunc i384 %r4 to i64
%r7 = getelementptr i64, i64* %r1, i32 0
store i64 %r5, i64* %r7
%r8 = lshr i384 %r4, 64
%r9 = trunc i384 %r8 to i64
%r11 = getelementptr i64, i64* %r1, i32 1
store i64 %r9, i64* %r11
%r12 = lshr i384 %r8, 64
%r13 = trunc i384 %r12 to i64
%r15 = getelementptr i64, i64* %r1, i32 2
store i64 %r13, i64* %r15
%r16 = lshr i384 %r12, 64
%r17 = trunc i384 %r16 to i64
%r19 = getelementptr i64, i64* %r1, i32 3
store i64 %r17, i64* %r19
%r20 = lshr i384 %r16, 64
%r21 = trunc i384 %r20 to i64
%r23 = getelementptr i64, i64* %r1, i32 4
store i64 %r21, i64* %r23
%r24 = lshr i384 %r20, 64
%r25 = trunc i384 %r24 to i64
%r27 = getelementptr i64, i64* %r1, i32 5
store i64 %r25, i64* %r27
ret void
}
define void @mcl_fpDbl_mulPre5L(i64* noalias  %r1, i64* noalias  %r2, i64* noalias  %r3)
{
%r4 = load i64, i64* %r3
%r5 = call i384 @mulPv320x64(i64* %r2, i64 %r4)
%r6 = trunc i384 %r5 to i64
store i64 %r6, i64* %r1
%r7 = lshr i384 %r5, 64
%r9 = getelementptr i64, i64* %r3, i32 1
%r10 = load i64, i64* %r9
%r11 = call i384 @mulPv320x64(i64* %r2, i64 %r10)
%r12 = add i384 %r7, %r11
%r13 = trunc i384 %r12 to i64
%r15 = getelementptr i64, i64* %r1, i32 1
store i64 %r13, i64* %r15
%r16 = lshr i384 %r12, 64
%r18 = getelementptr i64, i64* %r3, i32 2
%r19 = load i64, i64* %r18
%r20 = call i384 @mulPv320x64(i64* %r2, i64 %r19)
%r21 = add i384 %r16, %r20
%r22 = trunc i384 %r21 to i64
%r24 = getelementptr i64, i64* %r1, i32 2
store i64 %r22, i64* %r24
%r25 = lshr i384 %r21, 64
%r27 = getelementptr i64, i64* %r3, i32 3
%r28 = load i64, i64* %r27
%r29 = call i384 @mulPv320x64(i64* %r2, i64 %r28)
%r30 = add i384 %r25, %r29
%r31 = trunc i384 %r30 to i64
%r33 = getelementptr i64, i64* %r1, i32 3
store i64 %r31, i64* %r33
%r34 = lshr i384 %r30, 64
%r36 = getelementptr i64, i64* %r3, i32 4
%r37 = load i64, i64* %r36
%r38 = call i384 @mulPv320x64(i64* %r2, i64 %r37)
%r39 = add i384 %r34, %r38
%r41 = getelementptr i64, i64* %r1, i32 4
%r42 = trunc i384 %r39 to i64
%r44 = getelementptr i64, i64* %r41, i32 0
store i64 %r42, i64* %r44
%r45 = lshr i384 %r39, 64
%r46 = trunc i384 %r45 to i64
%r48 = getelementptr i64, i64* %r41, i32 1
store i64 %r46, i64* %r48
%r49 = lshr i384 %r45, 64
%r50 = trunc i384 %r49 to i64
%r52 = getelementptr i64, i64* %r41, i32 2
store i64 %r50, i64* %r52
%r53 = lshr i384 %r49, 64
%r54 = trunc i384 %r53 to i64
%r56 = getelementptr i64, i64* %r41, i32 3
store i64 %r54, i64* %r56
%r57 = lshr i384 %r53, 64
%r58 = trunc i384 %r57 to i64
%r60 = getelementptr i64, i64* %r41, i32 4
store i64 %r58, i64* %r60
%r61 = lshr i384 %r57, 64
%r62 = trunc i384 %r61 to i64
%r64 = getelementptr i64, i64* %r41, i32 5
store i64 %r62, i64* %r64
ret void
}
define void @mcl_fpDbl_sqrPre5L(i64* noalias  %r1, i64* noalias  %r2)
{
%r3 = load i64, i64* %r2
%r4 = call i384 @mulPv320x64(i64* %r2, i64 %r3)
%r5 = trunc i384 %r4 to i64
store i64 %r5, i64* %r1
%r6 = lshr i384 %r4, 64
%r8 = getelementptr i64, i64* %r2, i32 1
%r9 = load i64, i64* %r8
%r10 = call i384 @mulPv320x64(i64* %r2, i64 %r9)
%r11 = add i384 %r6, %r10
%r12 = trunc i384 %r11 to i64
%r14 = getelementptr i64, i64* %r1, i32 1
store i64 %r12, i64* %r14
%r15 = lshr i384 %r11, 64
%r17 = getelementptr i64, i64* %r2, i32 2
%r18 = load i64, i64* %r17
%r19 = call i384 @mulPv320x64(i64* %r2, i64 %r18)
%r20 = add i384 %r15, %r19
%r21 = trunc i384 %r20 to i64
%r23 = getelementptr i64, i64* %r1, i32 2
store i64 %r21, i64* %r23
%r24 = lshr i384 %r20, 64
%r26 = getelementptr i64, i64* %r2, i32 3
%r27 = load i64, i64* %r26
%r28 = call i384 @mulPv320x64(i64* %r2, i64 %r27)
%r29 = add i384 %r24, %r28
%r30 = trunc i384 %r29 to i64
%r32 = getelementptr i64, i64* %r1, i32 3
store i64 %r30, i64* %r32
%r33 = lshr i384 %r29, 64
%r35 = getelementptr i64, i64* %r2, i32 4
%r36 = load i64, i64* %r35
%r37 = call i384 @mulPv320x64(i64* %r2, i64 %r36)
%r38 = add i384 %r33, %r37
%r40 = getelementptr i64, i64* %r1, i32 4
%r41 = trunc i384 %r38 to i64
%r43 = getelementptr i64, i64* %r40, i32 0
store i64 %r41, i64* %r43
%r44 = lshr i384 %r38, 64
%r45 = trunc i384 %r44 to i64
%r47 = getelementptr i64, i64* %r40, i32 1
store i64 %r45, i64* %r47
%r48 = lshr i384 %r44, 64
%r49 = trunc i384 %r48 to i64
%r51 = getelementptr i64, i64* %r40, i32 2
store i64 %r49, i64* %r51
%r52 = lshr i384 %r48, 64
%r53 = trunc i384 %r52 to i64
%r55 = getelementptr i64, i64* %r40, i32 3
store i64 %r53, i64* %r55
%r56 = lshr i384 %r52, 64
%r57 = trunc i384 %r56 to i64
%r59 = getelementptr i64, i64* %r40, i32 4
store i64 %r57, i64* %r59
%r60 = lshr i384 %r56, 64
%r61 = trunc i384 %r60 to i64
%r63 = getelementptr i64, i64* %r40, i32 5
store i64 %r61, i64* %r63
ret void
}
define void @mcl_fp_mont5L(i64* %r1, i64* %r2, i64* %r3, i64* %r4)
{
%r6 = getelementptr i64, i64* %r4, i32 -1
%r7 = load i64, i64* %r6
%r9 = getelementptr i64, i64* %r3, i32 0
%r10 = load i64, i64* %r9
%r11 = call i384 @mulPv320x64(i64* %r2, i64 %r10)
%r12 = zext i384 %r11 to i448
%r13 = trunc i384 %r11 to i64
%r14 = mul i64 %r13, %r7
%r15 = call i384 @mulPv320x64(i64* %r4, i64 %r14)
%r16 = zext i384 %r15 to i448
%r17 = add i448 %r12, %r16
%r18 = lshr i448 %r17, 64
%r20 = getelementptr i64, i64* %r3, i32 1
%r21 = load i64, i64* %r20
%r22 = call i384 @mulPv320x64(i64* %r2, i64 %r21)
%r23 = zext i384 %r22 to i448
%r24 = add i448 %r18, %r23
%r25 = trunc i448 %r24 to i64
%r26 = mul i64 %r25, %r7
%r27 = call i384 @mulPv320x64(i64* %r4, i64 %r26)
%r28 = zext i384 %r27 to i448
%r29 = add i448 %r24, %r28
%r30 = lshr i448 %r29, 64
%r32 = getelementptr i64, i64* %r3, i32 2
%r33 = load i64, i64* %r32
%r34 = call i384 @mulPv320x64(i64* %r2, i64 %r33)
%r35 = zext i384 %r34 to i448
%r36 = add i448 %r30, %r35
%r37 = trunc i448 %r36 to i64
%r38 = mul i64 %r37, %r7
%r39 = call i384 @mulPv320x64(i64* %r4, i64 %r38)
%r40 = zext i384 %r39 to i448
%r41 = add i448 %r36, %r40
%r42 = lshr i448 %r41, 64
%r44 = getelementptr i64, i64* %r3, i32 3
%r45 = load i64, i64* %r44
%r46 = call i384 @mulPv320x64(i64* %r2, i64 %r45)
%r47 = zext i384 %r46 to i448
%r48 = add i448 %r42, %r47
%r49 = trunc i448 %r48 to i64
%r50 = mul i64 %r49, %r7
%r51 = call i384 @mulPv320x64(i64* %r4, i64 %r50)
%r52 = zext i384 %r51 to i448
%r53 = add i448 %r48, %r52
%r54 = lshr i448 %r53, 64
%r56 = getelementptr i64, i64* %r3, i32 4
%r57 = load i64, i64* %r56
%r58 = call i384 @mulPv320x64(i64* %r2, i64 %r57)
%r59 = zext i384 %r58 to i448
%r60 = add i448 %r54, %r59
%r61 = trunc i448 %r60 to i64
%r62 = mul i64 %r61, %r7
%r63 = call i384 @mulPv320x64(i64* %r4, i64 %r62)
%r64 = zext i384 %r63 to i448
%r65 = add i448 %r60, %r64
%r66 = lshr i448 %r65, 64
%r67 = trunc i448 %r66 to i384
%r68 = load i64, i64* %r4
%r69 = zext i64 %r68 to i128
%r71 = getelementptr i64, i64* %r4, i32 1
%r72 = load i64, i64* %r71
%r73 = zext i64 %r72 to i128
%r74 = shl i128 %r73, 64
%r75 = or i128 %r69, %r74
%r76 = zext i128 %r75 to i192
%r78 = getelementptr i64, i64* %r4, i32 2
%r79 = load i64, i64* %r78
%r80 = zext i64 %r79 to i192
%r81 = shl i192 %r80, 128
%r82 = or i192 %r76, %r81
%r83 = zext i192 %r82 to i256
%r85 = getelementptr i64, i64* %r4, i32 3
%r86 = load i64, i64* %r85
%r87 = zext i64 %r86 to i256
%r88 = shl i256 %r87, 192
%r89 = or i256 %r83, %r88
%r90 = zext i256 %r89 to i320
%r92 = getelementptr i64, i64* %r4, i32 4
%r93 = load i64, i64* %r92
%r94 = zext i64 %r93 to i320
%r95 = shl i320 %r94, 256
%r96 = or i320 %r90, %r95
%r97 = zext i320 %r96 to i384
%r98 = sub i384 %r67, %r97
%r99 = lshr i384 %r98, 320
%r100 = trunc i384 %r99 to i1
%r101 = select i1 %r100, i384 %r67, i384 %r98
%r102 = trunc i384 %r101 to i320
%r103 = trunc i320 %r102 to i64
%r105 = getelementptr i64, i64* %r1, i32 0
store i64 %r103, i64* %r105
%r106 = lshr i320 %r102, 64
%r107 = trunc i320 %r106 to i64
%r109 = getelementptr i64, i64* %r1, i32 1
store i64 %r107, i64* %r109
%r110 = lshr i320 %r106, 64
%r111 = trunc i320 %r110 to i64
%r113 = getelementptr i64, i64* %r1, i32 2
store i64 %r111, i64* %r113
%r114 = lshr i320 %r110, 64
%r115 = trunc i320 %r114 to i64
%r117 = getelementptr i64, i64* %r1, i32 3
store i64 %r115, i64* %r117
%r118 = lshr i320 %r114, 64
%r119 = trunc i320 %r118 to i64
%r121 = getelementptr i64, i64* %r1, i32 4
store i64 %r119, i64* %r121
ret void
}
define void @mcl_fp_montNF5L(i64* %r1, i64* %r2, i64* %r3, i64* %r4)
{
%r6 = getelementptr i64, i64* %r4, i32 -1
%r7 = load i64, i64* %r6
%r8 = load i64, i64* %r3
%r9 = call i384 @mulPv320x64(i64* %r2, i64 %r8)
%r10 = trunc i384 %r9 to i64
%r11 = mul i64 %r10, %r7
%r12 = call i384 @mulPv320x64(i64* %r4, i64 %r11)
%r13 = add i384 %r9, %r12
%r14 = lshr i384 %r13, 64
%r16 = getelementptr i64, i64* %r3, i32 1
%r17 = load i64, i64* %r16
%r18 = call i384 @mulPv320x64(i64* %r2, i64 %r17)
%r19 = add i384 %r14, %r18
%r20 = trunc i384 %r19 to i64
%r21 = mul i64 %r20, %r7
%r22 = call i384 @mulPv320x64(i64* %r4, i64 %r21)
%r23 = add i384 %r19, %r22
%r24 = lshr i384 %r23, 64
%r26 = getelementptr i64, i64* %r3, i32 2
%r27 = load i64, i64* %r26
%r28 = call i384 @mulPv320x64(i64* %r2, i64 %r27)
%r29 = add i384 %r24, %r28
%r30 = trunc i384 %r29 to i64
%r31 = mul i64 %r30, %r7
%r32 = call i384 @mulPv320x64(i64* %r4, i64 %r31)
%r33 = add i384 %r29, %r32
%r34 = lshr i384 %r33, 64
%r36 = getelementptr i64, i64* %r3, i32 3
%r37 = load i64, i64* %r36
%r38 = call i384 @mulPv320x64(i64* %r2, i64 %r37)
%r39 = add i384 %r34, %r38
%r40 = trunc i384 %r39 to i64
%r41 = mul i64 %r40, %r7
%r42 = call i384 @mulPv320x64(i64* %r4, i64 %r41)
%r43 = add i384 %r39, %r42
%r44 = lshr i384 %r43, 64
%r46 = getelementptr i64, i64* %r3, i32 4
%r47 = load i64, i64* %r46
%r48 = call i384 @mulPv320x64(i64* %r2, i64 %r47)
%r49 = add i384 %r44, %r48
%r50 = trunc i384 %r49 to i64
%r51 = mul i64 %r50, %r7
%r52 = call i384 @mulPv320x64(i64* %r4, i64 %r51)
%r53 = add i384 %r49, %r52
%r54 = lshr i384 %r53, 64
%r55 = trunc i384 %r54 to i320
%r56 = load i64, i64* %r4
%r57 = zext i64 %r56 to i128
%r59 = getelementptr i64, i64* %r4, i32 1
%r60 = load i64, i64* %r59
%r61 = zext i64 %r60 to i128
%r62 = shl i128 %r61, 64
%r63 = or i128 %r57, %r62
%r64 = zext i128 %r63 to i192
%r66 = getelementptr i64, i64* %r4, i32 2
%r67 = load i64, i64* %r66
%r68 = zext i64 %r67 to i192
%r69 = shl i192 %r68, 128
%r70 = or i192 %r64, %r69
%r71 = zext i192 %r70 to i256
%r73 = getelementptr i64, i64* %r4, i32 3
%r74 = load i64, i64* %r73
%r75 = zext i64 %r74 to i256
%r76 = shl i256 %r75, 192
%r77 = or i256 %r71, %r76
%r78 = zext i256 %r77 to i320
%r80 = getelementptr i64, i64* %r4, i32 4
%r81 = load i64, i64* %r80
%r82 = zext i64 %r81 to i320
%r83 = shl i320 %r82, 256
%r84 = or i320 %r78, %r83
%r85 = sub i320 %r55, %r84
%r86 = lshr i320 %r85, 319
%r87 = trunc i320 %r86 to i1
%r88 = select i1 %r87, i320 %r55, i320 %r85
%r89 = trunc i320 %r88 to i64
%r91 = getelementptr i64, i64* %r1, i32 0
store i64 %r89, i64* %r91
%r92 = lshr i320 %r88, 64
%r93 = trunc i320 %r92 to i64
%r95 = getelementptr i64, i64* %r1, i32 1
store i64 %r93, i64* %r95
%r96 = lshr i320 %r92, 64
%r97 = trunc i320 %r96 to i64
%r99 = getelementptr i64, i64* %r1, i32 2
store i64 %r97, i64* %r99
%r100 = lshr i320 %r96, 64
%r101 = trunc i320 %r100 to i64
%r103 = getelementptr i64, i64* %r1, i32 3
store i64 %r101, i64* %r103
%r104 = lshr i320 %r100, 64
%r105 = trunc i320 %r104 to i64
%r107 = getelementptr i64, i64* %r1, i32 4
store i64 %r105, i64* %r107
ret void
}
define void @mcl_fp_montRed5L(i64* noalias  %r1, i64* noalias  %r2, i64* noalias  %r3)
{
%r5 = getelementptr i64, i64* %r3, i32 -1
%r6 = load i64, i64* %r5
%r7 = load i64, i64* %r3
%r8 = zext i64 %r7 to i128
%r10 = getelementptr i64, i64* %r3, i32 1
%r11 = load i64, i64* %r10
%r12 = zext i64 %r11 to i128
%r13 = shl i128 %r12, 64
%r14 = or i128 %r8, %r13
%r15 = zext i128 %r14 to i192
%r17 = getelementptr i64, i64* %r3, i32 2
%r18 = load i64, i64* %r17
%r19 = zext i64 %r18 to i192
%r20 = shl i192 %r19, 128
%r21 = or i192 %r15, %r20
%r22 = zext i192 %r21 to i256
%r24 = getelementptr i64, i64* %r3, i32 3
%r25 = load i64, i64* %r24
%r26 = zext i64 %r25 to i256
%r27 = shl i256 %r26, 192
%r28 = or i256 %r22, %r27
%r29 = zext i256 %r28 to i320
%r31 = getelementptr i64, i64* %r3, i32 4
%r32 = load i64, i64* %r31
%r33 = zext i64 %r32 to i320
%r34 = shl i320 %r33, 256
%r35 = or i320 %r29, %r34
%r36 = load i64, i64* %r2
%r37 = zext i64 %r36 to i128
%r39 = getelementptr i64, i64* %r2, i32 1
%r40 = load i64, i64* %r39
%r41 = zext i64 %r40 to i128
%r42 = shl i128 %r41, 64
%r43 = or i128 %r37, %r42
%r44 = zext i128 %r43 to i192
%r46 = getelementptr i64, i64* %r2, i32 2
%r47 = load i64, i64* %r46
%r48 = zext i64 %r47 to i192
%r49 = shl i192 %r48, 128
%r50 = or i192 %r44, %r49
%r51 = zext i192 %r50 to i256
%r53 = getelementptr i64, i64* %r2, i32 3
%r54 = load i64, i64* %r53
%r55 = zext i64 %r54 to i256
%r56 = shl i256 %r55, 192
%r57 = or i256 %r51, %r56
%r58 = zext i256 %r57 to i320
%r60 = getelementptr i64, i64* %r2, i32 4
%r61 = load i64, i64* %r60
%r62 = zext i64 %r61 to i320
%r63 = shl i320 %r62, 256
%r64 = or i320 %r58, %r63
%r65 = zext i320 %r64 to i384
%r67 = getelementptr i64, i64* %r2, i32 5
%r68 = load i64, i64* %r67
%r69 = zext i64 %r68 to i384
%r70 = shl i384 %r69, 320
%r71 = or i384 %r65, %r70
%r72 = zext i384 %r71 to i448
%r74 = getelementptr i64, i64* %r2, i32 6
%r75 = load i64, i64* %r74
%r76 = zext i64 %r75 to i448
%r77 = shl i448 %r76, 384
%r78 = or i448 %r72, %r77
%r79 = zext i448 %r78 to i512
%r81 = getelementptr i64, i64* %r2, i32 7
%r82 = load i64, i64* %r81
%r83 = zext i64 %r82 to i512
%r84 = shl i512 %r83, 448
%r85 = or i512 %r79, %r84
%r86 = zext i512 %r85 to i576
%r88 = getelementptr i64, i64* %r2, i32 8
%r89 = load i64, i64* %r88
%r90 = zext i64 %r89 to i576
%r91 = shl i576 %r90, 512
%r92 = or i576 %r86, %r91
%r93 = zext i576 %r92 to i640
%r95 = getelementptr i64, i64* %r2, i32 9
%r96 = load i64, i64* %r95
%r97 = zext i64 %r96 to i640
%r98 = shl i640 %r97, 576
%r99 = or i640 %r93, %r98
%r100 = zext i640 %r99 to i704
%r101 = trunc i704 %r100 to i64
%r102 = mul i64 %r101, %r6
%r103 = call i384 @mulPv320x64(i64* %r3, i64 %r102)
%r104 = zext i384 %r103 to i704
%r105 = add i704 %r100, %r104
%r106 = lshr i704 %r105, 64
%r107 = trunc i704 %r106 to i640
%r108 = trunc i640 %r107 to i64
%r109 = mul i64 %r108, %r6
%r110 = call i384 @mulPv320x64(i64* %r3, i64 %r109)
%r111 = zext i384 %r110 to i640
%r112 = add i640 %r107, %r111
%r113 = lshr i640 %r112, 64
%r114 = trunc i640 %r113 to i576
%r115 = trunc i576 %r114 to i64
%r116 = mul i64 %r115, %r6
%r117 = call i384 @mulPv320x64(i64* %r3, i64 %r116)
%r118 = zext i384 %r117 to i576
%r119 = add i576 %r114, %r118
%r120 = lshr i576 %r119, 64
%r121 = trunc i576 %r120 to i512
%r122 = trunc i512 %r121 to i64
%r123 = mul i64 %r122, %r6
%r124 = call i384 @mulPv320x64(i64* %r3, i64 %r123)
%r125 = zext i384 %r124 to i512
%r126 = add i512 %r121, %r125
%r127 = lshr i512 %r126, 64
%r128 = trunc i512 %r127 to i448
%r129 = trunc i448 %r128 to i64
%r130 = mul i64 %r129, %r6
%r131 = call i384 @mulPv320x64(i64* %r3, i64 %r130)
%r132 = zext i384 %r131 to i448
%r133 = add i448 %r128, %r132
%r134 = lshr i448 %r133, 64
%r135 = trunc i448 %r134 to i384
%r136 = zext i320 %r35 to i384
%r137 = sub i384 %r135, %r136
%r138 = lshr i384 %r137, 320
%r139 = trunc i384 %r138 to i1
%r140 = select i1 %r139, i384 %r135, i384 %r137
%r141 = trunc i384 %r140 to i320
%r142 = trunc i320 %r141 to i64
%r144 = getelementptr i64, i64* %r1, i32 0
store i64 %r142, i64* %r144
%r145 = lshr i320 %r141, 64
%r146 = trunc i320 %r145 to i64
%r148 = getelementptr i64, i64* %r1, i32 1
store i64 %r146, i64* %r148
%r149 = lshr i320 %r145, 64
%r150 = trunc i320 %r149 to i64
%r152 = getelementptr i64, i64* %r1, i32 2
store i64 %r150, i64* %r152
%r153 = lshr i320 %r149, 64
%r154 = trunc i320 %r153 to i64
%r156 = getelementptr i64, i64* %r1, i32 3
store i64 %r154, i64* %r156
%r157 = lshr i320 %r153, 64
%r158 = trunc i320 %r157 to i64
%r160 = getelementptr i64, i64* %r1, i32 4
store i64 %r158, i64* %r160
ret void
}
define i64 @mcl_fp_addPre5L(i64* noalias  %r2, i64* noalias  %r3, i64* noalias  %r4)
{
%r5 = load i64, i64* %r3
%r6 = zext i64 %r5 to i128
%r8 = getelementptr i64, i64* %r3, i32 1
%r9 = load i64, i64* %r8
%r10 = zext i64 %r9 to i128
%r11 = shl i128 %r10, 64
%r12 = or i128 %r6, %r11
%r13 = zext i128 %r12 to i192
%r15 = getelementptr i64, i64* %r3, i32 2
%r16 = load i64, i64* %r15
%r17 = zext i64 %r16 to i192
%r18 = shl i192 %r17, 128
%r19 = or i192 %r13, %r18
%r20 = zext i192 %r19 to i256
%r22 = getelementptr i64, i64* %r3, i32 3
%r23 = load i64, i64* %r22
%r24 = zext i64 %r23 to i256
%r25 = shl i256 %r24, 192
%r26 = or i256 %r20, %r25
%r27 = zext i256 %r26 to i320
%r29 = getelementptr i64, i64* %r3, i32 4
%r30 = load i64, i64* %r29
%r31 = zext i64 %r30 to i320
%r32 = shl i320 %r31, 256
%r33 = or i320 %r27, %r32
%r34 = zext i320 %r33 to i384
%r35 = load i64, i64* %r4
%r36 = zext i64 %r35 to i128
%r38 = getelementptr i64, i64* %r4, i32 1
%r39 = load i64, i64* %r38
%r40 = zext i64 %r39 to i128
%r41 = shl i128 %r40, 64
%r42 = or i128 %r36, %r41
%r43 = zext i128 %r42 to i192
%r45 = getelementptr i64, i64* %r4, i32 2
%r46 = load i64, i64* %r45
%r47 = zext i64 %r46 to i192
%r48 = shl i192 %r47, 128
%r49 = or i192 %r43, %r48
%r50 = zext i192 %r49 to i256
%r52 = getelementptr i64, i64* %r4, i32 3
%r53 = load i64, i64* %r52
%r54 = zext i64 %r53 to i256
%r55 = shl i256 %r54, 192
%r56 = or i256 %r50, %r55
%r57 = zext i256 %r56 to i320
%r59 = getelementptr i64, i64* %r4, i32 4
%r60 = load i64, i64* %r59
%r61 = zext i64 %r60 to i320
%r62 = shl i320 %r61, 256
%r63 = or i320 %r57, %r62
%r64 = zext i320 %r63 to i384
%r65 = add i384 %r34, %r64
%r66 = trunc i384 %r65 to i320
%r67 = trunc i320 %r66 to i64
%r69 = getelementptr i64, i64* %r2, i32 0
store i64 %r67, i64* %r69
%r70 = lshr i320 %r66, 64
%r71 = trunc i320 %r70 to i64
%r73 = getelementptr i64, i64* %r2, i32 1
store i64 %r71, i64* %r73
%r74 = lshr i320 %r70, 64
%r75 = trunc i320 %r74 to i64
%r77 = getelementptr i64, i64* %r2, i32 2
store i64 %r75, i64* %r77
%r78 = lshr i320 %r74, 64
%r79 = trunc i320 %r78 to i64
%r81 = getelementptr i64, i64* %r2, i32 3
store i64 %r79, i64* %r81
%r82 = lshr i320 %r78, 64
%r83 = trunc i320 %r82 to i64
%r85 = getelementptr i64, i64* %r2, i32 4
store i64 %r83, i64* %r85
%r86 = lshr i384 %r65, 320
%r87 = trunc i384 %r86 to i64
ret i64 %r87
}
define i64 @mcl_fp_subPre5L(i64* noalias  %r2, i64* noalias  %r3, i64* noalias  %r4)
{
%r5 = load i64, i64* %r3
%r6 = zext i64 %r5 to i128
%r8 = getelementptr i64, i64* %r3, i32 1
%r9 = load i64, i64* %r8
%r10 = zext i64 %r9 to i128
%r11 = shl i128 %r10, 64
%r12 = or i128 %r6, %r11
%r13 = zext i128 %r12 to i192
%r15 = getelementptr i64, i64* %r3, i32 2
%r16 = load i64, i64* %r15
%r17 = zext i64 %r16 to i192
%r18 = shl i192 %r17, 128
%r19 = or i192 %r13, %r18
%r20 = zext i192 %r19 to i256
%r22 = getelementptr i64, i64* %r3, i32 3
%r23 = load i64, i64* %r22
%r24 = zext i64 %r23 to i256
%r25 = shl i256 %r24, 192
%r26 = or i256 %r20, %r25
%r27 = zext i256 %r26 to i320
%r29 = getelementptr i64, i64* %r3, i32 4
%r30 = load i64, i64* %r29
%r31 = zext i64 %r30 to i320
%r32 = shl i320 %r31, 256
%r33 = or i320 %r27, %r32
%r34 = zext i320 %r33 to i384
%r35 = load i64, i64* %r4
%r36 = zext i64 %r35 to i128
%r38 = getelementptr i64, i64* %r4, i32 1
%r39 = load i64, i64* %r38
%r40 = zext i64 %r39 to i128
%r41 = shl i128 %r40, 64
%r42 = or i128 %r36, %r41
%r43 = zext i128 %r42 to i192
%r45 = getelementptr i64, i64* %r4, i32 2
%r46 = load i64, i64* %r45
%r47 = zext i64 %r46 to i192
%r48 = shl i192 %r47, 128
%r49 = or i192 %r43, %r48
%r50 = zext i192 %r49 to i256
%r52 = getelementptr i64, i64* %r4, i32 3
%r53 = load i64, i64* %r52
%r54 = zext i64 %r53 to i256
%r55 = shl i256 %r54, 192
%r56 = or i256 %r50, %r55
%r57 = zext i256 %r56 to i320
%r59 = getelementptr i64, i64* %r4, i32 4
%r60 = load i64, i64* %r59
%r61 = zext i64 %r60 to i320
%r62 = shl i320 %r61, 256
%r63 = or i320 %r57, %r62
%r64 = zext i320 %r63 to i384
%r65 = sub i384 %r34, %r64
%r66 = trunc i384 %r65 to i320
%r67 = trunc i320 %r66 to i64
%r69 = getelementptr i64, i64* %r2, i32 0
store i64 %r67, i64* %r69
%r70 = lshr i320 %r66, 64
%r71 = trunc i320 %r70 to i64
%r73 = getelementptr i64, i64* %r2, i32 1
store i64 %r71, i64* %r73
%r74 = lshr i320 %r70, 64
%r75 = trunc i320 %r74 to i64
%r77 = getelementptr i64, i64* %r2, i32 2
store i64 %r75, i64* %r77
%r78 = lshr i320 %r74, 64
%r79 = trunc i320 %r78 to i64
%r81 = getelementptr i64, i64* %r2, i32 3
store i64 %r79, i64* %r81
%r82 = lshr i320 %r78, 64
%r83 = trunc i320 %r82 to i64
%r85 = getelementptr i64, i64* %r2, i32 4
store i64 %r83, i64* %r85
%r86 = lshr i384 %r65, 320
%r87 = trunc i384 %r86 to i64
%r89 = and i64 %r87, 1
ret i64 %r89
}
define void @mcl_fp_shr1_5L(i64* noalias  %r1, i64* noalias  %r2)
{
%r3 = load i64, i64* %r2
%r4 = zext i64 %r3 to i128
%r6 = getelementptr i64, i64* %r2, i32 1
%r7 = load i64, i64* %r6
%r8 = zext i64 %r7 to i128
%r9 = shl i128 %r8, 64
%r10 = or i128 %r4, %r9
%r11 = zext i128 %r10 to i192
%r13 = getelementptr i64, i64* %r2, i32 2
%r14 = load i64, i64* %r13
%r15 = zext i64 %r14 to i192
%r16 = shl i192 %r15, 128
%r17 = or i192 %r11, %r16
%r18 = zext i192 %r17 to i256
%r20 = getelementptr i64, i64* %r2, i32 3
%r21 = load i64, i64* %r20
%r22 = zext i64 %r21 to i256
%r23 = shl i256 %r22, 192
%r24 = or i256 %r18, %r23
%r25 = zext i256 %r24 to i320
%r27 = getelementptr i64, i64* %r2, i32 4
%r28 = load i64, i64* %r27
%r29 = zext i64 %r28 to i320
%r30 = shl i320 %r29, 256
%r31 = or i320 %r25, %r30
%r32 = lshr i320 %r31, 1
%r33 = trunc i320 %r32 to i64
%r35 = getelementptr i64, i64* %r1, i32 0
store i64 %r33, i64* %r35
%r36 = lshr i320 %r32, 64
%r37 = trunc i320 %r36 to i64
%r39 = getelementptr i64, i64* %r1, i32 1
store i64 %r37, i64* %r39
%r40 = lshr i320 %r36, 64
%r41 = trunc i320 %r40 to i64
%r43 = getelementptr i64, i64* %r1, i32 2
store i64 %r41, i64* %r43
%r44 = lshr i320 %r40, 64
%r45 = trunc i320 %r44 to i64
%r47 = getelementptr i64, i64* %r1, i32 3
store i64 %r45, i64* %r47
%r48 = lshr i320 %r44, 64
%r49 = trunc i320 %r48 to i64
%r51 = getelementptr i64, i64* %r1, i32 4
store i64 %r49, i64* %r51
ret void
}
define void @mcl_fp_add5L(i64* noalias  %r1, i64* noalias  %r2, i64* noalias  %r3, i64* noalias  %r4)
{
%r5 = load i64, i64* %r2
%r6 = zext i64 %r5 to i128
%r8 = getelementptr i64, i64* %r2, i32 1
%r9 = load i64, i64* %r8
%r10 = zext i64 %r9 to i128
%r11 = shl i128 %r10, 64
%r12 = or i128 %r6, %r11
%r13 = zext i128 %r12 to i192
%r15 = getelementptr i64, i64* %r2, i32 2
%r16 = load i64, i64* %r15
%r17 = zext i64 %r16 to i192
%r18 = shl i192 %r17, 128
%r19 = or i192 %r13, %r18
%r20 = zext i192 %r19 to i256
%r22 = getelementptr i64, i64* %r2, i32 3
%r23 = load i64, i64* %r22
%r24 = zext i64 %r23 to i256
%r25 = shl i256 %r24, 192
%r26 = or i256 %r20, %r25
%r27 = zext i256 %r26 to i320
%r29 = getelementptr i64, i64* %r2, i32 4
%r30 = load i64, i64* %r29
%r31 = zext i64 %r30 to i320
%r32 = shl i320 %r31, 256
%r33 = or i320 %r27, %r32
%r34 = load i64, i64* %r3
%r35 = zext i64 %r34 to i128
%r37 = getelementptr i64, i64* %r3, i32 1
%r38 = load i64, i64* %r37
%r39 = zext i64 %r38 to i128
%r40 = shl i128 %r39, 64
%r41 = or i128 %r35, %r40
%r42 = zext i128 %r41 to i192
%r44 = getelementptr i64, i64* %r3, i32 2
%r45 = load i64, i64* %r44
%r46 = zext i64 %r45 to i192
%r47 = shl i192 %r46, 128
%r48 = or i192 %r42, %r47
%r49 = zext i192 %r48 to i256
%r51 = getelementptr i64, i64* %r3, i32 3
%r52 = load i64, i64* %r51
%r53 = zext i64 %r52 to i256
%r54 = shl i256 %r53, 192
%r55 = or i256 %r49, %r54
%r56 = zext i256 %r55 to i320
%r58 = getelementptr i64, i64* %r3, i32 4
%r59 = load i64, i64* %r58
%r60 = zext i64 %r59 to i320
%r61 = shl i320 %r60, 256
%r62 = or i320 %r56, %r61
%r63 = zext i320 %r33 to i384
%r64 = zext i320 %r62 to i384
%r65 = add i384 %r63, %r64
%r66 = trunc i384 %r65 to i320
%r67 = trunc i320 %r66 to i64
%r69 = getelementptr i64, i64* %r1, i32 0
store i64 %r67, i64* %r69
%r70 = lshr i320 %r66, 64
%r71 = trunc i320 %r70 to i64
%r73 = getelementptr i64, i64* %r1, i32 1
store i64 %r71, i64* %r73
%r74 = lshr i320 %r70, 64
%r75 = trunc i320 %r74 to i64
%r77 = getelementptr i64, i64* %r1, i32 2
store i64 %r75, i64* %r77
%r78 = lshr i320 %r74, 64
%r79 = trunc i320 %r78 to i64
%r81 = getelementptr i64, i64* %r1, i32 3
store i64 %r79, i64* %r81
%r82 = lshr i320 %r78, 64
%r83 = trunc i320 %r82 to i64
%r85 = getelementptr i64, i64* %r1, i32 4
store i64 %r83, i64* %r85
%r86 = load i64, i64* %r4
%r87 = zext i64 %r86 to i128
%r89 = getelementptr i64, i64* %r4, i32 1
%r90 = load i64, i64* %r89
%r91 = zext i64 %r90 to i128
%r92 = shl i128 %r91, 64
%r93 = or i128 %r87, %r92
%r94 = zext i128 %r93 to i192
%r96 = getelementptr i64, i64* %r4, i32 2
%r97 = load i64, i64* %r96
%r98 = zext i64 %r97 to i192
%r99 = shl i192 %r98, 128
%r100 = or i192 %r94, %r99
%r101 = zext i192 %r100 to i256
%r103 = getelementptr i64, i64* %r4, i32 3
%r104 = load i64, i64* %r103
%r105 = zext i64 %r104 to i256
%r106 = shl i256 %r105, 192
%r107 = or i256 %r101, %r106
%r108 = zext i256 %r107 to i320
%r110 = getelementptr i64, i64* %r4, i32 4
%r111 = load i64, i64* %r110
%r112 = zext i64 %r111 to i320
%r113 = shl i320 %r112, 256
%r114 = or i320 %r108, %r113
%r115 = zext i320 %r114 to i384
%r116 = sub i384 %r65, %r115
%r117 = lshr i384 %r116, 320
%r118 = trunc i384 %r117 to i1
br i1%r118, label %carry, label %nocarry
nocarry:
%r119 = trunc i384 %r116 to i320
%r120 = trunc i320 %r119 to i64
%r122 = getelementptr i64, i64* %r1, i32 0
store i64 %r120, i64* %r122
%r123 = lshr i320 %r119, 64
%r124 = trunc i320 %r123 to i64
%r126 = getelementptr i64, i64* %r1, i32 1
store i64 %r124, i64* %r126
%r127 = lshr i320 %r123, 64
%r128 = trunc i320 %r127 to i64
%r130 = getelementptr i64, i64* %r1, i32 2
store i64 %r128, i64* %r130
%r131 = lshr i320 %r127, 64
%r132 = trunc i320 %r131 to i64
%r134 = getelementptr i64, i64* %r1, i32 3
store i64 %r132, i64* %r134
%r135 = lshr i320 %r131, 64
%r136 = trunc i320 %r135 to i64
%r138 = getelementptr i64, i64* %r1, i32 4
store i64 %r136, i64* %r138
ret void
carry:
ret void
}
define void @mcl_fp_addNF5L(i64* noalias  %r1, i64* noalias  %r2, i64* noalias  %r3, i64* noalias  %r4)
{
%r5 = load i64, i64* %r2
%r6 = zext i64 %r5 to i128
%r8 = getelementptr i64, i64* %r2, i32 1
%r9 = load i64, i64* %r8
%r10 = zext i64 %r9 to i128
%r11 = shl i128 %r10, 64
%r12 = or i128 %r6, %r11
%r13 = zext i128 %r12 to i192
%r15 = getelementptr i64, i64* %r2, i32 2
%r16 = load i64, i64* %r15
%r17 = zext i64 %r16 to i192
%r18 = shl i192 %r17, 128
%r19 = or i192 %r13, %r18
%r20 = zext i192 %r19 to i256
%r22 = getelementptr i64, i64* %r2, i32 3
%r23 = load i64, i64* %r22
%r24 = zext i64 %r23 to i256
%r25 = shl i256 %r24, 192
%r26 = or i256 %r20, %r25
%r27 = zext i256 %r26 to i320
%r29 = getelementptr i64, i64* %r2, i32 4
%r30 = load i64, i64* %r29
%r31 = zext i64 %r30 to i320
%r32 = shl i320 %r31, 256
%r33 = or i320 %r27, %r32
%r34 = load i64, i64* %r3
%r35 = zext i64 %r34 to i128
%r37 = getelementptr i64, i64* %r3, i32 1
%r38 = load i64, i64* %r37
%r39 = zext i64 %r38 to i128
%r40 = shl i128 %r39, 64
%r41 = or i128 %r35, %r40
%r42 = zext i128 %r41 to i192
%r44 = getelementptr i64, i64* %r3, i32 2
%r45 = load i64, i64* %r44
%r46 = zext i64 %r45 to i192
%r47 = shl i192 %r46, 128
%r48 = or i192 %r42, %r47
%r49 = zext i192 %r48 to i256
%r51 = getelementptr i64, i64* %r3, i32 3
%r52 = load i64, i64* %r51
%r53 = zext i64 %r52 to i256
%r54 = shl i256 %r53, 192
%r55 = or i256 %r49, %r54
%r56 = zext i256 %r55 to i320
%r58 = getelementptr i64, i64* %r3, i32 4
%r59 = load i64, i64* %r58
%r60 = zext i64 %r59 to i320
%r61 = shl i320 %r60, 256
%r62 = or i320 %r56, %r61
%r63 = add i320 %r33, %r62
%r64 = load i64, i64* %r4
%r65 = zext i64 %r64 to i128
%r67 = getelementptr i64, i64* %r4, i32 1
%r68 = load i64, i64* %r67
%r69 = zext i64 %r68 to i128
%r70 = shl i128 %r69, 64
%r71 = or i128 %r65, %r70
%r72 = zext i128 %r71 to i192
%r74 = getelementptr i64, i64* %r4, i32 2
%r75 = load i64, i64* %r74
%r76 = zext i64 %r75 to i192
%r77 = shl i192 %r76, 128
%r78 = or i192 %r72, %r77
%r79 = zext i192 %r78 to i256
%r81 = getelementptr i64, i64* %r4, i32 3
%r82 = load i64, i64* %r81
%r83 = zext i64 %r82 to i256
%r84 = shl i256 %r83, 192
%r85 = or i256 %r79, %r84
%r86 = zext i256 %r85 to i320
%r88 = getelementptr i64, i64* %r4, i32 4
%r89 = load i64, i64* %r88
%r90 = zext i64 %r89 to i320
%r91 = shl i320 %r90, 256
%r92 = or i320 %r86, %r91
%r93 = sub i320 %r63, %r92
%r94 = lshr i320 %r93, 319
%r95 = trunc i320 %r94 to i1
%r96 = select i1 %r95, i320 %r63, i320 %r93
%r97 = trunc i320 %r96 to i64
%r99 = getelementptr i64, i64* %r1, i32 0
store i64 %r97, i64* %r99
%r100 = lshr i320 %r96, 64
%r101 = trunc i320 %r100 to i64
%r103 = getelementptr i64, i64* %r1, i32 1
store i64 %r101, i64* %r103
%r104 = lshr i320 %r100, 64
%r105 = trunc i320 %r104 to i64
%r107 = getelementptr i64, i64* %r1, i32 2
store i64 %r105, i64* %r107
%r108 = lshr i320 %r104, 64
%r109 = trunc i320 %r108 to i64
%r111 = getelementptr i64, i64* %r1, i32 3
store i64 %r109, i64* %r111
%r112 = lshr i320 %r108, 64
%r113 = trunc i320 %r112 to i64
%r115 = getelementptr i64, i64* %r1, i32 4
store i64 %r113, i64* %r115
ret void
}
define void @mcl_fp_sub5L(i64* noalias  %r1, i64* noalias  %r2, i64* noalias  %r3, i64* noalias  %r4)
{
%r5 = load i64, i64* %r2
%r6 = zext i64 %r5 to i128
%r8 = getelementptr i64, i64* %r2, i32 1
%r9 = load i64, i64* %r8
%r10 = zext i64 %r9 to i128
%r11 = shl i128 %r10, 64
%r12 = or i128 %r6, %r11
%r13 = zext i128 %r12 to i192
%r15 = getelementptr i64, i64* %r2, i32 2
%r16 = load i64, i64* %r15
%r17 = zext i64 %r16 to i192
%r18 = shl i192 %r17, 128
%r19 = or i192 %r13, %r18
%r20 = zext i192 %r19 to i256
%r22 = getelementptr i64, i64* %r2, i32 3
%r23 = load i64, i64* %r22
%r24 = zext i64 %r23 to i256
%r25 = shl i256 %r24, 192
%r26 = or i256 %r20, %r25
%r27 = zext i256 %r26 to i320
%r29 = getelementptr i64, i64* %r2, i32 4
%r30 = load i64, i64* %r29
%r31 = zext i64 %r30 to i320
%r32 = shl i320 %r31, 256
%r33 = or i320 %r27, %r32
%r34 = load i64, i64* %r3
%r35 = zext i64 %r34 to i128
%r37 = getelementptr i64, i64* %r3, i32 1
%r38 = load i64, i64* %r37
%r39 = zext i64 %r38 to i128
%r40 = shl i128 %r39, 64
%r41 = or i128 %r35, %r40
%r42 = zext i128 %r41 to i192
%r44 = getelementptr i64, i64* %r3, i32 2
%r45 = load i64, i64* %r44
%r46 = zext i64 %r45 to i192
%r47 = shl i192 %r46, 128
%r48 = or i192 %r42, %r47
%r49 = zext i192 %r48 to i256
%r51 = getelementptr i64, i64* %r3, i32 3
%r52 = load i64, i64* %r51
%r53 = zext i64 %r52 to i256
%r54 = shl i256 %r53, 192
%r55 = or i256 %r49, %r54
%r56 = zext i256 %r55 to i320
%r58 = getelementptr i64, i64* %r3, i32 4
%r59 = load i64, i64* %r58
%r60 = zext i64 %r59 to i320
%r61 = shl i320 %r60, 256
%r62 = or i320 %r56, %r61
%r63 = zext i320 %r33 to i384
%r64 = zext i320 %r62 to i384
%r65 = sub i384 %r63, %r64
%r66 = trunc i384 %r65 to i320
%r67 = lshr i384 %r65, 320
%r68 = trunc i384 %r67 to i1
%r69 = trunc i320 %r66 to i64
%r71 = getelementptr i64, i64* %r1, i32 0
store i64 %r69, i64* %r71
%r72 = lshr i320 %r66, 64
%r73 = trunc i320 %r72 to i64
%r75 = getelementptr i64, i64* %r1, i32 1
store i64 %r73, i64* %r75
%r76 = lshr i320 %r72, 64
%r77 = trunc i320 %r76 to i64
%r79 = getelementptr i64, i64* %r1, i32 2
store i64 %r77, i64* %r79
%r80 = lshr i320 %r76, 64
%r81 = trunc i320 %r80 to i64
%r83 = getelementptr i64, i64* %r1, i32 3
store i64 %r81, i64* %r83
%r84 = lshr i320 %r80, 64
%r85 = trunc i320 %r84 to i64
%r87 = getelementptr i64, i64* %r1, i32 4
store i64 %r85, i64* %r87
br i1%r68, label %carry, label %nocarry
nocarry:
ret void
carry:
%r88 = load i64, i64* %r4
%r89 = zext i64 %r88 to i128
%r91 = getelementptr i64, i64* %r4, i32 1
%r92 = load i64, i64* %r91
%r93 = zext i64 %r92 to i128
%r94 = shl i128 %r93, 64
%r95 = or i128 %r89, %r94
%r96 = zext i128 %r95 to i192
%r98 = getelementptr i64, i64* %r4, i32 2
%r99 = load i64, i64* %r98
%r100 = zext i64 %r99 to i192
%r101 = shl i192 %r100, 128
%r102 = or i192 %r96, %r101
%r103 = zext i192 %r102 to i256
%r105 = getelementptr i64, i64* %r4, i32 3
%r106 = load i64, i64* %r105
%r107 = zext i64 %r106 to i256
%r108 = shl i256 %r107, 192
%r109 = or i256 %r103, %r108
%r110 = zext i256 %r109 to i320
%r112 = getelementptr i64, i64* %r4, i32 4
%r113 = load i64, i64* %r112
%r114 = zext i64 %r113 to i320
%r115 = shl i320 %r114, 256
%r116 = or i320 %r110, %r115
%r117 = add i320 %r66, %r116
%r118 = trunc i320 %r117 to i64
%r120 = getelementptr i64, i64* %r1, i32 0
store i64 %r118, i64* %r120
%r121 = lshr i320 %r117, 64
%r122 = trunc i320 %r121 to i64
%r124 = getelementptr i64, i64* %r1, i32 1
store i64 %r122, i64* %r124
%r125 = lshr i320 %r121, 64
%r126 = trunc i320 %r125 to i64
%r128 = getelementptr i64, i64* %r1, i32 2
store i64 %r126, i64* %r128
%r129 = lshr i320 %r125, 64
%r130 = trunc i320 %r129 to i64
%r132 = getelementptr i64, i64* %r1, i32 3
store i64 %r130, i64* %r132
%r133 = lshr i320 %r129, 64
%r134 = trunc i320 %r133 to i64
%r136 = getelementptr i64, i64* %r1, i32 4
store i64 %r134, i64* %r136
ret void
}
define void @mcl_fp_subNF5L(i64* noalias  %r1, i64* noalias  %r2, i64* noalias  %r3, i64* noalias  %r4)
{
%r5 = load i64, i64* %r2
%r6 = zext i64 %r5 to i128
%r8 = getelementptr i64, i64* %r2, i32 1
%r9 = load i64, i64* %r8
%r10 = zext i64 %r9 to i128
%r11 = shl i128 %r10, 64
%r12 = or i128 %r6, %r11
%r13 = zext i128 %r12 to i192
%r15 = getelementptr i64, i64* %r2, i32 2
%r16 = load i64, i64* %r15
%r17 = zext i64 %r16 to i192
%r18 = shl i192 %r17, 128
%r19 = or i192 %r13, %r18
%r20 = zext i192 %r19 to i256
%r22 = getelementptr i64, i64* %r2, i32 3
%r23 = load i64, i64* %r22
%r24 = zext i64 %r23 to i256
%r25 = shl i256 %r24, 192
%r26 = or i256 %r20, %r25
%r27 = zext i256 %r26 to i320
%r29 = getelementptr i64, i64* %r2, i32 4
%r30 = load i64, i64* %r29
%r31 = zext i64 %r30 to i320
%r32 = shl i320 %r31, 256
%r33 = or i320 %r27, %r32
%r34 = load i64, i64* %r3
%r35 = zext i64 %r34 to i128
%r37 = getelementptr i64, i64* %r3, i32 1
%r38 = load i64, i64* %r37
%r39 = zext i64 %r38 to i128
%r40 = shl i128 %r39, 64
%r41 = or i128 %r35, %r40
%r42 = zext i128 %r41 to i192
%r44 = getelementptr i64, i64* %r3, i32 2
%r45 = load i64, i64* %r44
%r46 = zext i64 %r45 to i192
%r47 = shl i192 %r46, 128
%r48 = or i192 %r42, %r47
%r49 = zext i192 %r48 to i256
%r51 = getelementptr i64, i64* %r3, i32 3
%r52 = load i64, i64* %r51
%r53 = zext i64 %r52 to i256
%r54 = shl i256 %r53, 192
%r55 = or i256 %r49, %r54
%r56 = zext i256 %r55 to i320
%r58 = getelementptr i64, i64* %r3, i32 4
%r59 = load i64, i64* %r58
%r60 = zext i64 %r59 to i320
%r61 = shl i320 %r60, 256
%r62 = or i320 %r56, %r61
%r63 = sub i320 %r33, %r62
%r64 = lshr i320 %r63, 319
%r65 = trunc i320 %r64 to i1
%r66 = load i64, i64* %r4
%r67 = zext i64 %r66 to i128
%r69 = getelementptr i64, i64* %r4, i32 1
%r70 = load i64, i64* %r69
%r71 = zext i64 %r70 to i128
%r72 = shl i128 %r71, 64
%r73 = or i128 %r67, %r72
%r74 = zext i128 %r73 to i192
%r76 = getelementptr i64, i64* %r4, i32 2
%r77 = load i64, i64* %r76
%r78 = zext i64 %r77 to i192
%r79 = shl i192 %r78, 128
%r80 = or i192 %r74, %r79
%r81 = zext i192 %r80 to i256
%r83 = getelementptr i64, i64* %r4, i32 3
%r84 = load i64, i64* %r83
%r85 = zext i64 %r84 to i256
%r86 = shl i256 %r85, 192
%r87 = or i256 %r81, %r86
%r88 = zext i256 %r87 to i320
%r90 = getelementptr i64, i64* %r4, i32 4
%r91 = load i64, i64* %r90
%r92 = zext i64 %r91 to i320
%r93 = shl i320 %r92, 256
%r94 = or i320 %r88, %r93
%r96 = select i1 %r65, i320 %r94, i320 0
%r97 = add i320 %r63, %r96
%r98 = trunc i320 %r97 to i64
%r100 = getelementptr i64, i64* %r1, i32 0
store i64 %r98, i64* %r100
%r101 = lshr i320 %r97, 64
%r102 = trunc i320 %r101 to i64
%r104 = getelementptr i64, i64* %r1, i32 1
store i64 %r102, i64* %r104
%r105 = lshr i320 %r101, 64
%r106 = trunc i320 %r105 to i64
%r108 = getelementptr i64, i64* %r1, i32 2
store i64 %r106, i64* %r108
%r109 = lshr i320 %r105, 64
%r110 = trunc i320 %r109 to i64
%r112 = getelementptr i64, i64* %r1, i32 3
store i64 %r110, i64* %r112
%r113 = lshr i320 %r109, 64
%r114 = trunc i320 %r113 to i64
%r116 = getelementptr i64, i64* %r1, i32 4
store i64 %r114, i64* %r116
ret void
}
define void @mcl_fpDbl_add5L(i64* noalias  %r1, i64* noalias  %r2, i64* noalias  %r3, i64* noalias  %r4)
{
%r5 = load i64, i64* %r2
%r6 = zext i64 %r5 to i128
%r8 = getelementptr i64, i64* %r2, i32 1
%r9 = load i64, i64* %r8
%r10 = zext i64 %r9 to i128
%r11 = shl i128 %r10, 64
%r12 = or i128 %r6, %r11
%r13 = zext i128 %r12 to i192
%r15 = getelementptr i64, i64* %r2, i32 2
%r16 = load i64, i64* %r15
%r17 = zext i64 %r16 to i192
%r18 = shl i192 %r17, 128
%r19 = or i192 %r13, %r18
%r20 = zext i192 %r19 to i256
%r22 = getelementptr i64, i64* %r2, i32 3
%r23 = load i64, i64* %r22
%r24 = zext i64 %r23 to i256
%r25 = shl i256 %r24, 192
%r26 = or i256 %r20, %r25
%r27 = zext i256 %r26 to i320
%r29 = getelementptr i64, i64* %r2, i32 4
%r30 = load i64, i64* %r29
%r31 = zext i64 %r30 to i320
%r32 = shl i320 %r31, 256
%r33 = or i320 %r27, %r32
%r34 = zext i320 %r33 to i384
%r36 = getelementptr i64, i64* %r2, i32 5
%r37 = load i64, i64* %r36
%r38 = zext i64 %r37 to i384
%r39 = shl i384 %r38, 320
%r40 = or i384 %r34, %r39
%r41 = zext i384 %r40 to i448
%r43 = getelementptr i64, i64* %r2, i32 6
%r44 = load i64, i64* %r43
%r45 = zext i64 %r44 to i448
%r46 = shl i448 %r45, 384
%r47 = or i448 %r41, %r46
%r48 = zext i448 %r47 to i512
%r50 = getelementptr i64, i64* %r2, i32 7
%r51 = load i64, i64* %r50
%r52 = zext i64 %r51 to i512
%r53 = shl i512 %r52, 448
%r54 = or i512 %r48, %r53
%r55 = zext i512 %r54 to i576
%r57 = getelementptr i64, i64* %r2, i32 8
%r58 = load i64, i64* %r57
%r59 = zext i64 %r58 to i576
%r60 = shl i576 %r59, 512
%r61 = or i576 %r55, %r60
%r62 = zext i576 %r61 to i640
%r64 = getelementptr i64, i64* %r2, i32 9
%r65 = load i64, i64* %r64
%r66 = zext i64 %r65 to i640
%r67 = shl i640 %r66, 576
%r68 = or i640 %r62, %r67
%r69 = load i64, i64* %r3
%r70 = zext i64 %r69 to i128
%r72 = getelementptr i64, i64* %r3, i32 1
%r73 = load i64, i64* %r72
%r74 = zext i64 %r73 to i128
%r75 = shl i128 %r74, 64
%r76 = or i128 %r70, %r75
%r77 = zext i128 %r76 to i192
%r79 = getelementptr i64, i64* %r3, i32 2
%r80 = load i64, i64* %r79
%r81 = zext i64 %r80 to i192
%r82 = shl i192 %r81, 128
%r83 = or i192 %r77, %r82
%r84 = zext i192 %r83 to i256
%r86 = getelementptr i64, i64* %r3, i32 3
%r87 = load i64, i64* %r86
%r88 = zext i64 %r87 to i256
%r89 = shl i256 %r88, 192
%r90 = or i256 %r84, %r89
%r91 = zext i256 %r90 to i320
%r93 = getelementptr i64, i64* %r3, i32 4
%r94 = load i64, i64* %r93
%r95 = zext i64 %r94 to i320
%r96 = shl i320 %r95, 256
%r97 = or i320 %r91, %r96
%r98 = zext i320 %r97 to i384
%r100 = getelementptr i64, i64* %r3, i32 5
%r101 = load i64, i64* %r100
%r102 = zext i64 %r101 to i384
%r103 = shl i384 %r102, 320
%r104 = or i384 %r98, %r103
%r105 = zext i384 %r104 to i448
%r107 = getelementptr i64, i64* %r3, i32 6
%r108 = load i64, i64* %r107
%r109 = zext i64 %r108 to i448
%r110 = shl i448 %r109, 384
%r111 = or i448 %r105, %r110
%r112 = zext i448 %r111 to i512
%r114 = getelementptr i64, i64* %r3, i32 7
%r115 = load i64, i64* %r114
%r116 = zext i64 %r115 to i512
%r117 = shl i512 %r116, 448
%r118 = or i512 %r112, %r117
%r119 = zext i512 %r118 to i576
%r121 = getelementptr i64, i64* %r3, i32 8
%r122 = load i64, i64* %r121
%r123 = zext i64 %r122 to i576
%r124 = shl i576 %r123, 512
%r125 = or i576 %r119, %r124
%r126 = zext i576 %r125 to i640
%r128 = getelementptr i64, i64* %r3, i32 9
%r129 = load i64, i64* %r128
%r130 = zext i64 %r129 to i640
%r131 = shl i640 %r130, 576
%r132 = or i640 %r126, %r131
%r133 = zext i640 %r68 to i704
%r134 = zext i640 %r132 to i704
%r135 = add i704 %r133, %r134
%r136 = trunc i704 %r135 to i320
%r137 = trunc i320 %r136 to i64
%r139 = getelementptr i64, i64* %r1, i32 0
store i64 %r137, i64* %r139
%r140 = lshr i320 %r136, 64
%r141 = trunc i320 %r140 to i64
%r143 = getelementptr i64, i64* %r1, i32 1
store i64 %r141, i64* %r143
%r144 = lshr i320 %r140, 64
%r145 = trunc i320 %r144 to i64
%r147 = getelementptr i64, i64* %r1, i32 2
store i64 %r145, i64* %r147
%r148 = lshr i320 %r144, 64
%r149 = trunc i320 %r148 to i64
%r151 = getelementptr i64, i64* %r1, i32 3
store i64 %r149, i64* %r151
%r152 = lshr i320 %r148, 64
%r153 = trunc i320 %r152 to i64
%r155 = getelementptr i64, i64* %r1, i32 4
store i64 %r153, i64* %r155
%r156 = lshr i704 %r135, 320
%r157 = trunc i704 %r156 to i384
%r158 = load i64, i64* %r4
%r159 = zext i64 %r158 to i128
%r161 = getelementptr i64, i64* %r4, i32 1
%r162 = load i64, i64* %r161
%r163 = zext i64 %r162 to i128
%r164 = shl i128 %r163, 64
%r165 = or i128 %r159, %r164
%r166 = zext i128 %r165 to i192
%r168 = getelementptr i64, i64* %r4, i32 2
%r169 = load i64, i64* %r168
%r170 = zext i64 %r169 to i192
%r171 = shl i192 %r170, 128
%r172 = or i192 %r166, %r171
%r173 = zext i192 %r172 to i256
%r175 = getelementptr i64, i64* %r4, i32 3
%r176 = load i64, i64* %r175
%r177 = zext i64 %r176 to i256
%r178 = shl i256 %r177, 192
%r179 = or i256 %r173, %r178
%r180 = zext i256 %r179 to i320
%r182 = getelementptr i64, i64* %r4, i32 4
%r183 = load i64, i64* %r182
%r184 = zext i64 %r183 to i320
%r185 = shl i320 %r184, 256
%r186 = or i320 %r180, %r185
%r187 = zext i320 %r186 to i384
%r188 = sub i384 %r157, %r187
%r189 = lshr i384 %r188, 320
%r190 = trunc i384 %r189 to i1
%r191 = select i1 %r190, i384 %r157, i384 %r188
%r192 = trunc i384 %r191 to i320
%r194 = getelementptr i64, i64* %r1, i32 5
%r195 = trunc i320 %r192 to i64
%r197 = getelementptr i64, i64* %r194, i32 0
store i64 %r195, i64* %r197
%r198 = lshr i320 %r192, 64
%r199 = trunc i320 %r198 to i64
%r201 = getelementptr i64, i64* %r194, i32 1
store i64 %r199, i64* %r201
%r202 = lshr i320 %r198, 64
%r203 = trunc i320 %r202 to i64
%r205 = getelementptr i64, i64* %r194, i32 2
store i64 %r203, i64* %r205
%r206 = lshr i320 %r202, 64
%r207 = trunc i320 %r206 to i64
%r209 = getelementptr i64, i64* %r194, i32 3
store i64 %r207, i64* %r209
%r210 = lshr i320 %r206, 64
%r211 = trunc i320 %r210 to i64
%r213 = getelementptr i64, i64* %r194, i32 4
store i64 %r211, i64* %r213
ret void
}
define void @mcl_fpDbl_sub5L(i64* noalias  %r1, i64* noalias  %r2, i64* noalias  %r3, i64* noalias  %r4)
{
%r5 = load i64, i64* %r2
%r6 = zext i64 %r5 to i128
%r8 = getelementptr i64, i64* %r2, i32 1
%r9 = load i64, i64* %r8
%r10 = zext i64 %r9 to i128
%r11 = shl i128 %r10, 64
%r12 = or i128 %r6, %r11
%r13 = zext i128 %r12 to i192
%r15 = getelementptr i64, i64* %r2, i32 2
%r16 = load i64, i64* %r15
%r17 = zext i64 %r16 to i192
%r18 = shl i192 %r17, 128
%r19 = or i192 %r13, %r18
%r20 = zext i192 %r19 to i256
%r22 = getelementptr i64, i64* %r2, i32 3
%r23 = load i64, i64* %r22
%r24 = zext i64 %r23 to i256
%r25 = shl i256 %r24, 192
%r26 = or i256 %r20, %r25
%r27 = zext i256 %r26 to i320
%r29 = getelementptr i64, i64* %r2, i32 4
%r30 = load i64, i64* %r29
%r31 = zext i64 %r30 to i320
%r32 = shl i320 %r31, 256
%r33 = or i320 %r27, %r32
%r34 = zext i320 %r33 to i384
%r36 = getelementptr i64, i64* %r2, i32 5
%r37 = load i64, i64* %r36
%r38 = zext i64 %r37 to i384
%r39 = shl i384 %r38, 320
%r40 = or i384 %r34, %r39
%r41 = zext i384 %r40 to i448
%r43 = getelementptr i64, i64* %r2, i32 6
%r44 = load i64, i64* %r43
%r45 = zext i64 %r44 to i448
%r46 = shl i448 %r45, 384
%r47 = or i448 %r41, %r46
%r48 = zext i448 %r47 to i512
%r50 = getelementptr i64, i64* %r2, i32 7
%r51 = load i64, i64* %r50
%r52 = zext i64 %r51 to i512
%r53 = shl i512 %r52, 448
%r54 = or i512 %r48, %r53
%r55 = zext i512 %r54 to i576
%r57 = getelementptr i64, i64* %r2, i32 8
%r58 = load i64, i64* %r57
%r59 = zext i64 %r58 to i576
%r60 = shl i576 %r59, 512
%r61 = or i576 %r55, %r60
%r62 = zext i576 %r61 to i640
%r64 = getelementptr i64, i64* %r2, i32 9
%r65 = load i64, i64* %r64
%r66 = zext i64 %r65 to i640
%r67 = shl i640 %r66, 576
%r68 = or i640 %r62, %r67
%r69 = load i64, i64* %r3
%r70 = zext i64 %r69 to i128
%r72 = getelementptr i64, i64* %r3, i32 1
%r73 = load i64, i64* %r72
%r74 = zext i64 %r73 to i128
%r75 = shl i128 %r74, 64
%r76 = or i128 %r70, %r75
%r77 = zext i128 %r76 to i192
%r79 = getelementptr i64, i64* %r3, i32 2
%r80 = load i64, i64* %r79
%r81 = zext i64 %r80 to i192
%r82 = shl i192 %r81, 128
%r83 = or i192 %r77, %r82
%r84 = zext i192 %r83 to i256
%r86 = getelementptr i64, i64* %r3, i32 3
%r87 = load i64, i64* %r86
%r88 = zext i64 %r87 to i256
%r89 = shl i256 %r88, 192
%r90 = or i256 %r84, %r89
%r91 = zext i256 %r90 to i320
%r93 = getelementptr i64, i64* %r3, i32 4
%r94 = load i64, i64* %r93
%r95 = zext i64 %r94 to i320
%r96 = shl i320 %r95, 256
%r97 = or i320 %r91, %r96
%r98 = zext i320 %r97 to i384
%r100 = getelementptr i64, i64* %r3, i32 5
%r101 = load i64, i64* %r100
%r102 = zext i64 %r101 to i384
%r103 = shl i384 %r102, 320
%r104 = or i384 %r98, %r103
%r105 = zext i384 %r104 to i448
%r107 = getelementptr i64, i64* %r3, i32 6
%r108 = load i64, i64* %r107
%r109 = zext i64 %r108 to i448
%r110 = shl i448 %r109, 384
%r111 = or i448 %r105, %r110
%r112 = zext i448 %r111 to i512
%r114 = getelementptr i64, i64* %r3, i32 7
%r115 = load i64, i64* %r114
%r116 = zext i64 %r115 to i512
%r117 = shl i512 %r116, 448
%r118 = or i512 %r112, %r117
%r119 = zext i512 %r118 to i576
%r121 = getelementptr i64, i64* %r3, i32 8
%r122 = load i64, i64* %r121
%r123 = zext i64 %r122 to i576
%r124 = shl i576 %r123, 512
%r125 = or i576 %r119, %r124
%r126 = zext i576 %r125 to i640
%r128 = getelementptr i64, i64* %r3, i32 9
%r129 = load i64, i64* %r128
%r130 = zext i64 %r129 to i640
%r131 = shl i640 %r130, 576
%r132 = or i640 %r126, %r131
%r133 = zext i640 %r68 to i704
%r134 = zext i640 %r132 to i704
%r135 = sub i704 %r133, %r134
%r136 = trunc i704 %r135 to i320
%r137 = trunc i320 %r136 to i64
%r139 = getelementptr i64, i64* %r1, i32 0
store i64 %r137, i64* %r139
%r140 = lshr i320 %r136, 64
%r141 = trunc i320 %r140 to i64
%r143 = getelementptr i64, i64* %r1, i32 1
store i64 %r141, i64* %r143
%r144 = lshr i320 %r140, 64
%r145 = trunc i320 %r144 to i64
%r147 = getelementptr i64, i64* %r1, i32 2
store i64 %r145, i64* %r147
%r148 = lshr i320 %r144, 64
%r149 = trunc i320 %r148 to i64
%r151 = getelementptr i64, i64* %r1, i32 3
store i64 %r149, i64* %r151
%r152 = lshr i320 %r148, 64
%r153 = trunc i320 %r152 to i64
%r155 = getelementptr i64, i64* %r1, i32 4
store i64 %r153, i64* %r155
%r156 = lshr i704 %r135, 320
%r157 = trunc i704 %r156 to i320
%r158 = lshr i704 %r135, 640
%r159 = trunc i704 %r158 to i1
%r160 = load i64, i64* %r4
%r161 = zext i64 %r160 to i128
%r163 = getelementptr i64, i64* %r4, i32 1
%r164 = load i64, i64* %r163
%r165 = zext i64 %r164 to i128
%r166 = shl i128 %r165, 64
%r167 = or i128 %r161, %r166
%r168 = zext i128 %r167 to i192
%r170 = getelementptr i64, i64* %r4, i32 2
%r171 = load i64, i64* %r170
%r172 = zext i64 %r171 to i192
%r173 = shl i192 %r172, 128
%r174 = or i192 %r168, %r173
%r175 = zext i192 %r174 to i256
%r177 = getelementptr i64, i64* %r4, i32 3
%r178 = load i64, i64* %r177
%r179 = zext i64 %r178 to i256
%r180 = shl i256 %r179, 192
%r181 = or i256 %r175, %r180
%r182 = zext i256 %r181 to i320
%r184 = getelementptr i64, i64* %r4, i32 4
%r185 = load i64, i64* %r184
%r186 = zext i64 %r185 to i320
%r187 = shl i320 %r186, 256
%r188 = or i320 %r182, %r187
%r190 = select i1 %r159, i320 %r188, i320 0
%r191 = add i320 %r157, %r190
%r193 = getelementptr i64, i64* %r1, i32 5
%r194 = trunc i320 %r191 to i64
%r196 = getelementptr i64, i64* %r193, i32 0
store i64 %r194, i64* %r196
%r197 = lshr i320 %r191, 64
%r198 = trunc i320 %r197 to i64
%r200 = getelementptr i64, i64* %r193, i32 1
store i64 %r198, i64* %r200
%r201 = lshr i320 %r197, 64
%r202 = trunc i320 %r201 to i64
%r204 = getelementptr i64, i64* %r193, i32 2
store i64 %r202, i64* %r204
%r205 = lshr i320 %r201, 64
%r206 = trunc i320 %r205 to i64
%r208 = getelementptr i64, i64* %r193, i32 3
store i64 %r206, i64* %r208
%r209 = lshr i320 %r205, 64
%r210 = trunc i320 %r209 to i64
%r212 = getelementptr i64, i64* %r193, i32 4
store i64 %r210, i64* %r212
ret void
}
define private i448 @mulPv384x64(i64* noalias  %r2, i64 %r3)
{
%r5 = call i128 @mulPos64x64(i64* %r2, i64 %r3, i64 0)
%r6 = trunc i128 %r5 to i64
%r7 = call i64 @extractHigh64(i128 %r5)
%r9 = call i128 @mulPos64x64(i64* %r2, i64 %r3, i64 1)
%r10 = trunc i128 %r9 to i64
%r11 = call i64 @extractHigh64(i128 %r9)
%r13 = call i128 @mulPos64x64(i64* %r2, i64 %r3, i64 2)
%r14 = trunc i128 %r13 to i64
%r15 = call i64 @extractHigh64(i128 %r13)
%r17 = call i128 @mulPos64x64(i64* %r2, i64 %r3, i64 3)
%r18 = trunc i128 %r17 to i64
%r19 = call i64 @extractHigh64(i128 %r17)
%r21 = call i128 @mulPos64x64(i64* %r2, i64 %r3, i64 4)
%r22 = trunc i128 %r21 to i64
%r23 = call i64 @extractHigh64(i128 %r21)
%r25 = call i128 @mulPos64x64(i64* %r2, i64 %r3, i64 5)
%r26 = trunc i128 %r25 to i64
%r27 = call i64 @extractHigh64(i128 %r25)
%r28 = zext i64 %r6 to i128
%r29 = zext i64 %r10 to i128
%r30 = shl i128 %r29, 64
%r31 = or i128 %r28, %r30
%r32 = zext i128 %r31 to i192
%r33 = zext i64 %r14 to i192
%r34 = shl i192 %r33, 128
%r35 = or i192 %r32, %r34
%r36 = zext i192 %r35 to i256
%r37 = zext i64 %r18 to i256
%r38 = shl i256 %r37, 192
%r39 = or i256 %r36, %r38
%r40 = zext i256 %r39 to i320
%r41 = zext i64 %r22 to i320
%r42 = shl i320 %r41, 256
%r43 = or i320 %r40, %r42
%r44 = zext i320 %r43 to i384
%r45 = zext i64 %r26 to i384
%r46 = shl i384 %r45, 320
%r47 = or i384 %r44, %r46
%r48 = zext i64 %r7 to i128
%r49 = zext i64 %r11 to i128
%r50 = shl i128 %r49, 64
%r51 = or i128 %r48, %r50
%r52 = zext i128 %r51 to i192
%r53 = zext i64 %r15 to i192
%r54 = shl i192 %r53, 128
%r55 = or i192 %r52, %r54
%r56 = zext i192 %r55 to i256
%r57 = zext i64 %r19 to i256
%r58 = shl i256 %r57, 192
%r59 = or i256 %r56, %r58
%r60 = zext i256 %r59 to i320
%r61 = zext i64 %r23 to i320
%r62 = shl i320 %r61, 256
%r63 = or i320 %r60, %r62
%r64 = zext i320 %r63 to i384
%r65 = zext i64 %r27 to i384
%r66 = shl i384 %r65, 320
%r67 = or i384 %r64, %r66
%r68 = zext i384 %r47 to i448
%r69 = zext i384 %r67 to i448
%r70 = shl i448 %r69, 64
%r71 = add i448 %r68, %r70
ret i448 %r71
}
define void @mcl_fp_mulUnitPre6L(i64* noalias  %r1, i64* noalias  %r2, i64 %r3)
{
%r4 = call i448 @mulPv384x64(i64* %r2, i64 %r3)
%r5 = trunc i448 %r4 to i64
%r7 = getelementptr i64, i64* %r1, i32 0
store i64 %r5, i64* %r7
%r8 = lshr i448 %r4, 64
%r9 = trunc i448 %r8 to i64
%r11 = getelementptr i64, i64* %r1, i32 1
store i64 %r9, i64* %r11
%r12 = lshr i448 %r8, 64
%r13 = trunc i448 %r12 to i64
%r15 = getelementptr i64, i64* %r1, i32 2
store i64 %r13, i64* %r15
%r16 = lshr i448 %r12, 64
%r17 = trunc i448 %r16 to i64
%r19 = getelementptr i64, i64* %r1, i32 3
store i64 %r17, i64* %r19
%r20 = lshr i448 %r16, 64
%r21 = trunc i448 %r20 to i64
%r23 = getelementptr i64, i64* %r1, i32 4
store i64 %r21, i64* %r23
%r24 = lshr i448 %r20, 64
%r25 = trunc i448 %r24 to i64
%r27 = getelementptr i64, i64* %r1, i32 5
store i64 %r25, i64* %r27
%r28 = lshr i448 %r24, 64
%r29 = trunc i448 %r28 to i64
%r31 = getelementptr i64, i64* %r1, i32 6
store i64 %r29, i64* %r31
ret void
}
define void @mcl_fpDbl_mulPre6L(i64* noalias  %r1, i64* noalias  %r2, i64* noalias  %r3)
{
%r4 = load i64, i64* %r3
%r5 = call i448 @mulPv384x64(i64* %r2, i64 %r4)
%r6 = trunc i448 %r5 to i64
store i64 %r6, i64* %r1
%r7 = lshr i448 %r5, 64
%r9 = getelementptr i64, i64* %r3, i32 1
%r10 = load i64, i64* %r9
%r11 = call i448 @mulPv384x64(i64* %r2, i64 %r10)
%r12 = add i448 %r7, %r11
%r13 = trunc i448 %r12 to i64
%r15 = getelementptr i64, i64* %r1, i32 1
store i64 %r13, i64* %r15
%r16 = lshr i448 %r12, 64
%r18 = getelementptr i64, i64* %r3, i32 2
%r19 = load i64, i64* %r18
%r20 = call i448 @mulPv384x64(i64* %r2, i64 %r19)
%r21 = add i448 %r16, %r20
%r22 = trunc i448 %r21 to i64
%r24 = getelementptr i64, i64* %r1, i32 2
store i64 %r22, i64* %r24
%r25 = lshr i448 %r21, 64
%r27 = getelementptr i64, i64* %r3, i32 3
%r28 = load i64, i64* %r27
%r29 = call i448 @mulPv384x64(i64* %r2, i64 %r28)
%r30 = add i448 %r25, %r29
%r31 = trunc i448 %r30 to i64
%r33 = getelementptr i64, i64* %r1, i32 3
store i64 %r31, i64* %r33
%r34 = lshr i448 %r30, 64
%r36 = getelementptr i64, i64* %r3, i32 4
%r37 = load i64, i64* %r36
%r38 = call i448 @mulPv384x64(i64* %r2, i64 %r37)
%r39 = add i448 %r34, %r38
%r40 = trunc i448 %r39 to i64
%r42 = getelementptr i64, i64* %r1, i32 4
store i64 %r40, i64* %r42
%r43 = lshr i448 %r39, 64
%r45 = getelementptr i64, i64* %r3, i32 5
%r46 = load i64, i64* %r45
%r47 = call i448 @mulPv384x64(i64* %r2, i64 %r46)
%r48 = add i448 %r43, %r47
%r50 = getelementptr i64, i64* %r1, i32 5
%r51 = trunc i448 %r48 to i64
%r53 = getelementptr i64, i64* %r50, i32 0
store i64 %r51, i64* %r53
%r54 = lshr i448 %r48, 64
%r55 = trunc i448 %r54 to i64
%r57 = getelementptr i64, i64* %r50, i32 1
store i64 %r55, i64* %r57
%r58 = lshr i448 %r54, 64
%r59 = trunc i448 %r58 to i64
%r61 = getelementptr i64, i64* %r50, i32 2
store i64 %r59, i64* %r61
%r62 = lshr i448 %r58, 64
%r63 = trunc i448 %r62 to i64
%r65 = getelementptr i64, i64* %r50, i32 3
store i64 %r63, i64* %r65
%r66 = lshr i448 %r62, 64
%r67 = trunc i448 %r66 to i64
%r69 = getelementptr i64, i64* %r50, i32 4
store i64 %r67, i64* %r69
%r70 = lshr i448 %r66, 64
%r71 = trunc i448 %r70 to i64
%r73 = getelementptr i64, i64* %r50, i32 5
store i64 %r71, i64* %r73
%r74 = lshr i448 %r70, 64
%r75 = trunc i448 %r74 to i64
%r77 = getelementptr i64, i64* %r50, i32 6
store i64 %r75, i64* %r77
ret void
}
define void @mcl_fpDbl_sqrPre6L(i64* noalias  %r1, i64* noalias  %r2)
{
%r3 = load i64, i64* %r2
%r4 = call i448 @mulPv384x64(i64* %r2, i64 %r3)
%r5 = trunc i448 %r4 to i64
store i64 %r5, i64* %r1
%r6 = lshr i448 %r4, 64
%r8 = getelementptr i64, i64* %r2, i32 1
%r9 = load i64, i64* %r8
%r10 = call i448 @mulPv384x64(i64* %r2, i64 %r9)
%r11 = add i448 %r6, %r10
%r12 = trunc i448 %r11 to i64
%r14 = getelementptr i64, i64* %r1, i32 1
store i64 %r12, i64* %r14
%r15 = lshr i448 %r11, 64
%r17 = getelementptr i64, i64* %r2, i32 2
%r18 = load i64, i64* %r17
%r19 = call i448 @mulPv384x64(i64* %r2, i64 %r18)
%r20 = add i448 %r15, %r19
%r21 = trunc i448 %r20 to i64
%r23 = getelementptr i64, i64* %r1, i32 2
store i64 %r21, i64* %r23
%r24 = lshr i448 %r20, 64
%r26 = getelementptr i64, i64* %r2, i32 3
%r27 = load i64, i64* %r26
%r28 = call i448 @mulPv384x64(i64* %r2, i64 %r27)
%r29 = add i448 %r24, %r28
%r30 = trunc i448 %r29 to i64
%r32 = getelementptr i64, i64* %r1, i32 3
store i64 %r30, i64* %r32
%r33 = lshr i448 %r29, 64
%r35 = getelementptr i64, i64* %r2, i32 4
%r36 = load i64, i64* %r35
%r37 = call i448 @mulPv384x64(i64* %r2, i64 %r36)
%r38 = add i448 %r33, %r37
%r39 = trunc i448 %r38 to i64
%r41 = getelementptr i64, i64* %r1, i32 4
store i64 %r39, i64* %r41
%r42 = lshr i448 %r38, 64
%r44 = getelementptr i64, i64* %r2, i32 5
%r45 = load i64, i64* %r44
%r46 = call i448 @mulPv384x64(i64* %r2, i64 %r45)
%r47 = add i448 %r42, %r46
%r49 = getelementptr i64, i64* %r1, i32 5
%r50 = trunc i448 %r47 to i64
%r52 = getelementptr i64, i64* %r49, i32 0
store i64 %r50, i64* %r52
%r53 = lshr i448 %r47, 64
%r54 = trunc i448 %r53 to i64
%r56 = getelementptr i64, i64* %r49, i32 1
store i64 %r54, i64* %r56
%r57 = lshr i448 %r53, 64
%r58 = trunc i448 %r57 to i64
%r60 = getelementptr i64, i64* %r49, i32 2
store i64 %r58, i64* %r60
%r61 = lshr i448 %r57, 64
%r62 = trunc i448 %r61 to i64
%r64 = getelementptr i64, i64* %r49, i32 3
store i64 %r62, i64* %r64
%r65 = lshr i448 %r61, 64
%r66 = trunc i448 %r65 to i64
%r68 = getelementptr i64, i64* %r49, i32 4
store i64 %r66, i64* %r68
%r69 = lshr i448 %r65, 64
%r70 = trunc i448 %r69 to i64
%r72 = getelementptr i64, i64* %r49, i32 5
store i64 %r70, i64* %r72
%r73 = lshr i448 %r69, 64
%r74 = trunc i448 %r73 to i64
%r76 = getelementptr i64, i64* %r49, i32 6
store i64 %r74, i64* %r76
ret void
}
define void @mcl_fp_mont6L(i64* %r1, i64* %r2, i64* %r3, i64* %r4)
{
%r6 = getelementptr i64, i64* %r4, i32 -1
%r7 = load i64, i64* %r6
%r9 = getelementptr i64, i64* %r3, i32 0
%r10 = load i64, i64* %r9
%r11 = call i448 @mulPv384x64(i64* %r2, i64 %r10)
%r12 = zext i448 %r11 to i512
%r13 = trunc i448 %r11 to i64
%r14 = mul i64 %r13, %r7
%r15 = call i448 @mulPv384x64(i64* %r4, i64 %r14)
%r16 = zext i448 %r15 to i512
%r17 = add i512 %r12, %r16
%r18 = lshr i512 %r17, 64
%r20 = getelementptr i64, i64* %r3, i32 1
%r21 = load i64, i64* %r20
%r22 = call i448 @mulPv384x64(i64* %r2, i64 %r21)
%r23 = zext i448 %r22 to i512
%r24 = add i512 %r18, %r23
%r25 = trunc i512 %r24 to i64
%r26 = mul i64 %r25, %r7
%r27 = call i448 @mulPv384x64(i64* %r4, i64 %r26)
%r28 = zext i448 %r27 to i512
%r29 = add i512 %r24, %r28
%r30 = lshr i512 %r29, 64
%r32 = getelementptr i64, i64* %r3, i32 2
%r33 = load i64, i64* %r32
%r34 = call i448 @mulPv384x64(i64* %r2, i64 %r33)
%r35 = zext i448 %r34 to i512
%r36 = add i512 %r30, %r35
%r37 = trunc i512 %r36 to i64
%r38 = mul i64 %r37, %r7
%r39 = call i448 @mulPv384x64(i64* %r4, i64 %r38)
%r40 = zext i448 %r39 to i512
%r41 = add i512 %r36, %r40
%r42 = lshr i512 %r41, 64
%r44 = getelementptr i64, i64* %r3, i32 3
%r45 = load i64, i64* %r44
%r46 = call i448 @mulPv384x64(i64* %r2, i64 %r45)
%r47 = zext i448 %r46 to i512
%r48 = add i512 %r42, %r47
%r49 = trunc i512 %r48 to i64
%r50 = mul i64 %r49, %r7
%r51 = call i448 @mulPv384x64(i64* %r4, i64 %r50)
%r52 = zext i448 %r51 to i512
%r53 = add i512 %r48, %r52
%r54 = lshr i512 %r53, 64
%r56 = getelementptr i64, i64* %r3, i32 4
%r57 = load i64, i64* %r56
%r58 = call i448 @mulPv384x64(i64* %r2, i64 %r57)
%r59 = zext i448 %r58 to i512
%r60 = add i512 %r54, %r59
%r61 = trunc i512 %r60 to i64
%r62 = mul i64 %r61, %r7
%r63 = call i448 @mulPv384x64(i64* %r4, i64 %r62)
%r64 = zext i448 %r63 to i512
%r65 = add i512 %r60, %r64
%r66 = lshr i512 %r65, 64
%r68 = getelementptr i64, i64* %r3, i32 5
%r69 = load i64, i64* %r68
%r70 = call i448 @mulPv384x64(i64* %r2, i64 %r69)
%r71 = zext i448 %r70 to i512
%r72 = add i512 %r66, %r71
%r73 = trunc i512 %r72 to i64
%r74 = mul i64 %r73, %r7
%r75 = call i448 @mulPv384x64(i64* %r4, i64 %r74)
%r76 = zext i448 %r75 to i512
%r77 = add i512 %r72, %r76
%r78 = lshr i512 %r77, 64
%r79 = trunc i512 %r78 to i448
%r80 = load i64, i64* %r4
%r81 = zext i64 %r80 to i128
%r83 = getelementptr i64, i64* %r4, i32 1
%r84 = load i64, i64* %r83
%r85 = zext i64 %r84 to i128
%r86 = shl i128 %r85, 64
%r87 = or i128 %r81, %r86
%r88 = zext i128 %r87 to i192
%r90 = getelementptr i64, i64* %r4, i32 2
%r91 = load i64, i64* %r90
%r92 = zext i64 %r91 to i192
%r93 = shl i192 %r92, 128
%r94 = or i192 %r88, %r93
%r95 = zext i192 %r94 to i256
%r97 = getelementptr i64, i64* %r4, i32 3
%r98 = load i64, i64* %r97
%r99 = zext i64 %r98 to i256
%r100 = shl i256 %r99, 192
%r101 = or i256 %r95, %r100
%r102 = zext i256 %r101 to i320
%r104 = getelementptr i64, i64* %r4, i32 4
%r105 = load i64, i64* %r104
%r106 = zext i64 %r105 to i320
%r107 = shl i320 %r106, 256
%r108 = or i320 %r102, %r107
%r109 = zext i320 %r108 to i384
%r111 = getelementptr i64, i64* %r4, i32 5
%r112 = load i64, i64* %r111
%r113 = zext i64 %r112 to i384
%r114 = shl i384 %r113, 320
%r115 = or i384 %r109, %r114
%r116 = zext i384 %r115 to i448
%r117 = sub i448 %r79, %r116
%r118 = lshr i448 %r117, 384
%r119 = trunc i448 %r118 to i1
%r120 = select i1 %r119, i448 %r79, i448 %r117
%r121 = trunc i448 %r120 to i384
%r122 = trunc i384 %r121 to i64
%r124 = getelementptr i64, i64* %r1, i32 0
store i64 %r122, i64* %r124
%r125 = lshr i384 %r121, 64
%r126 = trunc i384 %r125 to i64
%r128 = getelementptr i64, i64* %r1, i32 1
store i64 %r126, i64* %r128
%r129 = lshr i384 %r125, 64
%r130 = trunc i384 %r129 to i64
%r132 = getelementptr i64, i64* %r1, i32 2
store i64 %r130, i64* %r132
%r133 = lshr i384 %r129, 64
%r134 = trunc i384 %r133 to i64
%r136 = getelementptr i64, i64* %r1, i32 3
store i64 %r134, i64* %r136
%r137 = lshr i384 %r133, 64
%r138 = trunc i384 %r137 to i64
%r140 = getelementptr i64, i64* %r1, i32 4
store i64 %r138, i64* %r140
%r141 = lshr i384 %r137, 64
%r142 = trunc i384 %r141 to i64
%r144 = getelementptr i64, i64* %r1, i32 5
store i64 %r142, i64* %r144
ret void
}
define void @mcl_fp_montNF6L(i64* %r1, i64* %r2, i64* %r3, i64* %r4)
{
%r6 = getelementptr i64, i64* %r4, i32 -1
%r7 = load i64, i64* %r6
%r8 = load i64, i64* %r3
%r9 = call i448 @mulPv384x64(i64* %r2, i64 %r8)
%r10 = trunc i448 %r9 to i64
%r11 = mul i64 %r10, %r7
%r12 = call i448 @mulPv384x64(i64* %r4, i64 %r11)
%r13 = add i448 %r9, %r12
%r14 = lshr i448 %r13, 64
%r16 = getelementptr i64, i64* %r3, i32 1
%r17 = load i64, i64* %r16
%r18 = call i448 @mulPv384x64(i64* %r2, i64 %r17)
%r19 = add i448 %r14, %r18
%r20 = trunc i448 %r19 to i64
%r21 = mul i64 %r20, %r7
%r22 = call i448 @mulPv384x64(i64* %r4, i64 %r21)
%r23 = add i448 %r19, %r22
%r24 = lshr i448 %r23, 64
%r26 = getelementptr i64, i64* %r3, i32 2
%r27 = load i64, i64* %r26
%r28 = call i448 @mulPv384x64(i64* %r2, i64 %r27)
%r29 = add i448 %r24, %r28
%r30 = trunc i448 %r29 to i64
%r31 = mul i64 %r30, %r7
%r32 = call i448 @mulPv384x64(i64* %r4, i64 %r31)
%r33 = add i448 %r29, %r32
%r34 = lshr i448 %r33, 64
%r36 = getelementptr i64, i64* %r3, i32 3
%r37 = load i64, i64* %r36
%r38 = call i448 @mulPv384x64(i64* %r2, i64 %r37)
%r39 = add i448 %r34, %r38
%r40 = trunc i448 %r39 to i64
%r41 = mul i64 %r40, %r7
%r42 = call i448 @mulPv384x64(i64* %r4, i64 %r41)
%r43 = add i448 %r39, %r42
%r44 = lshr i448 %r43, 64
%r46 = getelementptr i64, i64* %r3, i32 4
%r47 = load i64, i64* %r46
%r48 = call i448 @mulPv384x64(i64* %r2, i64 %r47)
%r49 = add i448 %r44, %r48
%r50 = trunc i448 %r49 to i64
%r51 = mul i64 %r50, %r7
%r52 = call i448 @mulPv384x64(i64* %r4, i64 %r51)
%r53 = add i448 %r49, %r52
%r54 = lshr i448 %r53, 64
%r56 = getelementptr i64, i64* %r3, i32 5
%r57 = load i64, i64* %r56
%r58 = call i448 @mulPv384x64(i64* %r2, i64 %r57)
%r59 = add i448 %r54, %r58
%r60 = trunc i448 %r59 to i64
%r61 = mul i64 %r60, %r7
%r62 = call i448 @mulPv384x64(i64* %r4, i64 %r61)
%r63 = add i448 %r59, %r62
%r64 = lshr i448 %r63, 64
%r65 = trunc i448 %r64 to i384
%r66 = load i64, i64* %r4
%r67 = zext i64 %r66 to i128
%r69 = getelementptr i64, i64* %r4, i32 1
%r70 = load i64, i64* %r69
%r71 = zext i64 %r70 to i128
%r72 = shl i128 %r71, 64
%r73 = or i128 %r67, %r72
%r74 = zext i128 %r73 to i192
%r76 = getelementptr i64, i64* %r4, i32 2
%r77 = load i64, i64* %r76
%r78 = zext i64 %r77 to i192
%r79 = shl i192 %r78, 128
%r80 = or i192 %r74, %r79
%r81 = zext i192 %r80 to i256
%r83 = getelementptr i64, i64* %r4, i32 3
%r84 = load i64, i64* %r83
%r85 = zext i64 %r84 to i256
%r86 = shl i256 %r85, 192
%r87 = or i256 %r81, %r86
%r88 = zext i256 %r87 to i320
%r90 = getelementptr i64, i64* %r4, i32 4
%r91 = load i64, i64* %r90
%r92 = zext i64 %r91 to i320
%r93 = shl i320 %r92, 256
%r94 = or i320 %r88, %r93
%r95 = zext i320 %r94 to i384
%r97 = getelementptr i64, i64* %r4, i32 5
%r98 = load i64, i64* %r97
%r99 = zext i64 %r98 to i384
%r100 = shl i384 %r99, 320
%r101 = or i384 %r95, %r100
%r102 = sub i384 %r65, %r101
%r103 = lshr i384 %r102, 383
%r104 = trunc i384 %r103 to i1
%r105 = select i1 %r104, i384 %r65, i384 %r102
%r106 = trunc i384 %r105 to i64
%r108 = getelementptr i64, i64* %r1, i32 0
store i64 %r106, i64* %r108
%r109 = lshr i384 %r105, 64
%r110 = trunc i384 %r109 to i64
%r112 = getelementptr i64, i64* %r1, i32 1
store i64 %r110, i64* %r112
%r113 = lshr i384 %r109, 64
%r114 = trunc i384 %r113 to i64
%r116 = getelementptr i64, i64* %r1, i32 2
store i64 %r114, i64* %r116
%r117 = lshr i384 %r113, 64
%r118 = trunc i384 %r117 to i64
%r120 = getelementptr i64, i64* %r1, i32 3
store i64 %r118, i64* %r120
%r121 = lshr i384 %r117, 64
%r122 = trunc i384 %r121 to i64
%r124 = getelementptr i64, i64* %r1, i32 4
store i64 %r122, i64* %r124
%r125 = lshr i384 %r121, 64
%r126 = trunc i384 %r125 to i64
%r128 = getelementptr i64, i64* %r1, i32 5
store i64 %r126, i64* %r128
ret void
}
define void @mcl_fp_montRed6L(i64* noalias  %r1, i64* noalias  %r2, i64* noalias  %r3)
{
%r5 = getelementptr i64, i64* %r3, i32 -1
%r6 = load i64, i64* %r5
%r7 = load i64, i64* %r3
%r8 = zext i64 %r7 to i128
%r10 = getelementptr i64, i64* %r3, i32 1
%r11 = load i64, i64* %r10
%r12 = zext i64 %r11 to i128
%r13 = shl i128 %r12, 64
%r14 = or i128 %r8, %r13
%r15 = zext i128 %r14 to i192
%r17 = getelementptr i64, i64* %r3, i32 2
%r18 = load i64, i64* %r17
%r19 = zext i64 %r18 to i192
%r20 = shl i192 %r19, 128
%r21 = or i192 %r15, %r20
%r22 = zext i192 %r21 to i256
%r24 = getelementptr i64, i64* %r3, i32 3
%r25 = load i64, i64* %r24
%r26 = zext i64 %r25 to i256
%r27 = shl i256 %r26, 192
%r28 = or i256 %r22, %r27
%r29 = zext i256 %r28 to i320
%r31 = getelementptr i64, i64* %r3, i32 4
%r32 = load i64, i64* %r31
%r33 = zext i64 %r32 to i320
%r34 = shl i320 %r33, 256
%r35 = or i320 %r29, %r34
%r36 = zext i320 %r35 to i384
%r38 = getelementptr i64, i64* %r3, i32 5
%r39 = load i64, i64* %r38
%r40 = zext i64 %r39 to i384
%r41 = shl i384 %r40, 320
%r42 = or i384 %r36, %r41
%r43 = load i64, i64* %r2
%r44 = zext i64 %r43 to i128
%r46 = getelementptr i64, i64* %r2, i32 1
%r47 = load i64, i64* %r46
%r48 = zext i64 %r47 to i128
%r49 = shl i128 %r48, 64
%r50 = or i128 %r44, %r49
%r51 = zext i128 %r50 to i192
%r53 = getelementptr i64, i64* %r2, i32 2
%r54 = load i64, i64* %r53
%r55 = zext i64 %r54 to i192
%r56 = shl i192 %r55, 128
%r57 = or i192 %r51, %r56
%r58 = zext i192 %r57 to i256
%r60 = getelementptr i64, i64* %r2, i32 3
%r61 = load i64, i64* %r60
%r62 = zext i64 %r61 to i256
%r63 = shl i256 %r62, 192
%r64 = or i256 %r58, %r63
%r65 = zext i256 %r64 to i320
%r67 = getelementptr i64, i64* %r2, i32 4
%r68 = load i64, i64* %r67
%r69 = zext i64 %r68 to i320
%r70 = shl i320 %r69, 256
%r71 = or i320 %r65, %r70
%r72 = zext i320 %r71 to i384
%r74 = getelementptr i64, i64* %r2, i32 5
%r75 = load i64, i64* %r74
%r76 = zext i64 %r75 to i384
%r77 = shl i384 %r76, 320
%r78 = or i384 %r72, %r77
%r79 = zext i384 %r78 to i448
%r81 = getelementptr i64, i64* %r2, i32 6
%r82 = load i64, i64* %r81
%r83 = zext i64 %r82 to i448
%r84 = shl i448 %r83, 384
%r85 = or i448 %r79, %r84
%r86 = zext i448 %r85 to i512
%r88 = getelementptr i64, i64* %r2, i32 7
%r89 = load i64, i64* %r88
%r90 = zext i64 %r89 to i512
%r91 = shl i512 %r90, 448
%r92 = or i512 %r86, %r91
%r93 = zext i512 %r92 to i576
%r95 = getelementptr i64, i64* %r2, i32 8
%r96 = load i64, i64* %r95
%r97 = zext i64 %r96 to i576
%r98 = shl i576 %r97, 512
%r99 = or i576 %r93, %r98
%r100 = zext i576 %r99 to i640
%r102 = getelementptr i64, i64* %r2, i32 9
%r103 = load i64, i64* %r102
%r104 = zext i64 %r103 to i640
%r105 = shl i640 %r104, 576
%r106 = or i640 %r100, %r105
%r107 = zext i640 %r106 to i704
%r109 = getelementptr i64, i64* %r2, i32 10
%r110 = load i64, i64* %r109
%r111 = zext i64 %r110 to i704
%r112 = shl i704 %r111, 640
%r113 = or i704 %r107, %r112
%r114 = zext i704 %r113 to i768
%r116 = getelementptr i64, i64* %r2, i32 11
%r117 = load i64, i64* %r116
%r118 = zext i64 %r117 to i768
%r119 = shl i768 %r118, 704
%r120 = or i768 %r114, %r119
%r121 = zext i768 %r120 to i832
%r122 = trunc i832 %r121 to i64
%r123 = mul i64 %r122, %r6
%r124 = call i448 @mulPv384x64(i64* %r3, i64 %r123)
%r125 = zext i448 %r124 to i832
%r126 = add i832 %r121, %r125
%r127 = lshr i832 %r126, 64
%r128 = trunc i832 %r127 to i768
%r129 = trunc i768 %r128 to i64
%r130 = mul i64 %r129, %r6
%r131 = call i448 @mulPv384x64(i64* %r3, i64 %r130)
%r132 = zext i448 %r131 to i768
%r133 = add i768 %r128, %r132
%r134 = lshr i768 %r133, 64
%r135 = trunc i768 %r134 to i704
%r136 = trunc i704 %r135 to i64
%r137 = mul i64 %r136, %r6
%r138 = call i448 @mulPv384x64(i64* %r3, i64 %r137)
%r139 = zext i448 %r138 to i704
%r140 = add i704 %r135, %r139
%r141 = lshr i704 %r140, 64
%r142 = trunc i704 %r141 to i640
%r143 = trunc i640 %r142 to i64
%r144 = mul i64 %r143, %r6
%r145 = call i448 @mulPv384x64(i64* %r3, i64 %r144)
%r146 = zext i448 %r145 to i640
%r147 = add i640 %r142, %r146
%r148 = lshr i640 %r147, 64
%r149 = trunc i640 %r148 to i576
%r150 = trunc i576 %r149 to i64
%r151 = mul i64 %r150, %r6
%r152 = call i448 @mulPv384x64(i64* %r3, i64 %r151)
%r153 = zext i448 %r152 to i576
%r154 = add i576 %r149, %r153
%r155 = lshr i576 %r154, 64
%r156 = trunc i576 %r155 to i512
%r157 = trunc i512 %r156 to i64
%r158 = mul i64 %r157, %r6
%r159 = call i448 @mulPv384x64(i64* %r3, i64 %r158)
%r160 = zext i448 %r159 to i512
%r161 = add i512 %r156, %r160
%r162 = lshr i512 %r161, 64
%r163 = trunc i512 %r162 to i448
%r164 = zext i384 %r42 to i448
%r165 = sub i448 %r163, %r164
%r166 = lshr i448 %r165, 384
%r167 = trunc i448 %r166 to i1
%r168 = select i1 %r167, i448 %r163, i448 %r165
%r169 = trunc i448 %r168 to i384
%r170 = trunc i384 %r169 to i64
%r172 = getelementptr i64, i64* %r1, i32 0
store i64 %r170, i64* %r172
%r173 = lshr i384 %r169, 64
%r174 = trunc i384 %r173 to i64
%r176 = getelementptr i64, i64* %r1, i32 1
store i64 %r174, i64* %r176
%r177 = lshr i384 %r173, 64
%r178 = trunc i384 %r177 to i64
%r180 = getelementptr i64, i64* %r1, i32 2
store i64 %r178, i64* %r180
%r181 = lshr i384 %r177, 64
%r182 = trunc i384 %r181 to i64
%r184 = getelementptr i64, i64* %r1, i32 3
store i64 %r182, i64* %r184
%r185 = lshr i384 %r181, 64
%r186 = trunc i384 %r185 to i64
%r188 = getelementptr i64, i64* %r1, i32 4
store i64 %r186, i64* %r188
%r189 = lshr i384 %r185, 64
%r190 = trunc i384 %r189 to i64
%r192 = getelementptr i64, i64* %r1, i32 5
store i64 %r190, i64* %r192
ret void
}
define i64 @mcl_fp_addPre6L(i64* noalias  %r2, i64* noalias  %r3, i64* noalias  %r4)
{
%r5 = load i64, i64* %r3
%r6 = zext i64 %r5 to i128
%r8 = getelementptr i64, i64* %r3, i32 1
%r9 = load i64, i64* %r8
%r10 = zext i64 %r9 to i128
%r11 = shl i128 %r10, 64
%r12 = or i128 %r6, %r11
%r13 = zext i128 %r12 to i192
%r15 = getelementptr i64, i64* %r3, i32 2
%r16 = load i64, i64* %r15
%r17 = zext i64 %r16 to i192
%r18 = shl i192 %r17, 128
%r19 = or i192 %r13, %r18
%r20 = zext i192 %r19 to i256
%r22 = getelementptr i64, i64* %r3, i32 3
%r23 = load i64, i64* %r22
%r24 = zext i64 %r23 to i256
%r25 = shl i256 %r24, 192
%r26 = or i256 %r20, %r25
%r27 = zext i256 %r26 to i320
%r29 = getelementptr i64, i64* %r3, i32 4
%r30 = load i64, i64* %r29
%r31 = zext i64 %r30 to i320
%r32 = shl i320 %r31, 256
%r33 = or i320 %r27, %r32
%r34 = zext i320 %r33 to i384
%r36 = getelementptr i64, i64* %r3, i32 5
%r37 = load i64, i64* %r36
%r38 = zext i64 %r37 to i384
%r39 = shl i384 %r38, 320
%r40 = or i384 %r34, %r39
%r41 = zext i384 %r40 to i448
%r42 = load i64, i64* %r4
%r43 = zext i64 %r42 to i128
%r45 = getelementptr i64, i64* %r4, i32 1
%r46 = load i64, i64* %r45
%r47 = zext i64 %r46 to i128
%r48 = shl i128 %r47, 64
%r49 = or i128 %r43, %r48
%r50 = zext i128 %r49 to i192
%r52 = getelementptr i64, i64* %r4, i32 2
%r53 = load i64, i64* %r52
%r54 = zext i64 %r53 to i192
%r55 = shl i192 %r54, 128
%r56 = or i192 %r50, %r55
%r57 = zext i192 %r56 to i256
%r59 = getelementptr i64, i64* %r4, i32 3
%r60 = load i64, i64* %r59
%r61 = zext i64 %r60 to i256
%r62 = shl i256 %r61, 192
%r63 = or i256 %r57, %r62
%r64 = zext i256 %r63 to i320
%r66 = getelementptr i64, i64* %r4, i32 4
%r67 = load i64, i64* %r66
%r68 = zext i64 %r67 to i320
%r69 = shl i320 %r68, 256
%r70 = or i320 %r64, %r69
%r71 = zext i320 %r70 to i384
%r73 = getelementptr i64, i64* %r4, i32 5
%r74 = load i64, i64* %r73
%r75 = zext i64 %r74 to i384
%r76 = shl i384 %r75, 320
%r77 = or i384 %r71, %r76
%r78 = zext i384 %r77 to i448
%r79 = add i448 %r41, %r78
%r80 = trunc i448 %r79 to i384
%r81 = trunc i384 %r80 to i64
%r83 = getelementptr i64, i64* %r2, i32 0
store i64 %r81, i64* %r83
%r84 = lshr i384 %r80, 64
%r85 = trunc i384 %r84 to i64
%r87 = getelementptr i64, i64* %r2, i32 1
store i64 %r85, i64* %r87
%r88 = lshr i384 %r84, 64
%r89 = trunc i384 %r88 to i64
%r91 = getelementptr i64, i64* %r2, i32 2
store i64 %r89, i64* %r91
%r92 = lshr i384 %r88, 64
%r93 = trunc i384 %r92 to i64
%r95 = getelementptr i64, i64* %r2, i32 3
store i64 %r93, i64* %r95
%r96 = lshr i384 %r92, 64
%r97 = trunc i384 %r96 to i64
%r99 = getelementptr i64, i64* %r2, i32 4
store i64 %r97, i64* %r99
%r100 = lshr i384 %r96, 64
%r101 = trunc i384 %r100 to i64
%r103 = getelementptr i64, i64* %r2, i32 5
store i64 %r101, i64* %r103
%r104 = lshr i448 %r79, 384
%r105 = trunc i448 %r104 to i64
ret i64 %r105
}
define i64 @mcl_fp_subPre6L(i64* noalias  %r2, i64* noalias  %r3, i64* noalias  %r4)
{
%r5 = load i64, i64* %r3
%r6 = zext i64 %r5 to i128
%r8 = getelementptr i64, i64* %r3, i32 1
%r9 = load i64, i64* %r8
%r10 = zext i64 %r9 to i128
%r11 = shl i128 %r10, 64
%r12 = or i128 %r6, %r11
%r13 = zext i128 %r12 to i192
%r15 = getelementptr i64, i64* %r3, i32 2
%r16 = load i64, i64* %r15
%r17 = zext i64 %r16 to i192
%r18 = shl i192 %r17, 128
%r19 = or i192 %r13, %r18
%r20 = zext i192 %r19 to i256
%r22 = getelementptr i64, i64* %r3, i32 3
%r23 = load i64, i64* %r22
%r24 = zext i64 %r23 to i256
%r25 = shl i256 %r24, 192
%r26 = or i256 %r20, %r25
%r27 = zext i256 %r26 to i320
%r29 = getelementptr i64, i64* %r3, i32 4
%r30 = load i64, i64* %r29
%r31 = zext i64 %r30 to i320
%r32 = shl i320 %r31, 256
%r33 = or i320 %r27, %r32
%r34 = zext i320 %r33 to i384
%r36 = getelementptr i64, i64* %r3, i32 5
%r37 = load i64, i64* %r36
%r38 = zext i64 %r37 to i384
%r39 = shl i384 %r38, 320
%r40 = or i384 %r34, %r39
%r41 = zext i384 %r40 to i448
%r42 = load i64, i64* %r4
%r43 = zext i64 %r42 to i128
%r45 = getelementptr i64, i64* %r4, i32 1
%r46 = load i64, i64* %r45
%r47 = zext i64 %r46 to i128
%r48 = shl i128 %r47, 64
%r49 = or i128 %r43, %r48
%r50 = zext i128 %r49 to i192
%r52 = getelementptr i64, i64* %r4, i32 2
%r53 = load i64, i64* %r52
%r54 = zext i64 %r53 to i192
%r55 = shl i192 %r54, 128
%r56 = or i192 %r50, %r55
%r57 = zext i192 %r56 to i256
%r59 = getelementptr i64, i64* %r4, i32 3
%r60 = load i64, i64* %r59
%r61 = zext i64 %r60 to i256
%r62 = shl i256 %r61, 192
%r63 = or i256 %r57, %r62
%r64 = zext i256 %r63 to i320
%r66 = getelementptr i64, i64* %r4, i32 4
%r67 = load i64, i64* %r66
%r68 = zext i64 %r67 to i320
%r69 = shl i320 %r68, 256
%r70 = or i320 %r64, %r69
%r71 = zext i320 %r70 to i384
%r73 = getelementptr i64, i64* %r4, i32 5
%r74 = load i64, i64* %r73
%r75 = zext i64 %r74 to i384
%r76 = shl i384 %r75, 320
%r77 = or i384 %r71, %r76
%r78 = zext i384 %r77 to i448
%r79 = sub i448 %r41, %r78
%r80 = trunc i448 %r79 to i384
%r81 = trunc i384 %r80 to i64
%r83 = getelementptr i64, i64* %r2, i32 0
store i64 %r81, i64* %r83
%r84 = lshr i384 %r80, 64
%r85 = trunc i384 %r84 to i64
%r87 = getelementptr i64, i64* %r2, i32 1
store i64 %r85, i64* %r87
%r88 = lshr i384 %r84, 64
%r89 = trunc i384 %r88 to i64
%r91 = getelementptr i64, i64* %r2, i32 2
store i64 %r89, i64* %r91
%r92 = lshr i384 %r88, 64
%r93 = trunc i384 %r92 to i64
%r95 = getelementptr i64, i64* %r2, i32 3
store i64 %r93, i64* %r95
%r96 = lshr i384 %r92, 64
%r97 = trunc i384 %r96 to i64
%r99 = getelementptr i64, i64* %r2, i32 4
store i64 %r97, i64* %r99
%r100 = lshr i384 %r96, 64
%r101 = trunc i384 %r100 to i64
%r103 = getelementptr i64, i64* %r2, i32 5
store i64 %r101, i64* %r103
%r104 = lshr i448 %r79, 384
%r105 = trunc i448 %r104 to i64
%r107 = and i64 %r105, 1
ret i64 %r107
}
define void @mcl_fp_shr1_6L(i64* noalias  %r1, i64* noalias  %r2)
{
%r3 = load i64, i64* %r2
%r4 = zext i64 %r3 to i128
%r6 = getelementptr i64, i64* %r2, i32 1
%r7 = load i64, i64* %r6
%r8 = zext i64 %r7 to i128
%r9 = shl i128 %r8, 64
%r10 = or i128 %r4, %r9
%r11 = zext i128 %r10 to i192
%r13 = getelementptr i64, i64* %r2, i32 2
%r14 = load i64, i64* %r13
%r15 = zext i64 %r14 to i192
%r16 = shl i192 %r15, 128
%r17 = or i192 %r11, %r16
%r18 = zext i192 %r17 to i256
%r20 = getelementptr i64, i64* %r2, i32 3
%r21 = load i64, i64* %r20
%r22 = zext i64 %r21 to i256
%r23 = shl i256 %r22, 192
%r24 = or i256 %r18, %r23
%r25 = zext i256 %r24 to i320
%r27 = getelementptr i64, i64* %r2, i32 4
%r28 = load i64, i64* %r27
%r29 = zext i64 %r28 to i320
%r30 = shl i320 %r29, 256
%r31 = or i320 %r25, %r30
%r32 = zext i320 %r31 to i384
%r34 = getelementptr i64, i64* %r2, i32 5
%r35 = load i64, i64* %r34
%r36 = zext i64 %r35 to i384
%r37 = shl i384 %r36, 320
%r38 = or i384 %r32, %r37
%r39 = lshr i384 %r38, 1
%r40 = trunc i384 %r39 to i64
%r42 = getelementptr i64, i64* %r1, i32 0
store i64 %r40, i64* %r42
%r43 = lshr i384 %r39, 64
%r44 = trunc i384 %r43 to i64
%r46 = getelementptr i64, i64* %r1, i32 1
store i64 %r44, i64* %r46
%r47 = lshr i384 %r43, 64
%r48 = trunc i384 %r47 to i64
%r50 = getelementptr i64, i64* %r1, i32 2
store i64 %r48, i64* %r50
%r51 = lshr i384 %r47, 64
%r52 = trunc i384 %r51 to i64
%r54 = getelementptr i64, i64* %r1, i32 3
store i64 %r52, i64* %r54
%r55 = lshr i384 %r51, 64
%r56 = trunc i384 %r55 to i64
%r58 = getelementptr i64, i64* %r1, i32 4
store i64 %r56, i64* %r58
%r59 = lshr i384 %r55, 64
%r60 = trunc i384 %r59 to i64
%r62 = getelementptr i64, i64* %r1, i32 5
store i64 %r60, i64* %r62
ret void
}
define void @mcl_fp_add6L(i64* noalias  %r1, i64* noalias  %r2, i64* noalias  %r3, i64* noalias  %r4)
{
%r5 = load i64, i64* %r2
%r6 = zext i64 %r5 to i128
%r8 = getelementptr i64, i64* %r2, i32 1
%r9 = load i64, i64* %r8
%r10 = zext i64 %r9 to i128
%r11 = shl i128 %r10, 64
%r12 = or i128 %r6, %r11
%r13 = zext i128 %r12 to i192
%r15 = getelementptr i64, i64* %r2, i32 2
%r16 = load i64, i64* %r15
%r17 = zext i64 %r16 to i192
%r18 = shl i192 %r17, 128
%r19 = or i192 %r13, %r18
%r20 = zext i192 %r19 to i256
%r22 = getelementptr i64, i64* %r2, i32 3
%r23 = load i64, i64* %r22
%r24 = zext i64 %r23 to i256
%r25 = shl i256 %r24, 192
%r26 = or i256 %r20, %r25
%r27 = zext i256 %r26 to i320
%r29 = getelementptr i64, i64* %r2, i32 4
%r30 = load i64, i64* %r29
%r31 = zext i64 %r30 to i320
%r32 = shl i320 %r31, 256
%r33 = or i320 %r27, %r32
%r34 = zext i320 %r33 to i384
%r36 = getelementptr i64, i64* %r2, i32 5
%r37 = load i64, i64* %r36
%r38 = zext i64 %r37 to i384
%r39 = shl i384 %r38, 320
%r40 = or i384 %r34, %r39
%r41 = load i64, i64* %r3
%r42 = zext i64 %r41 to i128
%r44 = getelementptr i64, i64* %r3, i32 1
%r45 = load i64, i64* %r44
%r46 = zext i64 %r45 to i128
%r47 = shl i128 %r46, 64
%r48 = or i128 %r42, %r47
%r49 = zext i128 %r48 to i192
%r51 = getelementptr i64, i64* %r3, i32 2
%r52 = load i64, i64* %r51
%r53 = zext i64 %r52 to i192
%r54 = shl i192 %r53, 128
%r55 = or i192 %r49, %r54
%r56 = zext i192 %r55 to i256
%r58 = getelementptr i64, i64* %r3, i32 3
%r59 = load i64, i64* %r58
%r60 = zext i64 %r59 to i256
%r61 = shl i256 %r60, 192
%r62 = or i256 %r56, %r61
%r63 = zext i256 %r62 to i320
%r65 = getelementptr i64, i64* %r3, i32 4
%r66 = load i64, i64* %r65
%r67 = zext i64 %r66 to i320
%r68 = shl i320 %r67, 256
%r69 = or i320 %r63, %r68
%r70 = zext i320 %r69 to i384
%r72 = getelementptr i64, i64* %r3, i32 5
%r73 = load i64, i64* %r72
%r74 = zext i64 %r73 to i384
%r75 = shl i384 %r74, 320
%r76 = or i384 %r70, %r75
%r77 = zext i384 %r40 to i448
%r78 = zext i384 %r76 to i448
%r79 = add i448 %r77, %r78
%r80 = trunc i448 %r79 to i384
%r81 = trunc i384 %r80 to i64
%r83 = getelementptr i64, i64* %r1, i32 0
store i64 %r81, i64* %r83
%r84 = lshr i384 %r80, 64
%r85 = trunc i384 %r84 to i64
%r87 = getelementptr i64, i64* %r1, i32 1
store i64 %r85, i64* %r87
%r88 = lshr i384 %r84, 64
%r89 = trunc i384 %r88 to i64
%r91 = getelementptr i64, i64* %r1, i32 2
store i64 %r89, i64* %r91
%r92 = lshr i384 %r88, 64
%r93 = trunc i384 %r92 to i64
%r95 = getelementptr i64, i64* %r1, i32 3
store i64 %r93, i64* %r95
%r96 = lshr i384 %r92, 64
%r97 = trunc i384 %r96 to i64
%r99 = getelementptr i64, i64* %r1, i32 4
store i64 %r97, i64* %r99
%r100 = lshr i384 %r96, 64
%r101 = trunc i384 %r100 to i64
%r103 = getelementptr i64, i64* %r1, i32 5
store i64 %r101, i64* %r103
%r104 = load i64, i64* %r4
%r105 = zext i64 %r104 to i128
%r107 = getelementptr i64, i64* %r4, i32 1
%r108 = load i64, i64* %r107
%r109 = zext i64 %r108 to i128
%r110 = shl i128 %r109, 64
%r111 = or i128 %r105, %r110
%r112 = zext i128 %r111 to i192
%r114 = getelementptr i64, i64* %r4, i32 2
%r115 = load i64, i64* %r114
%r116 = zext i64 %r115 to i192
%r117 = shl i192 %r116, 128
%r118 = or i192 %r112, %r117
%r119 = zext i192 %r118 to i256
%r121 = getelementptr i64, i64* %r4, i32 3
%r122 = load i64, i64* %r121
%r123 = zext i64 %r122 to i256
%r124 = shl i256 %r123, 192
%r125 = or i256 %r119, %r124
%r126 = zext i256 %r125 to i320
%r128 = getelementptr i64, i64* %r4, i32 4
%r129 = load i64, i64* %r128
%r130 = zext i64 %r129 to i320
%r131 = shl i320 %r130, 256
%r132 = or i320 %r126, %r131
%r133 = zext i320 %r132 to i384
%r135 = getelementptr i64, i64* %r4, i32 5
%r136 = load i64, i64* %r135
%r137 = zext i64 %r136 to i384
%r138 = shl i384 %r137, 320
%r139 = or i384 %r133, %r138
%r140 = zext i384 %r139 to i448
%r141 = sub i448 %r79, %r140
%r142 = lshr i448 %r141, 384
%r143 = trunc i448 %r142 to i1
br i1%r143, label %carry, label %nocarry
nocarry:
%r144 = trunc i448 %r141 to i384
%r145 = trunc i384 %r144 to i64
%r147 = getelementptr i64, i64* %r1, i32 0
store i64 %r145, i64* %r147
%r148 = lshr i384 %r144, 64
%r149 = trunc i384 %r148 to i64
%r151 = getelementptr i64, i64* %r1, i32 1
store i64 %r149, i64* %r151
%r152 = lshr i384 %r148, 64
%r153 = trunc i384 %r152 to i64
%r155 = getelementptr i64, i64* %r1, i32 2
store i64 %r153, i64* %r155
%r156 = lshr i384 %r152, 64
%r157 = trunc i384 %r156 to i64
%r159 = getelementptr i64, i64* %r1, i32 3
store i64 %r157, i64* %r159
%r160 = lshr i384 %r156, 64
%r161 = trunc i384 %r160 to i64
%r163 = getelementptr i64, i64* %r1, i32 4
store i64 %r161, i64* %r163
%r164 = lshr i384 %r160, 64
%r165 = trunc i384 %r164 to i64
%r167 = getelementptr i64, i64* %r1, i32 5
store i64 %r165, i64* %r167
ret void
carry:
ret void
}
define void @mcl_fp_addNF6L(i64* noalias  %r1, i64* noalias  %r2, i64* noalias  %r3, i64* noalias  %r4)
{
%r5 = load i64, i64* %r2
%r6 = zext i64 %r5 to i128
%r8 = getelementptr i64, i64* %r2, i32 1
%r9 = load i64, i64* %r8
%r10 = zext i64 %r9 to i128
%r11 = shl i128 %r10, 64
%r12 = or i128 %r6, %r11
%r13 = zext i128 %r12 to i192
%r15 = getelementptr i64, i64* %r2, i32 2
%r16 = load i64, i64* %r15
%r17 = zext i64 %r16 to i192
%r18 = shl i192 %r17, 128
%r19 = or i192 %r13, %r18
%r20 = zext i192 %r19 to i256
%r22 = getelementptr i64, i64* %r2, i32 3
%r23 = load i64, i64* %r22
%r24 = zext i64 %r23 to i256
%r25 = shl i256 %r24, 192
%r26 = or i256 %r20, %r25
%r27 = zext i256 %r26 to i320
%r29 = getelementptr i64, i64* %r2, i32 4
%r30 = load i64, i64* %r29
%r31 = zext i64 %r30 to i320
%r32 = shl i320 %r31, 256
%r33 = or i320 %r27, %r32
%r34 = zext i320 %r33 to i384
%r36 = getelementptr i64, i64* %r2, i32 5
%r37 = load i64, i64* %r36
%r38 = zext i64 %r37 to i384
%r39 = shl i384 %r38, 320
%r40 = or i384 %r34, %r39
%r41 = load i64, i64* %r3
%r42 = zext i64 %r41 to i128
%r44 = getelementptr i64, i64* %r3, i32 1
%r45 = load i64, i64* %r44
%r46 = zext i64 %r45 to i128
%r47 = shl i128 %r46, 64
%r48 = or i128 %r42, %r47
%r49 = zext i128 %r48 to i192
%r51 = getelementptr i64, i64* %r3, i32 2
%r52 = load i64, i64* %r51
%r53 = zext i64 %r52 to i192
%r54 = shl i192 %r53, 128
%r55 = or i192 %r49, %r54
%r56 = zext i192 %r55 to i256
%r58 = getelementptr i64, i64* %r3, i32 3
%r59 = load i64, i64* %r58
%r60 = zext i64 %r59 to i256
%r61 = shl i256 %r60, 192
%r62 = or i256 %r56, %r61
%r63 = zext i256 %r62 to i320
%r65 = getelementptr i64, i64* %r3, i32 4
%r66 = load i64, i64* %r65
%r67 = zext i64 %r66 to i320
%r68 = shl i320 %r67, 256
%r69 = or i320 %r63, %r68
%r70 = zext i320 %r69 to i384
%r72 = getelementptr i64, i64* %r3, i32 5
%r73 = load i64, i64* %r72
%r74 = zext i64 %r73 to i384
%r75 = shl i384 %r74, 320
%r76 = or i384 %r70, %r75
%r77 = add i384 %r40, %r76
%r78 = load i64, i64* %r4
%r79 = zext i64 %r78 to i128
%r81 = getelementptr i64, i64* %r4, i32 1
%r82 = load i64, i64* %r81
%r83 = zext i64 %r82 to i128
%r84 = shl i128 %r83, 64
%r85 = or i128 %r79, %r84
%r86 = zext i128 %r85 to i192
%r88 = getelementptr i64, i64* %r4, i32 2
%r89 = load i64, i64* %r88
%r90 = zext i64 %r89 to i192
%r91 = shl i192 %r90, 128
%r92 = or i192 %r86, %r91
%r93 = zext i192 %r92 to i256
%r95 = getelementptr i64, i64* %r4, i32 3
%r96 = load i64, i64* %r95
%r97 = zext i64 %r96 to i256
%r98 = shl i256 %r97, 192
%r99 = or i256 %r93, %r98
%r100 = zext i256 %r99 to i320
%r102 = getelementptr i64, i64* %r4, i32 4
%r103 = load i64, i64* %r102
%r104 = zext i64 %r103 to i320
%r105 = shl i320 %r104, 256
%r106 = or i320 %r100, %r105
%r107 = zext i320 %r106 to i384
%r109 = getelementptr i64, i64* %r4, i32 5
%r110 = load i64, i64* %r109
%r111 = zext i64 %r110 to i384
%r112 = shl i384 %r111, 320
%r113 = or i384 %r107, %r112
%r114 = sub i384 %r77, %r113
%r115 = lshr i384 %r114, 383
%r116 = trunc i384 %r115 to i1
%r117 = select i1 %r116, i384 %r77, i384 %r114
%r118 = trunc i384 %r117 to i64
%r120 = getelementptr i64, i64* %r1, i32 0
store i64 %r118, i64* %r120
%r121 = lshr i384 %r117, 64
%r122 = trunc i384 %r121 to i64
%r124 = getelementptr i64, i64* %r1, i32 1
store i64 %r122, i64* %r124
%r125 = lshr i384 %r121, 64
%r126 = trunc i384 %r125 to i64
%r128 = getelementptr i64, i64* %r1, i32 2
store i64 %r126, i64* %r128
%r129 = lshr i384 %r125, 64
%r130 = trunc i384 %r129 to i64
%r132 = getelementptr i64, i64* %r1, i32 3
store i64 %r130, i64* %r132
%r133 = lshr i384 %r129, 64
%r134 = trunc i384 %r133 to i64
%r136 = getelementptr i64, i64* %r1, i32 4
store i64 %r134, i64* %r136
%r137 = lshr i384 %r133, 64
%r138 = trunc i384 %r137 to i64
%r140 = getelementptr i64, i64* %r1, i32 5
store i64 %r138, i64* %r140
ret void
}
define void @mcl_fp_sub6L(i64* noalias  %r1, i64* noalias  %r2, i64* noalias  %r3, i64* noalias  %r4)
{
%r5 = load i64, i64* %r2
%r6 = zext i64 %r5 to i128
%r8 = getelementptr i64, i64* %r2, i32 1
%r9 = load i64, i64* %r8
%r10 = zext i64 %r9 to i128
%r11 = shl i128 %r10, 64
%r12 = or i128 %r6, %r11
%r13 = zext i128 %r12 to i192
%r15 = getelementptr i64, i64* %r2, i32 2
%r16 = load i64, i64* %r15
%r17 = zext i64 %r16 to i192
%r18 = shl i192 %r17, 128
%r19 = or i192 %r13, %r18
%r20 = zext i192 %r19 to i256
%r22 = getelementptr i64, i64* %r2, i32 3
%r23 = load i64, i64* %r22
%r24 = zext i64 %r23 to i256
%r25 = shl i256 %r24, 192
%r26 = or i256 %r20, %r25
%r27 = zext i256 %r26 to i320
%r29 = getelementptr i64, i64* %r2, i32 4
%r30 = load i64, i64* %r29
%r31 = zext i64 %r30 to i320
%r32 = shl i320 %r31, 256
%r33 = or i320 %r27, %r32
%r34 = zext i320 %r33 to i384
%r36 = getelementptr i64, i64* %r2, i32 5
%r37 = load i64, i64* %r36
%r38 = zext i64 %r37 to i384
%r39 = shl i384 %r38, 320
%r40 = or i384 %r34, %r39
%r41 = load i64, i64* %r3
%r42 = zext i64 %r41 to i128
%r44 = getelementptr i64, i64* %r3, i32 1
%r45 = load i64, i64* %r44
%r46 = zext i64 %r45 to i128
%r47 = shl i128 %r46, 64
%r48 = or i128 %r42, %r47
%r49 = zext i128 %r48 to i192
%r51 = getelementptr i64, i64* %r3, i32 2
%r52 = load i64, i64* %r51
%r53 = zext i64 %r52 to i192
%r54 = shl i192 %r53, 128
%r55 = or i192 %r49, %r54
%r56 = zext i192 %r55 to i256
%r58 = getelementptr i64, i64* %r3, i32 3
%r59 = load i64, i64* %r58
%r60 = zext i64 %r59 to i256
%r61 = shl i256 %r60, 192
%r62 = or i256 %r56, %r61
%r63 = zext i256 %r62 to i320
%r65 = getelementptr i64, i64* %r3, i32 4
%r66 = load i64, i64* %r65
%r67 = zext i64 %r66 to i320
%r68 = shl i320 %r67, 256
%r69 = or i320 %r63, %r68
%r70 = zext i320 %r69 to i384
%r72 = getelementptr i64, i64* %r3, i32 5
%r73 = load i64, i64* %r72
%r74 = zext i64 %r73 to i384
%r75 = shl i384 %r74, 320
%r76 = or i384 %r70, %r75
%r77 = zext i384 %r40 to i448
%r78 = zext i384 %r76 to i448
%r79 = sub i448 %r77, %r78
%r80 = trunc i448 %r79 to i384
%r81 = lshr i448 %r79, 384
%r82 = trunc i448 %r81 to i1
%r83 = trunc i384 %r80 to i64
%r85 = getelementptr i64, i64* %r1, i32 0
store i64 %r83, i64* %r85
%r86 = lshr i384 %r80, 64
%r87 = trunc i384 %r86 to i64
%r89 = getelementptr i64, i64* %r1, i32 1
store i64 %r87, i64* %r89
%r90 = lshr i384 %r86, 64
%r91 = trunc i384 %r90 to i64
%r93 = getelementptr i64, i64* %r1, i32 2
store i64 %r91, i64* %r93
%r94 = lshr i384 %r90, 64
%r95 = trunc i384 %r94 to i64
%r97 = getelementptr i64, i64* %r1, i32 3
store i64 %r95, i64* %r97
%r98 = lshr i384 %r94, 64
%r99 = trunc i384 %r98 to i64
%r101 = getelementptr i64, i64* %r1, i32 4
store i64 %r99, i64* %r101
%r102 = lshr i384 %r98, 64
%r103 = trunc i384 %r102 to i64
%r105 = getelementptr i64, i64* %r1, i32 5
store i64 %r103, i64* %r105
br i1%r82, label %carry, label %nocarry
nocarry:
ret void
carry:
%r106 = load i64, i64* %r4
%r107 = zext i64 %r106 to i128
%r109 = getelementptr i64, i64* %r4, i32 1
%r110 = load i64, i64* %r109
%r111 = zext i64 %r110 to i128
%r112 = shl i128 %r111, 64
%r113 = or i128 %r107, %r112
%r114 = zext i128 %r113 to i192
%r116 = getelementptr i64, i64* %r4, i32 2
%r117 = load i64, i64* %r116
%r118 = zext i64 %r117 to i192
%r119 = shl i192 %r118, 128
%r120 = or i192 %r114, %r119
%r121 = zext i192 %r120 to i256
%r123 = getelementptr i64, i64* %r4, i32 3
%r124 = load i64, i64* %r123
%r125 = zext i64 %r124 to i256
%r126 = shl i256 %r125, 192
%r127 = or i256 %r121, %r126
%r128 = zext i256 %r127 to i320
%r130 = getelementptr i64, i64* %r4, i32 4
%r131 = load i64, i64* %r130
%r132 = zext i64 %r131 to i320
%r133 = shl i320 %r132, 256
%r134 = or i320 %r128, %r133
%r135 = zext i320 %r134 to i384
%r137 = getelementptr i64, i64* %r4, i32 5
%r138 = load i64, i64* %r137
%r139 = zext i64 %r138 to i384
%r140 = shl i384 %r139, 320
%r141 = or i384 %r135, %r140
%r142 = add i384 %r80, %r141
%r143 = trunc i384 %r142 to i64
%r145 = getelementptr i64, i64* %r1, i32 0
store i64 %r143, i64* %r145
%r146 = lshr i384 %r142, 64
%r147 = trunc i384 %r146 to i64
%r149 = getelementptr i64, i64* %r1, i32 1
store i64 %r147, i64* %r149
%r150 = lshr i384 %r146, 64
%r151 = trunc i384 %r150 to i64
%r153 = getelementptr i64, i64* %r1, i32 2
store i64 %r151, i64* %r153
%r154 = lshr i384 %r150, 64
%r155 = trunc i384 %r154 to i64
%r157 = getelementptr i64, i64* %r1, i32 3
store i64 %r155, i64* %r157
%r158 = lshr i384 %r154, 64
%r159 = trunc i384 %r158 to i64
%r161 = getelementptr i64, i64* %r1, i32 4
store i64 %r159, i64* %r161
%r162 = lshr i384 %r158, 64
%r163 = trunc i384 %r162 to i64
%r165 = getelementptr i64, i64* %r1, i32 5
store i64 %r163, i64* %r165
ret void
}
define void @mcl_fp_subNF6L(i64* noalias  %r1, i64* noalias  %r2, i64* noalias  %r3, i64* noalias  %r4)
{
%r5 = load i64, i64* %r2
%r6 = zext i64 %r5 to i128
%r8 = getelementptr i64, i64* %r2, i32 1
%r9 = load i64, i64* %r8
%r10 = zext i64 %r9 to i128
%r11 = shl i128 %r10, 64
%r12 = or i128 %r6, %r11
%r13 = zext i128 %r12 to i192
%r15 = getelementptr i64, i64* %r2, i32 2
%r16 = load i64, i64* %r15
%r17 = zext i64 %r16 to i192
%r18 = shl i192 %r17, 128
%r19 = or i192 %r13, %r18
%r20 = zext i192 %r19 to i256
%r22 = getelementptr i64, i64* %r2, i32 3
%r23 = load i64, i64* %r22
%r24 = zext i64 %r23 to i256
%r25 = shl i256 %r24, 192
%r26 = or i256 %r20, %r25
%r27 = zext i256 %r26 to i320
%r29 = getelementptr i64, i64* %r2, i32 4
%r30 = load i64, i64* %r29
%r31 = zext i64 %r30 to i320
%r32 = shl i320 %r31, 256
%r33 = or i320 %r27, %r32
%r34 = zext i320 %r33 to i384
%r36 = getelementptr i64, i64* %r2, i32 5
%r37 = load i64, i64* %r36
%r38 = zext i64 %r37 to i384
%r39 = shl i384 %r38, 320
%r40 = or i384 %r34, %r39
%r41 = load i64, i64* %r3
%r42 = zext i64 %r41 to i128
%r44 = getelementptr i64, i64* %r3, i32 1
%r45 = load i64, i64* %r44
%r46 = zext i64 %r45 to i128
%r47 = shl i128 %r46, 64
%r48 = or i128 %r42, %r47
%r49 = zext i128 %r48 to i192
%r51 = getelementptr i64, i64* %r3, i32 2
%r52 = load i64, i64* %r51
%r53 = zext i64 %r52 to i192
%r54 = shl i192 %r53, 128
%r55 = or i192 %r49, %r54
%r56 = zext i192 %r55 to i256
%r58 = getelementptr i64, i64* %r3, i32 3
%r59 = load i64, i64* %r58
%r60 = zext i64 %r59 to i256
%r61 = shl i256 %r60, 192
%r62 = or i256 %r56, %r61
%r63 = zext i256 %r62 to i320
%r65 = getelementptr i64, i64* %r3, i32 4
%r66 = load i64, i64* %r65
%r67 = zext i64 %r66 to i320
%r68 = shl i320 %r67, 256
%r69 = or i320 %r63, %r68
%r70 = zext i320 %r69 to i384
%r72 = getelementptr i64, i64* %r3, i32 5
%r73 = load i64, i64* %r72
%r74 = zext i64 %r73 to i384
%r75 = shl i384 %r74, 320
%r76 = or i384 %r70, %r75
%r77 = sub i384 %r40, %r76
%r78 = lshr i384 %r77, 383
%r79 = trunc i384 %r78 to i1
%r80 = load i64, i64* %r4
%r81 = zext i64 %r80 to i128
%r83 = getelementptr i64, i64* %r4, i32 1
%r84 = load i64, i64* %r83
%r85 = zext i64 %r84 to i128
%r86 = shl i128 %r85, 64
%r87 = or i128 %r81, %r86
%r88 = zext i128 %r87 to i192
%r90 = getelementptr i64, i64* %r4, i32 2
%r91 = load i64, i64* %r90
%r92 = zext i64 %r91 to i192
%r93 = shl i192 %r92, 128
%r94 = or i192 %r88, %r93
%r95 = zext i192 %r94 to i256
%r97 = getelementptr i64, i64* %r4, i32 3
%r98 = load i64, i64* %r97
%r99 = zext i64 %r98 to i256
%r100 = shl i256 %r99, 192
%r101 = or i256 %r95, %r100
%r102 = zext i256 %r101 to i320
%r104 = getelementptr i64, i64* %r4, i32 4
%r105 = load i64, i64* %r104
%r106 = zext i64 %r105 to i320
%r107 = shl i320 %r106, 256
%r108 = or i320 %r102, %r107
%r109 = zext i320 %r108 to i384
%r111 = getelementptr i64, i64* %r4, i32 5
%r112 = load i64, i64* %r111
%r113 = zext i64 %r112 to i384
%r114 = shl i384 %r113, 320
%r115 = or i384 %r109, %r114
%r117 = select i1 %r79, i384 %r115, i384 0
%r118 = add i384 %r77, %r117
%r119 = trunc i384 %r118 to i64
%r121 = getelementptr i64, i64* %r1, i32 0
store i64 %r119, i64* %r121
%r122 = lshr i384 %r118, 64
%r123 = trunc i384 %r122 to i64
%r125 = getelementptr i64, i64* %r1, i32 1
store i64 %r123, i64* %r125
%r126 = lshr i384 %r122, 64
%r127 = trunc i384 %r126 to i64
%r129 = getelementptr i64, i64* %r1, i32 2
store i64 %r127, i64* %r129
%r130 = lshr i384 %r126, 64
%r131 = trunc i384 %r130 to i64
%r133 = getelementptr i64, i64* %r1, i32 3
store i64 %r131, i64* %r133
%r134 = lshr i384 %r130, 64
%r135 = trunc i384 %r134 to i64
%r137 = getelementptr i64, i64* %r1, i32 4
store i64 %r135, i64* %r137
%r138 = lshr i384 %r134, 64
%r139 = trunc i384 %r138 to i64
%r141 = getelementptr i64, i64* %r1, i32 5
store i64 %r139, i64* %r141
ret void
}
define void @mcl_fpDbl_add6L(i64* noalias  %r1, i64* noalias  %r2, i64* noalias  %r3, i64* noalias  %r4)
{
%r5 = load i64, i64* %r2
%r6 = zext i64 %r5 to i128
%r8 = getelementptr i64, i64* %r2, i32 1
%r9 = load i64, i64* %r8
%r10 = zext i64 %r9 to i128
%r11 = shl i128 %r10, 64
%r12 = or i128 %r6, %r11
%r13 = zext i128 %r12 to i192
%r15 = getelementptr i64, i64* %r2, i32 2
%r16 = load i64, i64* %r15
%r17 = zext i64 %r16 to i192
%r18 = shl i192 %r17, 128
%r19 = or i192 %r13, %r18
%r20 = zext i192 %r19 to i256
%r22 = getelementptr i64, i64* %r2, i32 3
%r23 = load i64, i64* %r22
%r24 = zext i64 %r23 to i256
%r25 = shl i256 %r24, 192
%r26 = or i256 %r20, %r25
%r27 = zext i256 %r26 to i320
%r29 = getelementptr i64, i64* %r2, i32 4
%r30 = load i64, i64* %r29
%r31 = zext i64 %r30 to i320
%r32 = shl i320 %r31, 256
%r33 = or i320 %r27, %r32
%r34 = zext i320 %r33 to i384
%r36 = getelementptr i64, i64* %r2, i32 5
%r37 = load i64, i64* %r36
%r38 = zext i64 %r37 to i384
%r39 = shl i384 %r38, 320
%r40 = or i384 %r34, %r39
%r41 = zext i384 %r40 to i448
%r43 = getelementptr i64, i64* %r2, i32 6
%r44 = load i64, i64* %r43
%r45 = zext i64 %r44 to i448
%r46 = shl i448 %r45, 384
%r47 = or i448 %r41, %r46
%r48 = zext i448 %r47 to i512
%r50 = getelementptr i64, i64* %r2, i32 7
%r51 = load i64, i64* %r50
%r52 = zext i64 %r51 to i512
%r53 = shl i512 %r52, 448
%r54 = or i512 %r48, %r53
%r55 = zext i512 %r54 to i576
%r57 = getelementptr i64, i64* %r2, i32 8
%r58 = load i64, i64* %r57
%r59 = zext i64 %r58 to i576
%r60 = shl i576 %r59, 512
%r61 = or i576 %r55, %r60
%r62 = zext i576 %r61 to i640
%r64 = getelementptr i64, i64* %r2, i32 9
%r65 = load i64, i64* %r64
%r66 = zext i64 %r65 to i640
%r67 = shl i640 %r66, 576
%r68 = or i640 %r62, %r67
%r69 = zext i640 %r68 to i704
%r71 = getelementptr i64, i64* %r2, i32 10
%r72 = load i64, i64* %r71
%r73 = zext i64 %r72 to i704
%r74 = shl i704 %r73, 640
%r75 = or i704 %r69, %r74
%r76 = zext i704 %r75 to i768
%r78 = getelementptr i64, i64* %r2, i32 11
%r79 = load i64, i64* %r78
%r80 = zext i64 %r79 to i768
%r81 = shl i768 %r80, 704
%r82 = or i768 %r76, %r81
%r83 = load i64, i64* %r3
%r84 = zext i64 %r83 to i128
%r86 = getelementptr i64, i64* %r3, i32 1
%r87 = load i64, i64* %r86
%r88 = zext i64 %r87 to i128
%r89 = shl i128 %r88, 64
%r90 = or i128 %r84, %r89
%r91 = zext i128 %r90 to i192
%r93 = getelementptr i64, i64* %r3, i32 2
%r94 = load i64, i64* %r93
%r95 = zext i64 %r94 to i192
%r96 = shl i192 %r95, 128
%r97 = or i192 %r91, %r96
%r98 = zext i192 %r97 to i256
%r100 = getelementptr i64, i64* %r3, i32 3
%r101 = load i64, i64* %r100
%r102 = zext i64 %r101 to i256
%r103 = shl i256 %r102, 192
%r104 = or i256 %r98, %r103
%r105 = zext i256 %r104 to i320
%r107 = getelementptr i64, i64* %r3, i32 4
%r108 = load i64, i64* %r107
%r109 = zext i64 %r108 to i320
%r110 = shl i320 %r109, 256
%r111 = or i320 %r105, %r110
%r112 = zext i320 %r111 to i384
%r114 = getelementptr i64, i64* %r3, i32 5
%r115 = load i64, i64* %r114
%r116 = zext i64 %r115 to i384
%r117 = shl i384 %r116, 320
%r118 = or i384 %r112, %r117
%r119 = zext i384 %r118 to i448
%r121 = getelementptr i64, i64* %r3, i32 6
%r122 = load i64, i64* %r121
%r123 = zext i64 %r122 to i448
%r124 = shl i448 %r123, 384
%r125 = or i448 %r119, %r124
%r126 = zext i448 %r125 to i512
%r128 = getelementptr i64, i64* %r3, i32 7
%r129 = load i64, i64* %r128
%r130 = zext i64 %r129 to i512
%r131 = shl i512 %r130, 448
%r132 = or i512 %r126, %r131
%r133 = zext i512 %r132 to i576
%r135 = getelementptr i64, i64* %r3, i32 8
%r136 = load i64, i64* %r135
%r137 = zext i64 %r136 to i576
%r138 = shl i576 %r137, 512
%r139 = or i576 %r133, %r138
%r140 = zext i576 %r139 to i640
%r142 = getelementptr i64, i64* %r3, i32 9
%r143 = load i64, i64* %r142
%r144 = zext i64 %r143 to i640
%r145 = shl i640 %r144, 576
%r146 = or i640 %r140, %r145
%r147 = zext i640 %r146 to i704
%r149 = getelementptr i64, i64* %r3, i32 10
%r150 = load i64, i64* %r149
%r151 = zext i64 %r150 to i704
%r152 = shl i704 %r151, 640
%r153 = or i704 %r147, %r152
%r154 = zext i704 %r153 to i768
%r156 = getelementptr i64, i64* %r3, i32 11
%r157 = load i64, i64* %r156
%r158 = zext i64 %r157 to i768
%r159 = shl i768 %r158, 704
%r160 = or i768 %r154, %r159
%r161 = zext i768 %r82 to i832
%r162 = zext i768 %r160 to i832
%r163 = add i832 %r161, %r162
%r164 = trunc i832 %r163 to i384
%r165 = trunc i384 %r164 to i64
%r167 = getelementptr i64, i64* %r1, i32 0
store i64 %r165, i64* %r167
%r168 = lshr i384 %r164, 64
%r169 = trunc i384 %r168 to i64
%r171 = getelementptr i64, i64* %r1, i32 1
store i64 %r169, i64* %r171
%r172 = lshr i384 %r168, 64
%r173 = trunc i384 %r172 to i64
%r175 = getelementptr i64, i64* %r1, i32 2
store i64 %r173, i64* %r175
%r176 = lshr i384 %r172, 64
%r177 = trunc i384 %r176 to i64
%r179 = getelementptr i64, i64* %r1, i32 3
store i64 %r177, i64* %r179
%r180 = lshr i384 %r176, 64
%r181 = trunc i384 %r180 to i64
%r183 = getelementptr i64, i64* %r1, i32 4
store i64 %r181, i64* %r183
%r184 = lshr i384 %r180, 64
%r185 = trunc i384 %r184 to i64
%r187 = getelementptr i64, i64* %r1, i32 5
store i64 %r185, i64* %r187
%r188 = lshr i832 %r163, 384
%r189 = trunc i832 %r188 to i448
%r190 = load i64, i64* %r4
%r191 = zext i64 %r190 to i128
%r193 = getelementptr i64, i64* %r4, i32 1
%r194 = load i64, i64* %r193
%r195 = zext i64 %r194 to i128
%r196 = shl i128 %r195, 64
%r197 = or i128 %r191, %r196
%r198 = zext i128 %r197 to i192
%r200 = getelementptr i64, i64* %r4, i32 2
%r201 = load i64, i64* %r200
%r202 = zext i64 %r201 to i192
%r203 = shl i192 %r202, 128
%r204 = or i192 %r198, %r203
%r205 = zext i192 %r204 to i256
%r207 = getelementptr i64, i64* %r4, i32 3
%r208 = load i64, i64* %r207
%r209 = zext i64 %r208 to i256
%r210 = shl i256 %r209, 192
%r211 = or i256 %r205, %r210
%r212 = zext i256 %r211 to i320
%r214 = getelementptr i64, i64* %r4, i32 4
%r215 = load i64, i64* %r214
%r216 = zext i64 %r215 to i320
%r217 = shl i320 %r216, 256
%r218 = or i320 %r212, %r217
%r219 = zext i320 %r218 to i384
%r221 = getelementptr i64, i64* %r4, i32 5
%r222 = load i64, i64* %r221
%r223 = zext i64 %r222 to i384
%r224 = shl i384 %r223, 320
%r225 = or i384 %r219, %r224
%r226 = zext i384 %r225 to i448
%r227 = sub i448 %r189, %r226
%r228 = lshr i448 %r227, 384
%r229 = trunc i448 %r228 to i1
%r230 = select i1 %r229, i448 %r189, i448 %r227
%r231 = trunc i448 %r230 to i384
%r233 = getelementptr i64, i64* %r1, i32 6
%r234 = trunc i384 %r231 to i64
%r236 = getelementptr i64, i64* %r233, i32 0
store i64 %r234, i64* %r236
%r237 = lshr i384 %r231, 64
%r238 = trunc i384 %r237 to i64
%r240 = getelementptr i64, i64* %r233, i32 1
store i64 %r238, i64* %r240
%r241 = lshr i384 %r237, 64
%r242 = trunc i384 %r241 to i64
%r244 = getelementptr i64, i64* %r233, i32 2
store i64 %r242, i64* %r244
%r245 = lshr i384 %r241, 64
%r246 = trunc i384 %r245 to i64
%r248 = getelementptr i64, i64* %r233, i32 3
store i64 %r246, i64* %r248
%r249 = lshr i384 %r245, 64
%r250 = trunc i384 %r249 to i64
%r252 = getelementptr i64, i64* %r233, i32 4
store i64 %r250, i64* %r252
%r253 = lshr i384 %r249, 64
%r254 = trunc i384 %r253 to i64
%r256 = getelementptr i64, i64* %r233, i32 5
store i64 %r254, i64* %r256
ret void
}
define void @mcl_fpDbl_sub6L(i64* noalias  %r1, i64* noalias  %r2, i64* noalias  %r3, i64* noalias  %r4)
{
%r5 = load i64, i64* %r2
%r6 = zext i64 %r5 to i128
%r8 = getelementptr i64, i64* %r2, i32 1
%r9 = load i64, i64* %r8
%r10 = zext i64 %r9 to i128
%r11 = shl i128 %r10, 64
%r12 = or i128 %r6, %r11
%r13 = zext i128 %r12 to i192
%r15 = getelementptr i64, i64* %r2, i32 2
%r16 = load i64, i64* %r15
%r17 = zext i64 %r16 to i192
%r18 = shl i192 %r17, 128
%r19 = or i192 %r13, %r18
%r20 = zext i192 %r19 to i256
%r22 = getelementptr i64, i64* %r2, i32 3
%r23 = load i64, i64* %r22
%r24 = zext i64 %r23 to i256
%r25 = shl i256 %r24, 192
%r26 = or i256 %r20, %r25
%r27 = zext i256 %r26 to i320
%r29 = getelementptr i64, i64* %r2, i32 4
%r30 = load i64, i64* %r29
%r31 = zext i64 %r30 to i320
%r32 = shl i320 %r31, 256
%r33 = or i320 %r27, %r32
%r34 = zext i320 %r33 to i384
%r36 = getelementptr i64, i64* %r2, i32 5
%r37 = load i64, i64* %r36
%r38 = zext i64 %r37 to i384
%r39 = shl i384 %r38, 320
%r40 = or i384 %r34, %r39
%r41 = zext i384 %r40 to i448
%r43 = getelementptr i64, i64* %r2, i32 6
%r44 = load i64, i64* %r43
%r45 = zext i64 %r44 to i448
%r46 = shl i448 %r45, 384
%r47 = or i448 %r41, %r46
%r48 = zext i448 %r47 to i512
%r50 = getelementptr i64, i64* %r2, i32 7
%r51 = load i64, i64* %r50
%r52 = zext i64 %r51 to i512
%r53 = shl i512 %r52, 448
%r54 = or i512 %r48, %r53
%r55 = zext i512 %r54 to i576
%r57 = getelementptr i64, i64* %r2, i32 8
%r58 = load i64, i64* %r57
%r59 = zext i64 %r58 to i576
%r60 = shl i576 %r59, 512
%r61 = or i576 %r55, %r60
%r62 = zext i576 %r61 to i640
%r64 = getelementptr i64, i64* %r2, i32 9
%r65 = load i64, i64* %r64
%r66 = zext i64 %r65 to i640
%r67 = shl i640 %r66, 576
%r68 = or i640 %r62, %r67
%r69 = zext i640 %r68 to i704
%r71 = getelementptr i64, i64* %r2, i32 10
%r72 = load i64, i64* %r71
%r73 = zext i64 %r72 to i704
%r74 = shl i704 %r73, 640
%r75 = or i704 %r69, %r74
%r76 = zext i704 %r75 to i768
%r78 = getelementptr i64, i64* %r2, i32 11
%r79 = load i64, i64* %r78
%r80 = zext i64 %r79 to i768
%r81 = shl i768 %r80, 704
%r82 = or i768 %r76, %r81
%r83 = load i64, i64* %r3
%r84 = zext i64 %r83 to i128
%r86 = getelementptr i64, i64* %r3, i32 1
%r87 = load i64, i64* %r86
%r88 = zext i64 %r87 to i128
%r89 = shl i128 %r88, 64
%r90 = or i128 %r84, %r89
%r91 = zext i128 %r90 to i192
%r93 = getelementptr i64, i64* %r3, i32 2
%r94 = load i64, i64* %r93
%r95 = zext i64 %r94 to i192
%r96 = shl i192 %r95, 128
%r97 = or i192 %r91, %r96
%r98 = zext i192 %r97 to i256
%r100 = getelementptr i64, i64* %r3, i32 3
%r101 = load i64, i64* %r100
%r102 = zext i64 %r101 to i256
%r103 = shl i256 %r102, 192
%r104 = or i256 %r98, %r103
%r105 = zext i256 %r104 to i320
%r107 = getelementptr i64, i64* %r3, i32 4
%r108 = load i64, i64* %r107
%r109 = zext i64 %r108 to i320
%r110 = shl i320 %r109, 256
%r111 = or i320 %r105, %r110
%r112 = zext i320 %r111 to i384
%r114 = getelementptr i64, i64* %r3, i32 5
%r115 = load i64, i64* %r114
%r116 = zext i64 %r115 to i384
%r117 = shl i384 %r116, 320
%r118 = or i384 %r112, %r117
%r119 = zext i384 %r118 to i448
%r121 = getelementptr i64, i64* %r3, i32 6
%r122 = load i64, i64* %r121
%r123 = zext i64 %r122 to i448
%r124 = shl i448 %r123, 384
%r125 = or i448 %r119, %r124
%r126 = zext i448 %r125 to i512
%r128 = getelementptr i64, i64* %r3, i32 7
%r129 = load i64, i64* %r128
%r130 = zext i64 %r129 to i512
%r131 = shl i512 %r130, 448
%r132 = or i512 %r126, %r131
%r133 = zext i512 %r132 to i576
%r135 = getelementptr i64, i64* %r3, i32 8
%r136 = load i64, i64* %r135
%r137 = zext i64 %r136 to i576
%r138 = shl i576 %r137, 512
%r139 = or i576 %r133, %r138
%r140 = zext i576 %r139 to i640
%r142 = getelementptr i64, i64* %r3, i32 9
%r143 = load i64, i64* %r142
%r144 = zext i64 %r143 to i640
%r145 = shl i640 %r144, 576
%r146 = or i640 %r140, %r145
%r147 = zext i640 %r146 to i704
%r149 = getelementptr i64, i64* %r3, i32 10
%r150 = load i64, i64* %r149
%r151 = zext i64 %r150 to i704
%r152 = shl i704 %r151, 640
%r153 = or i704 %r147, %r152
%r154 = zext i704 %r153 to i768
%r156 = getelementptr i64, i64* %r3, i32 11
%r157 = load i64, i64* %r156
%r158 = zext i64 %r157 to i768
%r159 = shl i768 %r158, 704
%r160 = or i768 %r154, %r159
%r161 = zext i768 %r82 to i832
%r162 = zext i768 %r160 to i832
%r163 = sub i832 %r161, %r162
%r164 = trunc i832 %r163 to i384
%r165 = trunc i384 %r164 to i64
%r167 = getelementptr i64, i64* %r1, i32 0
store i64 %r165, i64* %r167
%r168 = lshr i384 %r164, 64
%r169 = trunc i384 %r168 to i64
%r171 = getelementptr i64, i64* %r1, i32 1
store i64 %r169, i64* %r171
%r172 = lshr i384 %r168, 64
%r173 = trunc i384 %r172 to i64
%r175 = getelementptr i64, i64* %r1, i32 2
store i64 %r173, i64* %r175
%r176 = lshr i384 %r172, 64
%r177 = trunc i384 %r176 to i64
%r179 = getelementptr i64, i64* %r1, i32 3
store i64 %r177, i64* %r179
%r180 = lshr i384 %r176, 64
%r181 = trunc i384 %r180 to i64
%r183 = getelementptr i64, i64* %r1, i32 4
store i64 %r181, i64* %r183
%r184 = lshr i384 %r180, 64
%r185 = trunc i384 %r184 to i64
%r187 = getelementptr i64, i64* %r1, i32 5
store i64 %r185, i64* %r187
%r188 = lshr i832 %r163, 384
%r189 = trunc i832 %r188 to i384
%r190 = lshr i832 %r163, 768
%r191 = trunc i832 %r190 to i1
%r192 = load i64, i64* %r4
%r193 = zext i64 %r192 to i128
%r195 = getelementptr i64, i64* %r4, i32 1
%r196 = load i64, i64* %r195
%r197 = zext i64 %r196 to i128
%r198 = shl i128 %r197, 64
%r199 = or i128 %r193, %r198
%r200 = zext i128 %r199 to i192
%r202 = getelementptr i64, i64* %r4, i32 2
%r203 = load i64, i64* %r202
%r204 = zext i64 %r203 to i192
%r205 = shl i192 %r204, 128
%r206 = or i192 %r200, %r205
%r207 = zext i192 %r206 to i256
%r209 = getelementptr i64, i64* %r4, i32 3
%r210 = load i64, i64* %r209
%r211 = zext i64 %r210 to i256
%r212 = shl i256 %r211, 192
%r213 = or i256 %r207, %r212
%r214 = zext i256 %r213 to i320
%r216 = getelementptr i64, i64* %r4, i32 4
%r217 = load i64, i64* %r216
%r218 = zext i64 %r217 to i320
%r219 = shl i320 %r218, 256
%r220 = or i320 %r214, %r219
%r221 = zext i320 %r220 to i384
%r223 = getelementptr i64, i64* %r4, i32 5
%r224 = load i64, i64* %r223
%r225 = zext i64 %r224 to i384
%r226 = shl i384 %r225, 320
%r227 = or i384 %r221, %r226
%r229 = select i1 %r191, i384 %r227, i384 0
%r230 = add i384 %r189, %r229
%r232 = getelementptr i64, i64* %r1, i32 6
%r233 = trunc i384 %r230 to i64
%r235 = getelementptr i64, i64* %r232, i32 0
store i64 %r233, i64* %r235
%r236 = lshr i384 %r230, 64
%r237 = trunc i384 %r236 to i64
%r239 = getelementptr i64, i64* %r232, i32 1
store i64 %r237, i64* %r239
%r240 = lshr i384 %r236, 64
%r241 = trunc i384 %r240 to i64
%r243 = getelementptr i64, i64* %r232, i32 2
store i64 %r241, i64* %r243
%r244 = lshr i384 %r240, 64
%r245 = trunc i384 %r244 to i64
%r247 = getelementptr i64, i64* %r232, i32 3
store i64 %r245, i64* %r247
%r248 = lshr i384 %r244, 64
%r249 = trunc i384 %r248 to i64
%r251 = getelementptr i64, i64* %r232, i32 4
store i64 %r249, i64* %r251
%r252 = lshr i384 %r248, 64
%r253 = trunc i384 %r252 to i64
%r255 = getelementptr i64, i64* %r232, i32 5
store i64 %r253, i64* %r255
ret void
}
