; ModuleID = '/home/rika/eceproject/hequ2/FPGAs-for-Accelerating-the-Phylogenetic-Likelihood-Function/verilog-solution/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_1 = appending global [2 x void ()*] [void ()* @_GLOBAL__I_a, void ()* @_GLOBAL__I_a1947] ; [#uses=0 type=[2 x void ()*]*]
@llvm_global_ctors_0 = appending global [2 x i32] [i32 65535, i32 65535] ; [#uses=0 type=[2 x i32]*]
@compute_str = internal unnamed_addr constant [8 x i8] c"compute\00" ; [#uses=1 type=[8 x i8]*]

; [#uses=1]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=35]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define double @compute(i32 %size, i32 %length, [75 x double]* %dataa, [75 x double]* %datac, [75 x double]* %datag, [75 x double]* %datat) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %size) nounwind, !map !1229
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %length) nounwind, !map !1235
  call void (...)* @_ssdm_op_SpecBitsMap([75 x double]* %dataa) nounwind, !map !1239
  call void (...)* @_ssdm_op_SpecBitsMap([75 x double]* %datac) nounwind, !map !1246
  call void (...)* @_ssdm_op_SpecBitsMap([75 x double]* %datag) nounwind, !map !1250
  call void (...)* @_ssdm_op_SpecBitsMap([75 x double]* %datat) nounwind, !map !1254
  call void (...)* @_ssdm_op_SpecBitsMap(double 0.000000e+00) nounwind, !map !1258
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @compute_str) nounwind
  %length_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %length) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %length_read}, i64 0, metadata !1264), !dbg !1277 ; [debug line = 83:30] [debug variable = length]
  %size_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %size) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %size_read}, i64 0, metadata !1278), !dbg !1279 ; [debug line = 83:20] [debug variable = size]
  call void @llvm.dbg.value(metadata !{i32 %size_read}, i64 0, metadata !1280), !dbg !1286 ; [debug line = 62:21@92:13] [debug variable = size]
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !1278), !dbg !1279 ; [debug line = 83:20] [debug variable = size]
  call void @llvm.dbg.value(metadata !{i32 %length}, i64 0, metadata !1264), !dbg !1277 ; [debug line = 83:30] [debug variable = length]
  call void @llvm.dbg.value(metadata !{[75 x double]* %dataa}, i64 0, metadata !1287), !dbg !1291 ; [debug line = 83:45] [debug variable = dataa]
  call void @llvm.dbg.value(metadata !{[75 x double]* %datac}, i64 0, metadata !1292), !dbg !1293 ; [debug line = 83:66] [debug variable = datac]
  call void @llvm.dbg.value(metadata !{[75 x double]* %datag}, i64 0, metadata !1294), !dbg !1295 ; [debug line = 84:8] [debug variable = datag]
  call void @llvm.dbg.value(metadata !{[75 x double]* %datat}, i64 0, metadata !1296), !dbg !1297 ; [debug line = 84:29] [debug variable = datat]
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !1280), !dbg !1286 ; [debug line = 62:21@92:13] [debug variable = size]
  br label %1, !dbg !1298                         ; [debug line = 65:6@92:13]

; <label>:1                                       ; preds = %4, %0
  %index_assign = phi i32 [ %i_1, %4 ], [ 0, %0 ] ; [#uses=3 type=i32]
  %indvars_iv = phi i32 [ %indvars_iv_next, %4 ], [ -1, %0 ] ; [#uses=2 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %index_assign}, i64 0, metadata !1301), !dbg !1307 ; [debug line = 73:27@66:11@92:13] [debug variable = index]
  %i_1 = add i32 %index_assign, 1, !dbg !1308     ; [#uses=1 type=i32] [debug line = 65:13@92:13]
  br label %2, !dbg !1309                         ; [debug line = 76:6@66:11@92:13]

; <label>:2                                       ; preds = %3, %1
  %i_i_i = phi i32 [ 0, %1 ], [ %i, %3 ]          ; [#uses=2 type=i32]
  %deSize = phi i32 [ 1, %1 ], [ %result, %3 ]    ; [#uses=2 type=i32]
  %exitcond1 = icmp eq i32 %i_i_i, %index_assign, !dbg !1309 ; [#uses=1 type=i1] [debug line = 76:6@66:11@92:13]
  %i = add nsw i32 %i_i_i, 1, !dbg !1312          ; [#uses=1 type=i32] [debug line = 76:20@66:11@92:13]
  br i1 %exitcond1, label %mypower.exit.i, label %3, !dbg !1309 ; [debug line = 76:6@66:11@92:13]

; <label>:3                                       ; preds = %2
  %result = shl i32 %deSize, 1, !dbg !1313        ; [#uses=1 type=i32] [debug line = 77:3@66:11@92:13]
  call void @llvm.dbg.value(metadata !{i32 %result}, i64 0, metadata !1315), !dbg !1313 ; [debug line = 77:3@66:11@92:13] [debug variable = result]
  call void @llvm.dbg.value(metadata !{i32 %i}, i64 0, metadata !1316), !dbg !1312 ; [debug line = 76:20@66:11@92:13] [debug variable = i]
  br label %2, !dbg !1312                         ; [debug line = 76:20@66:11@92:13]

mypower.exit.i:                                   ; preds = %2
  call void @llvm.dbg.value(metadata !{i32 %deSize}, i64 0, metadata !1317), !dbg !1305 ; [debug line = 66:11@92:13] [debug variable = deSize]
  %tmp_i = icmp slt i32 %deSize, %size_read, !dbg !1318 ; [#uses=1 type=i1] [debug line = 67:3@92:13]
  br i1 %tmp_i, label %4, label %countHeight.exit.preheader, !dbg !1318 ; [debug line = 67:3@92:13]

countHeight.exit.preheader:                       ; preds = %mypower.exit.i
  br label %countHeight.exit, !dbg !1319          ; [debug line = 95:14]

; <label>:4                                       ; preds = %mypower.exit.i
  call void @llvm.dbg.value(metadata !{i32 %i_1}, i64 0, metadata !1320), !dbg !1308 ; [debug line = 65:13@92:13] [debug variable = i]
  %indvars_iv_next = add i32 %indvars_iv, 1, !dbg !1308 ; [#uses=1 type=i32] [debug line = 65:13@92:13]
  br label %1, !dbg !1308                         ; [debug line = 65:13@92:13]

countHeight.exit.loopexit:                        ; preds = %6
  %indvars_iv_next2 = add i32 %indvars_iv2, -1    ; [#uses=1 type=i32]
  br label %countHeight.exit

countHeight.exit:                                 ; preds = %countHeight.exit.loopexit, %countHeight.exit.preheader
  %indvars_iv2 = phi i32 [ %indvars_iv_next2, %countHeight.exit.loopexit ], [ %indvars_iv, %countHeight.exit.preheader ], !dbg !1308 ; [#uses=2 type=i32] [debug line = 65:13@92:13]
  %k1_in = phi i32 [ %k, %countHeight.exit.loopexit ], [ %index_assign, %countHeight.exit.preheader ] ; [#uses=1 type=i32]
  %k = add nsw i32 %k1_in, -1, !dbg !1319         ; [#uses=2 type=i32] [debug line = 95:14]
  call void @llvm.dbg.value(metadata !{i32 %k}, i64 0, metadata !1321), !dbg !1325 ; [debug line = 73:27@97:14] [debug variable = index]
  call void @llvm.dbg.value(metadata !{i32 %k}, i64 0, metadata !1326), !dbg !1319 ; [debug line = 95:14] [debug variable = k]
  %tmp = icmp sgt i32 %k, 0, !dbg !1327           ; [#uses=1 type=i1] [debug line = 96:6]
  br i1 %tmp, label %.preheader39.preheader, label %.preheader.preheader_ifconv, !dbg !1327 ; [debug line = 96:6]

.preheader39.preheader:                           ; preds = %countHeight.exit
  br label %.preheader39

.preheader.preheader_ifconv:                      ; preds = %countHeight.exit
  ret double undef, !dbg !1328                    ; [debug line = 174:1]

.preheader39:                                     ; preds = %5, %.preheader39.preheader
  %i_i = phi i32 [ %i_2, %5 ], [ 0, %.preheader39.preheader ] ; [#uses=2 type=i32]
  %right_2 = phi i32 [ %result_1, %5 ], [ 1, %.preheader39.preheader ] ; [#uses=4 type=i32]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 -1, i64 0) nounwind ; [#uses=0 type=i32]
  %exitcond = icmp eq i32 %i_i, %indvars_iv2, !dbg !1329 ; [#uses=1 type=i1] [debug line = 76:6@97:14]
  %i_2 = add nsw i32 %i_i, 1, !dbg !1330          ; [#uses=1 type=i32] [debug line = 76:20@97:14]
  br i1 %exitcond, label %mypower.exit, label %5, !dbg !1329 ; [debug line = 76:6@97:14]

; <label>:5                                       ; preds = %.preheader39
  %result_1 = shl i32 %right_2, 1, !dbg !1331     ; [#uses=1 type=i32] [debug line = 77:3@97:14]
  call void @llvm.dbg.value(metadata !{i32 %result_1}, i64 0, metadata !1332), !dbg !1331 ; [debug line = 77:3@97:14] [debug variable = result]
  call void @llvm.dbg.value(metadata !{i32 %i_2}, i64 0, metadata !1333), !dbg !1330 ; [debug line = 76:20@97:14] [debug variable = i]
  br label %.preheader39, !dbg !1330              ; [debug line = 76:20@97:14]

mypower.exit:                                     ; preds = %.preheader39
  %left = add nsw i32 %right_2, -1, !dbg !1322    ; [#uses=1 type=i32] [debug line = 97:14]
  call void @llvm.dbg.value(metadata !{i32 %left}, i64 0, metadata !1334), !dbg !1322 ; [debug line = 97:14] [debug variable = left]
  call void @llvm.dbg.value(metadata !{i32 %right_2}, i64 0, metadata !1335), !dbg !1336 ; [debug line = 98:14] [debug variable = right]
  call void @llvm.dbg.value(metadata !{i32 %right_2}, i64 0, metadata !1337), !dbg !1338 ; [debug line = 99:16] [debug variable = leaves]
  br label %6, !dbg !1339                         ; [debug line = 100:3]

; <label>:6                                       ; preds = %8, %mypower.exit
  %left1 = phi i32 [ %left, %mypower.exit ], [ %left_1, %8 ] ; [#uses=6 type=i32]
  %right1 = phi i32 [ %right_2, %mypower.exit ], [ %right, %8 ] ; [#uses=3 type=i32]
  %leaves1 = phi i32 [ %right_2, %mypower.exit ], [ %leaves_1, %8 ] ; [#uses=2 type=i32]
  %tmp_3 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %leaves1, i32 31), !dbg !1339 ; [#uses=1 type=i1] [debug line = 100:3]
  br i1 %tmp_3, label %countHeight.exit.loopexit, label %.preheader1.preheader, !dbg !1339 ; [debug line = 100:3]

.preheader1.preheader:                            ; preds = %6
  %tmp_8 = trunc i32 %left1 to i8                 ; [#uses=1 type=i8]
  %tmp_9 = trunc i32 %left1 to i6                 ; [#uses=1 type=i6]
  %p_shl2_cast = call i8 @_ssdm_op_BitConcatenate.i8.i6.i2(i6 %tmp_9, i2 0), !dbg !1341 ; [#uses=1 type=i8] [debug line = 104:66]
  %tmp_1 = add i8 %p_shl2_cast, %tmp_8, !dbg !1341 ; [#uses=1 type=i8] [debug line = 104:66]
  %tmp_50 = trunc i32 %right1 to i8               ; [#uses=1 type=i8]
  %tmp_51 = trunc i32 %right1 to i6               ; [#uses=1 type=i6]
  %p_shl1_cast = call i8 @_ssdm_op_BitConcatenate.i8.i6.i2(i6 %tmp_51, i2 0), !dbg !1345 ; [#uses=1 type=i8] [debug line = 113:68]
  %tmp_2 = add i8 %p_shl1_cast, %tmp_50, !dbg !1345 ; [#uses=1 type=i8] [debug line = 113:68]
  %tmp_52 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %left1, i32 31), !dbg !1346 ; [#uses=1 type=i1] [debug line = 120:22]
  %p_neg = sub i32 0, %left1, !dbg !1346          ; [#uses=1 type=i32] [debug line = 120:22]
  %p_lshr = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %p_neg, i32 1, i32 31), !dbg !1346 ; [#uses=1 type=i31] [debug line = 120:22]
  %tmp_53 = zext i31 %p_lshr to i32, !dbg !1346   ; [#uses=1 type=i32] [debug line = 120:22]
  %p_neg_t = sub i32 0, %tmp_53, !dbg !1346       ; [#uses=1 type=i32] [debug line = 120:22]
  %p_lshr_f = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %left1, i32 1, i32 31), !dbg !1346 ; [#uses=1 type=i31] [debug line = 120:22]
  %tmp_54 = zext i31 %p_lshr_f to i32, !dbg !1346 ; [#uses=1 type=i32] [debug line = 120:22]
  %parent = select i1 %tmp_52, i32 %p_neg_t, i32 %tmp_54, !dbg !1346 ; [#uses=2 type=i32] [debug line = 120:22]
  %tmp_55 = trunc i32 %parent to i8               ; [#uses=1 type=i8]
  %tmp_56 = trunc i32 %parent to i6               ; [#uses=1 type=i6]
  %p_shl_cast = call i8 @_ssdm_op_BitConcatenate.i8.i6.i2(i6 %tmp_56, i2 0), !dbg !1347 ; [#uses=1 type=i8] [debug line = 121:5]
  %tmp_57 = add i8 %p_shl_cast, %tmp_55, !dbg !1347 ; [#uses=1 type=i8] [debug line = 121:5]
  br label %.preheader1, !dbg !1348               ; [debug line = 102:8]

.preheader1:                                      ; preds = %7, %.preheader1.preheader
  %y = phi i31 [ %y_1, %7 ], [ 0, %.preheader1.preheader ] ; [#uses=3 type=i31]
  %y_cast = zext i31 %y to i32, !dbg !1348        ; [#uses=1 type=i32] [debug line = 102:8]
  %tmp_6 = icmp slt i32 %y_cast, %length_read, !dbg !1348 ; [#uses=1 type=i1] [debug line = 102:8]
  %y_1 = add i31 %y, 1, !dbg !1349                ; [#uses=1 type=i31] [debug line = 102:23]
  br i1 %tmp_6, label %7, label %8, !dbg !1348    ; [debug line = 102:8]

; <label>:7                                       ; preds = %.preheader1
  %tmp_58 = trunc i31 %y to i8, !dbg !1341        ; [#uses=3 type=i8] [debug line = 104:66]
  %tmp_59 = add i8 %tmp_1, %tmp_58, !dbg !1341    ; [#uses=1 type=i8] [debug line = 104:66]
  %tmp_60_cast = sext i8 %tmp_59 to i64, !dbg !1341 ; [#uses=4 type=i64] [debug line = 104:66]
  %dataa_addr = getelementptr [75 x double]* %dataa, i64 0, i64 %tmp_60_cast, !dbg !1341 ; [#uses=1 type=double*] [debug line = 104:66]
  %tmp_60 = add i8 %tmp_2, %tmp_58, !dbg !1345    ; [#uses=1 type=i8] [debug line = 113:68]
  %tmp_61_cast = sext i8 %tmp_60 to i64, !dbg !1345 ; [#uses=4 type=i64] [debug line = 113:68]
  %dataa_addr_1 = getelementptr [75 x double]* %dataa, i64 0, i64 %tmp_61_cast, !dbg !1345 ; [#uses=1 type=double*] [debug line = 113:68]
  %tmp_61 = add i8 %tmp_57, %tmp_58, !dbg !1347   ; [#uses=1 type=i8] [debug line = 121:5]
  %tmp_62_cast = sext i8 %tmp_61 to i64, !dbg !1347 ; [#uses=4 type=i64] [debug line = 121:5]
  %dataa_addr_2 = getelementptr [75 x double]* %dataa, i64 0, i64 %tmp_62_cast, !dbg !1347 ; [#uses=1 type=double*] [debug line = 121:5]
  %datac_addr = getelementptr [75 x double]* %datac, i64 0, i64 %tmp_60_cast, !dbg !1341 ; [#uses=1 type=double*] [debug line = 104:66]
  %datac_addr_1 = getelementptr [75 x double]* %datac, i64 0, i64 %tmp_61_cast, !dbg !1345 ; [#uses=1 type=double*] [debug line = 113:68]
  %datac_addr_2 = getelementptr [75 x double]* %datac, i64 0, i64 %tmp_62_cast, !dbg !1350 ; [#uses=1 type=double*] [debug line = 122:5]
  %datag_addr = getelementptr [75 x double]* %datag, i64 0, i64 %tmp_60_cast, !dbg !1341 ; [#uses=1 type=double*] [debug line = 104:66]
  %datag_addr_1 = getelementptr [75 x double]* %datag, i64 0, i64 %tmp_61_cast, !dbg !1345 ; [#uses=1 type=double*] [debug line = 113:68]
  %datag_addr_2 = getelementptr [75 x double]* %datag, i64 0, i64 %tmp_62_cast, !dbg !1351 ; [#uses=1 type=double*] [debug line = 123:5]
  %datat_addr = getelementptr [75 x double]* %datat, i64 0, i64 %tmp_60_cast, !dbg !1341 ; [#uses=1 type=double*] [debug line = 104:66]
  %datat_addr_1 = getelementptr [75 x double]* %datat, i64 0, i64 %tmp_61_cast, !dbg !1345 ; [#uses=1 type=double*] [debug line = 113:68]
  %datat_addr_2 = getelementptr [75 x double]* %datat, i64 0, i64 %tmp_62_cast, !dbg !1352 ; [#uses=1 type=double*] [debug line = 124:5]
  %dataa_load = load double* %dataa_addr, align 8, !dbg !1341 ; [#uses=3 type=double] [debug line = 104:66]
  %tmp_s = fmul double %dataa_load, 5.802030e-01, !dbg !1341 ; [#uses=1 type=double] [debug line = 104:66]
  %datac_load = load double* %datac_addr, align 8, !dbg !1341 ; [#uses=3 type=double] [debug line = 104:66]
  %tmp_4 = fmul double %datac_load, 1.406870e-01, !dbg !1341 ; [#uses=2 type=double] [debug line = 104:66]
  %tmp_5 = fadd double %tmp_s, %tmp_4, !dbg !1341 ; [#uses=1 type=double] [debug line = 104:66]
  %datag_load = load double* %datag_addr, align 8, !dbg !1341 ; [#uses=3 type=double] [debug line = 104:66]
  %tmp_7 = fmul double %datag_load, 2.322150e-01, !dbg !1341 ; [#uses=1 type=double] [debug line = 104:66]
  %tmp_10 = fadd double %tmp_5, %tmp_7, !dbg !1341 ; [#uses=1 type=double] [debug line = 104:66]
  %datat_load = load double* %datat_addr, align 8, !dbg !1341 ; [#uses=3 type=double] [debug line = 104:66]
  %tmp_11 = fmul double %datat_load, 4.689570e-02, !dbg !1341 ; [#uses=2 type=double] [debug line = 104:66]
  %lefta = fadd double %tmp_10, %tmp_11, !dbg !1341 ; [#uses=1 type=double] [debug line = 104:66]
  call void @llvm.dbg.value(metadata !{double %lefta}, i64 0, metadata !1353), !dbg !1341 ; [debug line = 104:66] [debug variable = lefta]
  %tmp_12 = fmul double %dataa_load, 1.875830e-01, !dbg !1354 ; [#uses=2 type=double] [debug line = 106:66]
  %tmp_13 = fmul double %datac_load, 5.871870e-01, !dbg !1354 ; [#uses=1 type=double] [debug line = 106:66]
  %tmp_14 = fadd double %tmp_12, %tmp_13, !dbg !1354 ; [#uses=1 type=double] [debug line = 106:66]
  %tmp_15 = fmul double %datag_load, 9.379130e-02, !dbg !1354 ; [#uses=2 type=double] [debug line = 106:66]
  %tmp_16 = fadd double %tmp_14, %tmp_15, !dbg !1354 ; [#uses=1 type=double] [debug line = 106:66]
  %tmp_17 = fmul double %datat_load, 1.314400e-01, !dbg !1354 ; [#uses=1 type=double] [debug line = 106:66]
  %leftc = fadd double %tmp_16, %tmp_17, !dbg !1354 ; [#uses=1 type=double] [debug line = 106:66]
  call void @llvm.dbg.value(metadata !{double %leftc}, i64 0, metadata !1355), !dbg !1354 ; [debug line = 106:66] [debug variable = leftc]
  %tmp_18 = fmul double %dataa_load, 4.644290e-01, !dbg !1356 ; [#uses=1 type=double] [debug line = 108:66]
  %tmp_19 = fadd double %tmp_18, %tmp_4, !dbg !1356 ; [#uses=1 type=double] [debug line = 108:66]
  %tmp_20 = fmul double %datag_load, 3.479880e-01, !dbg !1356 ; [#uses=1 type=double] [debug line = 108:66]
  %tmp_21 = fadd double %tmp_19, %tmp_20, !dbg !1356 ; [#uses=1 type=double] [debug line = 108:66]
  %leftg = fadd double %tmp_21, %tmp_11, !dbg !1356 ; [#uses=1 type=double] [debug line = 108:66]
  call void @llvm.dbg.value(metadata !{double %leftg}, i64 0, metadata !1357), !dbg !1356 ; [debug line = 108:66] [debug variable = leftg]
  %tmp_22 = fmul double %datac_load, 3.943190e-01, !dbg !1358 ; [#uses=1 type=double] [debug line = 110:66]
  %tmp_23 = fadd double %tmp_12, %tmp_22, !dbg !1358 ; [#uses=1 type=double] [debug line = 110:66]
  %tmp_24 = fadd double %tmp_23, %tmp_15, !dbg !1358 ; [#uses=1 type=double] [debug line = 110:66]
  %tmp_25 = fmul double %datat_load, 3.243070e-01, !dbg !1358 ; [#uses=1 type=double] [debug line = 110:66]
  %leftt = fadd double %tmp_24, %tmp_25, !dbg !1358 ; [#uses=1 type=double] [debug line = 110:66]
  call void @llvm.dbg.value(metadata !{double %leftt}, i64 0, metadata !1359), !dbg !1358 ; [debug line = 110:66] [debug variable = leftt]
  %dataa_load_1 = load double* %dataa_addr_1, align 8, !dbg !1345 ; [#uses=3 type=double] [debug line = 113:68]
  %tmp_26 = fmul double %dataa_load_1, 5.802030e-01, !dbg !1345 ; [#uses=1 type=double] [debug line = 113:68]
  %datac_load_1 = load double* %datac_addr_1, align 8, !dbg !1345 ; [#uses=3 type=double] [debug line = 113:68]
  %tmp_27 = fmul double %datac_load_1, 1.406870e-01, !dbg !1345 ; [#uses=2 type=double] [debug line = 113:68]
  %tmp_28 = fadd double %tmp_26, %tmp_27, !dbg !1345 ; [#uses=1 type=double] [debug line = 113:68]
  %datag_load_1 = load double* %datag_addr_1, align 8, !dbg !1345 ; [#uses=3 type=double] [debug line = 113:68]
  %tmp_29 = fmul double %datag_load_1, 2.322150e-01, !dbg !1345 ; [#uses=1 type=double] [debug line = 113:68]
  %tmp_30 = fadd double %tmp_28, %tmp_29, !dbg !1345 ; [#uses=1 type=double] [debug line = 113:68]
  %datat_load_1 = load double* %datat_addr_1, align 8, !dbg !1345 ; [#uses=3 type=double] [debug line = 113:68]
  %tmp_31 = fmul double %datat_load_1, 4.689570e-02, !dbg !1345 ; [#uses=2 type=double] [debug line = 113:68]
  %righta = fadd double %tmp_30, %tmp_31, !dbg !1345 ; [#uses=1 type=double] [debug line = 113:68]
  call void @llvm.dbg.value(metadata !{double %righta}, i64 0, metadata !1360), !dbg !1345 ; [debug line = 113:68] [debug variable = righta]
  %tmp_32 = fmul double %dataa_load_1, 1.875830e-01, !dbg !1361 ; [#uses=2 type=double] [debug line = 115:68]
  %tmp_33 = fmul double %datac_load_1, 5.871870e-01, !dbg !1361 ; [#uses=1 type=double] [debug line = 115:68]
  %tmp_34 = fadd double %tmp_32, %tmp_33, !dbg !1361 ; [#uses=1 type=double] [debug line = 115:68]
  %tmp_35 = fmul double %datag_load_1, 9.379130e-02, !dbg !1361 ; [#uses=2 type=double] [debug line = 115:68]
  %tmp_36 = fadd double %tmp_34, %tmp_35, !dbg !1361 ; [#uses=1 type=double] [debug line = 115:68]
  %tmp_37 = fmul double %datat_load_1, 1.314400e-01, !dbg !1361 ; [#uses=1 type=double] [debug line = 115:68]
  %rightc = fadd double %tmp_36, %tmp_37, !dbg !1361 ; [#uses=1 type=double] [debug line = 115:68]
  call void @llvm.dbg.value(metadata !{double %rightc}, i64 0, metadata !1362), !dbg !1361 ; [debug line = 115:68] [debug variable = rightc]
  %tmp_38 = fmul double %dataa_load_1, 4.644290e-01, !dbg !1363 ; [#uses=1 type=double] [debug line = 117:68]
  %tmp_39 = fadd double %tmp_38, %tmp_27, !dbg !1363 ; [#uses=1 type=double] [debug line = 117:68]
  %tmp_40 = fmul double %datag_load_1, 3.479880e-01, !dbg !1363 ; [#uses=1 type=double] [debug line = 117:68]
  %tmp_41 = fadd double %tmp_39, %tmp_40, !dbg !1363 ; [#uses=1 type=double] [debug line = 117:68]
  %rightg = fadd double %tmp_41, %tmp_31, !dbg !1363 ; [#uses=1 type=double] [debug line = 117:68]
  call void @llvm.dbg.value(metadata !{double %rightg}, i64 0, metadata !1364), !dbg !1363 ; [debug line = 117:68] [debug variable = rightg]
  %tmp_42 = fmul double %datac_load_1, 3.943190e-01, !dbg !1365 ; [#uses=1 type=double] [debug line = 119:68]
  %tmp_43 = fadd double %tmp_32, %tmp_42, !dbg !1365 ; [#uses=1 type=double] [debug line = 119:68]
  %tmp_44 = fadd double %tmp_43, %tmp_35, !dbg !1365 ; [#uses=1 type=double] [debug line = 119:68]
  %tmp_45 = fmul double %datat_load_1, 3.243070e-01, !dbg !1365 ; [#uses=1 type=double] [debug line = 119:68]
  %rightt = fadd double %tmp_44, %tmp_45, !dbg !1365 ; [#uses=1 type=double] [debug line = 119:68]
  call void @llvm.dbg.value(metadata !{double %rightt}, i64 0, metadata !1366), !dbg !1365 ; [debug line = 119:68] [debug variable = rightt]
  call void @llvm.dbg.value(metadata !{i32 %parent}, i64 0, metadata !1367), !dbg !1346 ; [debug line = 120:22] [debug variable = parent]
  %tmp_46 = fadd double %lefta, %righta, !dbg !1347 ; [#uses=1 type=double] [debug line = 121:5]
  store double %tmp_46, double* %dataa_addr_2, align 8, !dbg !1347 ; [debug line = 121:5]
  %tmp_47 = fadd double %leftc, %rightc, !dbg !1350 ; [#uses=1 type=double] [debug line = 122:5]
  store double %tmp_47, double* %datac_addr_2, align 8, !dbg !1350 ; [debug line = 122:5]
  %tmp_48 = fadd double %leftg, %rightg, !dbg !1351 ; [#uses=1 type=double] [debug line = 123:5]
  store double %tmp_48, double* %datag_addr_2, align 8, !dbg !1351 ; [debug line = 123:5]
  %tmp_49 = fadd double %leftt, %rightt, !dbg !1352 ; [#uses=1 type=double] [debug line = 124:5]
  store double %tmp_49, double* %datat_addr_2, align 8, !dbg !1352 ; [debug line = 124:5]
  call void @llvm.dbg.value(metadata !{i31 %y_1}, i64 0, metadata !1368), !dbg !1349 ; [debug line = 102:23] [debug variable = y]
  br label %.preheader1, !dbg !1349               ; [debug line = 102:23]

; <label>:8                                       ; preds = %.preheader1
  %left_1 = add nsw i32 %left1, 2, !dbg !1369     ; [#uses=1 type=i32] [debug line = 128:4]
  call void @llvm.dbg.value(metadata !{i32 %left_1}, i64 0, metadata !1334), !dbg !1369 ; [debug line = 128:4] [debug variable = left]
  %right = add nsw i32 %right1, 2, !dbg !1370     ; [#uses=1 type=i32] [debug line = 129:4]
  call void @llvm.dbg.value(metadata !{i32 %right}, i64 0, metadata !1335), !dbg !1370 ; [debug line = 129:4] [debug variable = right]
  %leaves_1 = add nsw i32 %leaves1, -2, !dbg !1371 ; [#uses=1 type=i32] [debug line = 100:20]
  call void @llvm.dbg.value(metadata !{i32 %leaves_1}, i64 0, metadata !1337), !dbg !1371 ; [debug line = 100:20] [debug variable = leaves]
  br label %6, !dbg !1371                         ; [debug line = 100:20]
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=7]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=2]
define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

; [#uses=0]
declare i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
declare i8 @_ssdm_op_PartSelect.i8.i31.i32.i32(i31, i32, i32) nounwind readnone

; [#uses=0]
declare i6 @_ssdm_op_PartSelect.i6.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=2]
define weak i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_4 = trunc i32 %empty to i31              ; [#uses=1 type=i31]
  ret i31 %empty_4
}

; [#uses=2]
define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1                          ; [#uses=1 type=i32]
  %empty_5 = and i32 %0, %empty                   ; [#uses=1 type=i32]
  %empty_6 = icmp ne i32 %empty_5, 0              ; [#uses=1 type=i1]
  ret i1 %empty_6
}

; [#uses=3]
define weak i8 @_ssdm_op_BitConcatenate.i8.i6.i2(i6, i2) nounwind readnone {
entry:
  %empty = zext i6 %0 to i8                       ; [#uses=1 type=i8]
  %empty_7 = zext i2 %1 to i8                     ; [#uses=1 type=i8]
  %empty_8 = shl i8 %empty, 2                     ; [#uses=1 type=i8]
  %empty_9 = or i8 %empty_8, %empty_7             ; [#uses=1 type=i8]
  ret i8 %empty_9
}

; [#uses=0]
declare i32 @_ssdm_op_BitConcatenate.i32.i31.i1(i31, i1) nounwind readnone

; [#uses=1]
declare void @_GLOBAL__I_a1947() nounwind section ".text.startup"

; [#uses=1]
declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!opencl.kernels = !{!0, !7, !13, !15, !21, !27, !27, !33, !33, !33, !35, !38, !41, !47, !51, !53, !53, !51, !53, !53, !53, !55, !58, !53, !53, !60, !64, !51, !53, !66, !68, !66, !68, !66, !68, !51, !53, !51, !53, !51, !53, !51, !53, !51, !53, !51, !51, !53, !53, !69, !72, !69, !72, !74, !77, !79, !81, !51, !53, !51, !53, !51, !53, !83, !85, !83, !85, !83, !85, !85, !83, !85, !85, !83, !85, !83, !85, !86, !86, !91, !91, !93, !27, !95, !95, !27, !97, !27, !27, !27, !100, !100, !102, !102, !104, !27, !27, !27, !107, !95, !95, !27, !110, !27, !27, !27, !112, !112, !114, !114, !116, !27, !27, !27, !27, !27, !27, !118, !27, !27, !27, !27, !91, !91, !93, !118, !27, !91, !91, !93, !118, !27, !120, !120, !120, !27, !120, !120, !120, !27, !120, !120, !120, !27, !120, !120, !120, !120, !120, !120, !120, !120, !120, !27, !120, !120, !120, !27, !120, !120, !120, !27, !120, !120, !120, !27, !120, !120, !120, !27, !120, !120, !120, !120, !120, !120, !122, !122, !122, !27, !120, !120, !120, !27, !120, !120, !120, !27, !120, !120, !120, !27, !122, !122, !122, !27, !122, !122, !122, !127, !27, !27, !27, !27, !129, !129, !131, !131, !134, !137, !137, !27, !27, !27, !27, !139, !141, !141, !27, !129, !129, !142, !142, !144, !146, !146, !27, !27, !27, !27, !147, !149, !149, !129, !150, !150, !152, !27, !154, !154, !157, !152, !159, !159, !27, !27, !27, !161, !161, !27, !162, !161, !161, !164, !161, !161, !166, !27, !27, !27, !27, !27, !27, !27, !27, !127, !27, !27, !27, !27, !129, !129, !168, !168, !170, !172, !172, !27, !27, !27, !27, !173, !175, !175, !129, !129, !176, !176, !178, !180, !180, !27, !181, !114, !114, !129, !182, !182, !157, !152, !184, !184, !27, !27, !161, !161, !186, !161, !161, !188, !27, !27, !27, !27, !27, !27, !85, !190, !192, !193, !192, !194, !194, !196, !198, !198, !27, !199, !201, !201, !129, !196, !199, !201, !201, !129, !202, !27, !157, !152, !204, !204, !83, !206, !192, !208, !192, !210, !210, !211, !213, !213, !27, !27, !214, !216, !216, !129, !211, !214, !216, !216, !129, !217, !27, !219, !219, !85, !193, !192, !83, !208, !192, !85, !190, !192, !83, !206, !192, !85, !83, !85, !83, !221, !27, !27, !223, !27, !53, !51, !53, !51, !53, !53, !51, !51, !81, !27, !79, !27, !77, !219, !219, !27, !27, !224, !225, !149, !149, !74, !219, !219, !27, !72, !227, !229, !229, !230, !27, !27, !27, !216, !216, !232, !232, !234, !234, !237, !206, !141, !141, !27, !240, !242, !27, !27, !27, !112, !112, !244, !244, !27, !129, !129, !245, !245, !247, !249, !216, !216, !27, !251, !27, !27, !27, !141, !141, !102, !102, !253, !253, !27, !146, !146, !146, !27, !255, !257, !255, !257, !255, !257, !258, !69, !190, !175, !175, !27, !129, !129, !245, !245, !261, !263, !263, !264, !201, !201, !27, !180, !180, !180, !266, !257, !266, !257, !268, !72, !69, !53, !270, !27, !27, !27, !274, !95, !95, !27, !27, !277, !277, !27, !279, !279, !279, !281, !283, !283, !277, !27, !157, !152, !285, !285, !161, !161, !27, !287, !289, !289, !291, !293, !293, !27, !295, !295, !297, !295, !295, !297, !299, !303, !27, !27, !27, !305, !95, !95, !307, !27, !27, !27, !309, !309, !309, !27, !157, !311, !312, !312, !134, !139, !141, !141, !27, !27, !129, !314, !314, !316, !316, !317, !319, !319, !320, !322, !322, !320, !53, !324, !27, !51, !326, !328, !328, !330, !328, !328, !330, !332, !27, !27, !27, !334, !95, !95, !307, !27, !27, !27, !336, !336, !336, !27, !157, !311, !338, !338, !170, !173, !175, !175, !27, !27, !129, !340, !340, !316, !316, !317, !319, !319, !342, !344, !344, !342, !51, !346, !53, !258, !51, !348, !350, !27, !27, !27, !201, !201, !352, !352, !354, !354, !356, !268, !53, !51, !53, !51, !53, !51, !53, !51, !68, !27, !358, !192, !360, !363, !27, !27, !141, !141, !112, !112, !66, !27, !365, !367, !68, !66, !68, !66, !83, !85, !64, !369, !27, !27, !371, !157, !152, !372, !372, !374, !374, !27, !27, !27, !27, !376, !27, !27, !27, !378, !378, !102, !102, !380, !27, !27, !27, !382, !384, !384, !385, !385, !27, !27, !382, !384, !384, !27, !27, !387, !387, !387, !27, !389, !27, !27, !27, !27, !27, !27, !391, !391, !391, !27, !393, !27, !27, !27, !27, !27, !27, !27, !27, !395, !395, !395, !397, !397, !399, !401, !27, !404, !291, !319, !319, !27, !406, !406, !408, !410, !129, !413, !413, !415, !415, !417, !27, !322, !322, !320, !129, !418, !418, !420, !422, !420, !420, !27, !27, !27, !27, !27, !27, !307, !27, !27, !384, !384, !424, !406, !406, !408, !27, !129, !426, !426, !428, !428, !428, !27, !422, !430, !430, !431, !408, !408, !432, !432, !27, !27, !431, !408, !408, !27, !27, !434, !436, !438, !438, !27, !319, !319, !27, !27, !439, !439, !439, !441, !27, !27, !443, !443, !443, !445, !27, !27, !27, !27, !27, !27, !27, !27, !447, !447, !447, !27, !449, !449, !451, !453, !27, !27, !27, !27, !27, !455, !455, !455, !27, !457, !457, !459, !27, !461, !461, !463, !27, !27, !129, !464, !464, !466, !466, !468, !27, !27, !469, !475, !307, !27, !27, !27, !463, !463, !463, !476, !476, !478, !27, !27, !27, !27, !479, !479, !479, !481, !484, !484, !486, !461, !488, !27, !129, !490, !490, !492, !494, !494, !27, !27, !27, !27, !495, !497, !497, !157, !152, !498, !498, !27, !129, !500, !500, !502, !502, !502, !27, !27, !27, !504, !506, !506, !129, !27, !27, !219, !219, !27, !507, !509, !479, !479, !27, !319, !319, !27, !27, !510, !510, !510, !512, !152, !514, !514, !516, !27, !518, !518, !520, !274, !95, !95, !27, !27, !161, !161, !27, !522, !518, !518, !520, !129, !523, !523, !525, !527, !527, !27, !27, !27, !27, !528, !27, !129, !530, !530, !532, !532, !535, !537, !537, !129, !538, !538, !540, !542, !542, !27, !27, !27, !27, !543, !544, !537, !537, !129, !546, !546, !548, !551, !551, !27, !27, !27, !27, !553, !555, !555, !557, !557, !559, !559, !560, !27, !27, !562, !129, !565, !565, !129, !567, !567, !569, !569, !569, !27, !27, !27, !571, !27, !27, !27, !573, !573, !573, !27, !575, !575, !192, !161, !161, !577, !157, !152, !579, !579, !134, !139, !129, !581, !581, !27, !27, !27, !27, !27, !27, !27, !161, !161, !27, !27, !583, !27, !27, !27, !27, !27, !27, !27, !27, !27, !60, !585, !587, !193, !192, !27, !589, !589, !27, !27, !591, !27, !594, !192, !596, !596, !596, !27, !27, !598, !600, !600, !601, !307, !27, !27, !603, !603, !27, !596, !598, !600, !600, !161, !161, !129, !605, !605, !607, !609, !609, !27, !598, !129, !610, !610, !27, !27, !161, !161, !594, !612, !27, !27, !27, !614, !614, !600, !600, !616, !616, !27, !27, !161, !161, !618, !27, !614, !614, !618, !192, !620, !620, !622, !27, !27, !27, !27, !623, !626, !629, !631, !631, !632, !632, !27, !27, !634, !634, !636, !27, !634, !634, !634, !27, !27, !27, !638, !638, !640, !481, !642, !27, !27, !27, !27, !644, !646, !27, !634, !634, !634, !647, !636, !636, !307, !27, !27, !632, !632, !311, !649, !649, !651, !651, !653, !27, !654, !614, !614, !316, !316, !317, !319, !319, !632, !655, !129, !129, !657, !192, !257, !257, !27, !659, !102, !102, !116, !112, !112, !152, !27, !661, !661, !573, !573, !663, !665, !665, !27, !129, !666, !666, !27, !27, !594, !600, !600, !668, !27, !27, !669, !672, !673, !175, !175, !600, !600, !129, !675, !675, !677, !677, !677, !27, !679, !681, !681, !616, !616, !129, !683, !683, !685, !685, !685, !27, !27, !27, !27, !687, !689, !689, !691, !693, !693, !693, !129, !695, !695, !697, !699, !699, !27, !27, !27, !27, !700, !702, !702, !27, !129, !703, !703, !705, !707, !702, !702, !709, !709, !711, !27, !27, !129, !713, !713, !715, !718, !718, !27, !27, !27, !27, !720, !27, !27, !722, !722, !724, !724, !27, !27, !726, !27, !27, !27, !27, !727, !727, !129, !729, !729, !731, !731, !731, !27, !27, !27, !27, !129, !733, !733, !735, !735, !735, !27, !27, !27, !27, !737, !739, !739, !741, !743, !743, !745, !747, !747, !129, !748, !748, !750, !752, !752, !27, !27, !27, !27, !753, !754, !747, !747, !129, !756, !756, !758, !760, !760, !27, !27, !27, !27, !762, !764, !764, !766, !766, !739, !739, !768, !27, !27, !770, !161, !161, !772, !192, !129, !774, !774, !776, !776, !776, !27, !27, !27, !27, !778, !27, !27, !27, !780, !780, !780, !27, !27, !27, !129, !782, !782, !161, !161, !784, !161, !161, !27, !786, !27, !788, !764, !764, !790, !792, !792, !792, !27, !27, !27, !794, !129, !129, !796, !796, !792, !792, !792, !798, !27, !27, !27, !27, !27, !27, !27, !27, !27, !27, !27, !27, !27, !27, !83, !83, !799, !208, !192, !208, !192, !801, !801, !27, !804, !149, !149, !806, !807, !809, !809, !240, !242, !27, !27, !27, !811, !813, !192, !27, !815, !816, !818, !820, !822, !822, !27, !27, !27, !823, !823, !825, !27, !823, !823, !823, !27, !27, !827, !827, !829, !831, !825, !825, !833, !307, !27, !27, !822, !822, !311, !835, !835, !837, !837, !839, !27, !27, !27, !840, !840, !842, !316, !316, !317, !319, !319, !822, !844, !844, !93, !118, !845, !848, !848, !850, !27, !840, !852, !750, !745, !129, !854, !854, !856, !856, !173, !175, !175, !170, !858, !190, !859, !861, !861, !27, !27, !27, !863, !865, !865, !747, !747, !129, !867, !867, !869, !869, !869, !27, !871, !129, !872, !872, !27, !27, !27, !27, !27, !874, !874, !876, !27, !27, !27, !274, !95, !95, !878, !878, !879, !129, !881, !881, !883, !885, !885, !27, !27, !27, !27, !886, !129, !888, !888, !890, !890, !173, !175, !175, !170, !892, !894, !894, !27, !27, !27, !27, !896, !865, !865, !898, !898, !900, !900, !129, !901, !901, !903, !903, !903, !27, !905, !905, !905, !27, !907, !129, !908, !908, !27, !27, !27, !27, !27, !27, !27, !91, !91, !93, !118, !91, !91, !93, !118, !307, !27, !27, !910, !910, !912, !157, !311, !914, !914, !139, !141, !141, !129, !916, !916, !316, !316, !317, !319, !319, !910, !27, !27, !27, !83, !83, !918, !918, !918, !918, !918, !27, !27, !811, !815, !920, !922, !924, !926, !926, !27, !927, !927, !27, !27, !929, !929, !931, !27, !929, !929, !929, !27, !27, !27, !638, !638, !640, !481, !933, !27, !27, !27, !935, !937, !27, !929, !929, !929, !938, !931, !931, !307, !27, !27, !927, !927, !27, !940, !940, !307, !157, !311, !941, !941, !139, !141, !141, !129, !943, !943, !316, !316, !317, !319, !319, !927, !945, !27, !27, !947, !949, !224, !225, !257, !53, !950, !950, !950, !950, !950, !27, !27, !951, !27, !129, !952, !952, !954, !956, !956, !27, !27, !27, !27, !957, !959, !959, !27, !27, !27, !960, !962, !964, !966, !966, !967, !967, !27, !27, !969, !969, !971, !27, !969, !969, !969, !27, !27, !27, !638, !638, !640, !481, !973, !27, !27, !27, !975, !977, !27, !969, !969, !969, !978, !971, !971, !307, !27, !27, !967, !967, !27, !307, !157, !311, !980, !980, !173, !175, !175, !129, !982, !982, !316, !316, !317, !319, !319, !967, !984, !27, !27, !27, !986, !114, !114, !988, !107, !110, !989, !51, !990, !990, !83, !83, !83, !992, !995, !995, !997, !999, !1001, !27, !1003, !192, !1005, !1005, !1005, !27, !1007, !1009, !1009, !307, !27, !27, !1010, !1010, !157, !27, !1005, !1007, !1009, !1009, !1012, !1014, !1014, !27, !1007, !129, !1015, !1015, !1005, !1007, !129, !1017, !1017, !1019, !1019, !1021, !1023, !27, !27, !1025, !1027, !1029, !1031, !1031, !997, !997, !27, !27, !1032, !1032, !1034, !27, !1032, !1032, !1032, !27, !27, !638, !638, !640, !481, !1036, !27, !27, !27, !1038, !1040, !27, !1032, !1032, !1032, !1041, !1034, !1034, !307, !27, !27, !997, !997, !27, !311, !1043, !1043, !316, !316, !317, !319, !319, !997, !995, !1003, !1007, !1009, !1009, !27, !129, !1045, !1045, !1047, !1047, !1047, !27, !27, !27, !1049, !27, !27, !27, !27, !1051, !1053, !1053, !1055, !555, !555, !129, !1056, !1056, !161, !161, !1058, !161, !161, !1060, !27, !1062, !555, !555, !1064, !1066, !216, !216, !27, !27, !83, !83, !1068, !443, !443, !443, !447, !447, !447, !1071, !1071, !1073, !316, !316, !317, !319, !319, !299, !95, !95, !1075, !95, !95, !1077, !1079, !1079, !1077, !157, !152, !1081, !1081, !466, !466, !468, !1083, !1087, !291, !319, !319, !518, !518, !520, !1089, !192, !257, !257, !1091, !1091, !1093, !83, !83, !85, !85, !83, !83, !83, !83, !85, !85, !53, !53, !53, !53, !51, !51, !51, !51, !53, !53, !53, !53, !51, !51, !51, !51, !1095, !27, !27, !27, !274, !95, !95, !27, !27, !27, !27, !161, !161, !27, !287, !289, !289, !27, !291, !293, !293, !27, !328, !328, !330, !328, !328, !330, !299, !95, !95, !332, !27, !27, !27, !334, !95, !95, !27, !27, !27, !107, !95, !95, !110, !27, !27, !27, !112, !112, !114, !114, !307, !27, !27, !27, !336, !336, !336, !27, !157, !311, !338, !338, !129, !129, !168, !168, !170, !172, !172, !27, !27, !27, !27, !173, !175, !175, !27, !27, !129, !340, !340, !316, !316, !317, !319, !319, !342, !344, !344, !342, !194, !194, !196, !198, !198, !27, !27, !199, !201, !201, !129, !129, !182, !182, !196, !199, !201, !201, !27, !129, !176, !176, !152, !184, !184, !202, !27, !157, !152, !154, !154, !204, !204, !27, !27, !27, !27, !27, !27, !27, !27, !1097, !27, !27, !27, !274, !95, !95, !27, !27, !161, !161, !27, !1099, !291, !1101, !1101, !27, !1103, !1103, !1105, !1103, !1103, !1105, !299, !1107, !27, !27, !27, !1109, !95, !95, !307, !27, !27, !27, !1111, !1111, !1111, !344, !344, !342, !1113, !27, !27, !27, !274, !95, !95, !27, !27, !161, !161, !27, !1115, !291, !1117, !1117, !27, !1119, !1119, !1121, !1119, !1119, !1121, !299, !1123, !27, !27, !27, !1125, !95, !95, !307, !27, !27, !27, !1127, !1127, !1127, !344, !344, !342, !1129, !27, !27, !27, !274, !95, !95, !27, !27, !161, !161, !27, !1131, !291, !1133, !1133, !27, !1135, !1135, !1137, !1135, !1135, !1137, !299, !1139, !27, !27, !27, !1141, !95, !95, !307, !27, !27, !27, !1143, !1143, !1143, !344, !344, !342, !1145, !27, !295, !295, !297, !295, !295, !297, !303, !27, !27, !27, !305, !95, !95, !27, !224, !225, !149, !149, !307, !27, !27, !27, !309, !309, !309, !27, !157, !311, !312, !312, !129, !129, !131, !131, !134, !137, !137, !27, !27, !27, !27, !139, !141, !141, !27, !27, !129, !314, !314, !316, !316, !317, !319, !319, !320, !322, !322, !320, !210, !210, !211, !213, !213, !27, !27, !214, !216, !216, !129, !129, !150, !150, !211, !214, !216, !216, !129, !142, !142, !152, !159, !159, !217, !27, !219, !219, !27, !27, !27, !27, !1147, !1149, !1149, !1151, !1149, !1149, !1151, !1153, !27, !27, !27, !1155, !95, !95, !307, !27, !27, !27, !1157, !1157, !1157, !322, !322, !320, !1159, !1161, !1161, !1163, !1161, !1161, !1163, !1165, !27, !27, !27, !1167, !95, !95, !307, !27, !27, !27, !1169, !1169, !1169, !322, !322, !320, !1171, !1173, !1173, !1175, !1173, !1173, !1175, !1177, !27, !27, !27, !1179, !95, !95, !307, !27, !27, !27, !1180, !1180, !1180, !322, !322, !320, !1182, !27, !27, !27, !274, !27, !1184, !1184, !1186, !1186, !1186, !1188, !1190, !1190, !1184, !27, !157, !152, !661, !661, !161, !161, !27, !1192, !27, !27, !27, !274, !95, !95, !27, !27, !1194, !1194, !27, !1196, !1196, !1196, !1198, !1200, !1200, !1194, !27, !157, !152, !1202, !1202, !161, !161, !27, !1204, !27, !27, !27, !274, !95, !95, !27, !27, !1206, !1206, !27, !1208, !1208, !1208, !1210, !1212, !1212, !1206, !27, !157, !152, !1214, !1214, !161, !161, !27, !1216, !1218, !1220, !91, !91, !93, !27, !97, !27, !27, !27, !100, !100, !102, !102, !104, !27, !27, !27, !116, !27, !27, !27, !27, !118, !27, !91, !91, !93, !118, !27, !91, !91, !93, !118, !27, !120, !120, !120, !27, !120, !120, !120, !27, !120, !120, !120, !27, !120, !120, !120, !120, !120, !120, !120, !120, !120, !27, !120, !120, !120, !27, !120, !120, !120, !27, !120, !120, !120, !27, !324, !27, !27, !27, !274, !95, !95, !27, !27, !277, !277, !27, !279, !279, !279, !281, !283, !283, !277, !27, !157, !152, !285, !285, !161, !161, !27, !346, !120, !120, !120, !27, !120, !120, !120, !120, !120, !120, !122, !122, !122, !27, !120, !120, !120, !27, !120, !120, !120, !27, !120, !120, !120, !27, !122, !122, !122, !27, !122, !122, !122}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!1222}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"x"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0, i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"char **", metadata !"dn **", metadata !"int", metadata !"int"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"dna", metadata !"data", metadata !"size", metadata !"length"}
!13 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !14, metadata !6}
!14 = metadata !{metadata !"kernel_arg_name", metadata !"size"}
!15 = metadata !{null, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !6}
!16 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!17 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!18 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!19 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!20 = metadata !{metadata !"kernel_arg_name", metadata !"base", metadata !"index"}
!21 = metadata !{null, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !6}
!22 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 1, i32 1, i32 1, i32 1}
!23 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!24 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int", metadata !"double [5]*", metadata !"double [5]*", metadata !"double [5]*", metadata !"double [5]*"}
!25 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!26 = metadata !{metadata !"kernel_arg_name", metadata !"size", metadata !"length", metadata !"dataa", metadata !"datac", metadata !"datag", metadata !"datat"}
!27 = metadata !{null, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !6}
!28 = metadata !{metadata !"kernel_arg_addr_space"}
!29 = metadata !{metadata !"kernel_arg_access_qual"}
!30 = metadata !{metadata !"kernel_arg_type"}
!31 = metadata !{metadata !"kernel_arg_type_qual"}
!32 = metadata !{metadata !"kernel_arg_name"}
!33 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !34, metadata !6}
!34 = metadata !{metadata !"kernel_arg_name", metadata !"data_size"}
!35 = metadata !{null, metadata !8, metadata !9, metadata !36, metadata !11, metadata !37, metadata !6}
!36 = metadata !{metadata !"kernel_arg_type", metadata !"char*", metadata !"char **", metadata !"int", metadata !"int"}
!37 = metadata !{metadata !"kernel_arg_name", metadata !"dna", metadata !"name", metadata !"data_size", metadata !"length"}
!38 = metadata !{null, metadata !8, metadata !9, metadata !39, metadata !11, metadata !40, metadata !6}
!39 = metadata !{metadata !"kernel_arg_type", metadata !"char **", metadata !"char **", metadata !"int", metadata !"int"}
!40 = metadata !{metadata !"kernel_arg_name", metadata !"dna", metadata !"name", metadata !"size1", metadata !"size2"}
!41 = metadata !{null, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !6}
!42 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!43 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!44 = metadata !{metadata !"kernel_arg_type", metadata !"char*", metadata !"int", metadata !"int"}
!45 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!46 = metadata !{metadata !"kernel_arg_name", metadata !"dna", metadata !"data_size", metadata !"length"}
!47 = metadata !{null, metadata !48, metadata !17, metadata !49, metadata !19, metadata !50, metadata !6}
!48 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1}
!49 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"char **"}
!50 = metadata !{metadata !"kernel_arg_name", metadata !"argc", metadata !"argv"}
!51 = metadata !{null, metadata !1, metadata !2, metadata !52, metadata !4, metadata !5, metadata !6}
!52 = metadata !{metadata !"kernel_arg_type", metadata !"double"}
!53 = metadata !{null, metadata !1, metadata !2, metadata !54, metadata !4, metadata !5, metadata !6}
!54 = metadata !{metadata !"kernel_arg_type", metadata !"float"}
!55 = metadata !{null, metadata !16, metadata !17, metadata !56, metadata !19, metadata !57, metadata !6}
!56 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"double"}
!57 = metadata !{metadata !"kernel_arg_name", metadata !"y", metadata !"x"}
!58 = metadata !{null, metadata !16, metadata !17, metadata !59, metadata !19, metadata !57, metadata !6}
!59 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float"}
!60 = metadata !{null, metadata !61, metadata !43, metadata !62, metadata !45, metadata !63, metadata !6}
!61 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1, i32 1}
!62 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"double*", metadata !"double*"}
!63 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"sin", metadata !"cos"}
!64 = metadata !{null, metadata !61, metadata !43, metadata !65, metadata !45, metadata !63, metadata !6}
!65 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float*", metadata !"float*"}
!66 = metadata !{null, metadata !16, metadata !17, metadata !56, metadata !19, metadata !67, metadata !6}
!67 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"y"}
!68 = metadata !{null, metadata !16, metadata !17, metadata !59, metadata !19, metadata !67, metadata !6}
!69 = metadata !{null, metadata !48, metadata !17, metadata !70, metadata !19, metadata !71, metadata !6}
!70 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"double*"}
!71 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"intpart"}
!72 = metadata !{null, metadata !48, metadata !17, metadata !73, metadata !19, metadata !71, metadata !6}
!73 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float*"}
!74 = metadata !{null, metadata !48, metadata !17, metadata !75, metadata !19, metadata !76, metadata !6}
!75 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"int*"}
!76 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"exp"}
!77 = metadata !{null, metadata !48, metadata !17, metadata !78, metadata !19, metadata !76, metadata !6}
!78 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"int*"}
!79 = metadata !{null, metadata !16, metadata !17, metadata !80, metadata !19, metadata !76, metadata !6}
!80 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"int"}
!81 = metadata !{null, metadata !16, metadata !17, metadata !82, metadata !19, metadata !76, metadata !6}
!82 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"int"}
!83 = metadata !{null, metadata !1, metadata !2, metadata !54, metadata !4, metadata !84, metadata !6}
!84 = metadata !{metadata !"kernel_arg_name", metadata !"t_in"}
!85 = metadata !{null, metadata !1, metadata !2, metadata !52, metadata !4, metadata !84, metadata !6}
!86 = metadata !{null, metadata !87, metadata !2, metadata !88, metadata !89, metadata !90, metadata !6}
!87 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!88 = metadata !{metadata !"kernel_arg_type", metadata !"char*"}
!89 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const"}
!90 = metadata !{metadata !"kernel_arg_name", metadata !"p"}
!91 = metadata !{null, metadata !1, metadata !2, metadata !52, metadata !4, metadata !92, metadata !6}
!92 = metadata !{metadata !"kernel_arg_name", metadata !"v"}
!93 = metadata !{null, metadata !1, metadata !2, metadata !52, metadata !4, metadata !94, metadata !6}
!94 = metadata !{metadata !"kernel_arg_name", metadata !"d"}
!95 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !96, metadata !6}
!96 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!97 = metadata !{null, metadata !16, metadata !17, metadata !98, metadata !19, metadata !99, metadata !6}
!98 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<54, true> &"}
!99 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!100 = metadata !{null, metadata !1, metadata !2, metadata !101, metadata !4, metadata !96, metadata !6}
!101 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<54, true> &"}
!102 = metadata !{null, metadata !1, metadata !2, metadata !103, metadata !4, metadata !96, metadata !6}
!103 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &"}
!104 = metadata !{null, metadata !1, metadata !2, metadata !105, metadata !4, metadata !106, metadata !6}
!105 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, true> &"}
!106 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!107 = metadata !{null, metadata !16, metadata !17, metadata !108, metadata !19, metadata !109, metadata !6}
!108 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"int"}
!109 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!110 = metadata !{null, metadata !16, metadata !17, metadata !111, metadata !19, metadata !99, metadata !6}
!111 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"const ap_int_base<32, true> &"}
!112 = metadata !{null, metadata !1, metadata !2, metadata !113, metadata !4, metadata !96, metadata !6}
!113 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!114 = metadata !{null, metadata !1, metadata !2, metadata !115, metadata !4, metadata !96, metadata !6}
!115 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &"}
!116 = metadata !{null, metadata !1, metadata !2, metadata !117, metadata !4, metadata !106, metadata !6}
!117 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &"}
!118 = metadata !{null, metadata !1, metadata !2, metadata !52, metadata !4, metadata !119, metadata !6}
!119 = metadata !{metadata !"kernel_arg_name", metadata !"pf"}
!120 = metadata !{null, metadata !87, metadata !2, metadata !88, metadata !89, metadata !121, metadata !6}
!121 = metadata !{metadata !"kernel_arg_name", metadata !"str"}
!122 = metadata !{null, metadata !123, metadata !17, metadata !124, metadata !125, metadata !126, metadata !6}
!123 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!124 = metadata !{metadata !"kernel_arg_type", metadata !"char*", metadata !"signed char"}
!125 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !""}
!126 = metadata !{metadata !"kernel_arg_name", metadata !"str", metadata !"radix"}
!127 = metadata !{null, metadata !87, metadata !2, metadata !88, metadata !89, metadata !128, metadata !6}
!128 = metadata !{metadata !"kernel_arg_name", metadata !"tagp"}
!129 = metadata !{null, metadata !16, metadata !17, metadata !18, metadata !19, metadata !130, metadata !6}
!130 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!131 = metadata !{null, metadata !42, metadata !43, metadata !132, metadata !45, metadata !133, metadata !6}
!132 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<23, false>*", metadata !"int", metadata !"int"}
!133 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!134 = metadata !{null, metadata !1, metadata !2, metadata !135, metadata !4, metadata !136, metadata !6}
!135 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<23, false> &"}
!136 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!137 = metadata !{null, metadata !1, metadata !2, metadata !135, metadata !4, metadata !138, metadata !6}
!138 = metadata !{metadata !"kernel_arg_name", metadata !"ref"}
!139 = metadata !{null, metadata !1, metadata !2, metadata !140, metadata !4, metadata !136, metadata !6}
!140 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, false> &"}
!141 = metadata !{null, metadata !1, metadata !2, metadata !140, metadata !4, metadata !96, metadata !6}
!142 = metadata !{null, metadata !42, metadata !43, metadata !143, metadata !45, metadata !133, metadata !6}
!143 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<8, false>*", metadata !"int", metadata !"int"}
!144 = metadata !{null, metadata !1, metadata !2, metadata !145, metadata !4, metadata !136, metadata !6}
!145 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<8, false> &"}
!146 = metadata !{null, metadata !1, metadata !2, metadata !145, metadata !4, metadata !138, metadata !6}
!147 = metadata !{null, metadata !1, metadata !2, metadata !148, metadata !4, metadata !136, metadata !6}
!148 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &"}
!149 = metadata !{null, metadata !1, metadata !2, metadata !148, metadata !4, metadata !96, metadata !6}
!150 = metadata !{null, metadata !42, metadata !43, metadata !151, metadata !45, metadata !133, metadata !6}
!151 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, false>*", metadata !"int", metadata !"int"}
!152 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !153, metadata !6}
!153 = metadata !{metadata !"kernel_arg_name", metadata !"index"}
!154 = metadata !{null, metadata !123, metadata !17, metadata !155, metadata !19, metadata !156, metadata !6}
!155 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<1, false>*", metadata !"int"}
!156 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"index"}
!157 = metadata !{null, metadata !1, metadata !2, metadata !158, metadata !4, metadata !136, metadata !6}
!158 = metadata !{metadata !"kernel_arg_type", metadata !"ulong long"}
!159 = metadata !{null, metadata !123, metadata !17, metadata !160, metadata !19, metadata !156, metadata !6}
!160 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, false>*", metadata !"int"}
!161 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !136, metadata !6}
!162 = metadata !{null, metadata !1, metadata !2, metadata !163, metadata !4, metadata !106, metadata !6}
!163 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1> &"}
!164 = metadata !{null, metadata !1, metadata !2, metadata !165, metadata !4, metadata !106, metadata !6}
!165 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<8> &"}
!166 = metadata !{null, metadata !1, metadata !2, metadata !167, metadata !4, metadata !106, metadata !6}
!167 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<23> &"}
!168 = metadata !{null, metadata !42, metadata !43, metadata !169, metadata !45, metadata !133, metadata !6}
!169 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<52, false>*", metadata !"int", metadata !"int"}
!170 = metadata !{null, metadata !1, metadata !2, metadata !171, metadata !4, metadata !136, metadata !6}
!171 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<52, false> &"}
!172 = metadata !{null, metadata !1, metadata !2, metadata !171, metadata !4, metadata !138, metadata !6}
!173 = metadata !{null, metadata !1, metadata !2, metadata !174, metadata !4, metadata !136, metadata !6}
!174 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<52, false> &"}
!175 = metadata !{null, metadata !1, metadata !2, metadata !174, metadata !4, metadata !96, metadata !6}
!176 = metadata !{null, metadata !42, metadata !43, metadata !177, metadata !45, metadata !133, metadata !6}
!177 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<11, false>*", metadata !"int", metadata !"int"}
!178 = metadata !{null, metadata !1, metadata !2, metadata !179, metadata !4, metadata !136, metadata !6}
!179 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<11, false> &"}
!180 = metadata !{null, metadata !1, metadata !2, metadata !179, metadata !4, metadata !138, metadata !6}
!181 = metadata !{null, metadata !1, metadata !2, metadata !115, metadata !4, metadata !136, metadata !6}
!182 = metadata !{null, metadata !42, metadata !43, metadata !183, metadata !45, metadata !133, metadata !6}
!183 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, false>*", metadata !"int", metadata !"int"}
!184 = metadata !{null, metadata !123, metadata !17, metadata !185, metadata !19, metadata !156, metadata !6}
!185 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, false>*", metadata !"int"}
!186 = metadata !{null, metadata !1, metadata !2, metadata !187, metadata !4, metadata !106, metadata !6}
!187 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<11> &"}
!188 = metadata !{null, metadata !1, metadata !2, metadata !189, metadata !4, metadata !106, metadata !6}
!189 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<52> &"}
!190 = metadata !{null, metadata !16, metadata !17, metadata !191, metadata !19, metadata !99, metadata !6}
!191 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<52, false> &", metadata !"int"}
!192 = metadata !{null, metadata !1, metadata !2, metadata !113, metadata !4, metadata !106, metadata !6}
!193 = metadata !{null, metadata !16, metadata !17, metadata !108, metadata !19, metadata !99, metadata !6}
!194 = metadata !{null, metadata !1, metadata !2, metadata !52, metadata !4, metadata !195, metadata !6}
!195 = metadata !{metadata !"kernel_arg_name", metadata !"f"}
!196 = metadata !{null, metadata !1, metadata !2, metadata !197, metadata !4, metadata !136, metadata !6}
!197 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<64, false> &"}
!198 = metadata !{null, metadata !1, metadata !2, metadata !197, metadata !4, metadata !138, metadata !6}
!199 = metadata !{null, metadata !1, metadata !2, metadata !200, metadata !4, metadata !136, metadata !6}
!200 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &"}
!201 = metadata !{null, metadata !1, metadata !2, metadata !200, metadata !4, metadata !96, metadata !6}
!202 = metadata !{null, metadata !1, metadata !2, metadata !203, metadata !4, metadata !136, metadata !6}
!203 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_bit_ref<64, false> &"}
!204 = metadata !{null, metadata !1, metadata !2, metadata !205, metadata !4, metadata !136, metadata !6}
!205 = metadata !{metadata !"kernel_arg_type", metadata !"ulong"}
!206 = metadata !{null, metadata !16, metadata !17, metadata !207, metadata !19, metadata !99, metadata !6}
!207 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, false> &", metadata !"int"}
!208 = metadata !{null, metadata !16, metadata !17, metadata !209, metadata !19, metadata !99, metadata !6}
!209 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"int"}
!210 = metadata !{null, metadata !1, metadata !2, metadata !54, metadata !4, metadata !195, metadata !6}
!211 = metadata !{null, metadata !1, metadata !2, metadata !212, metadata !4, metadata !136, metadata !6}
!212 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<32, false> &"}
!213 = metadata !{null, metadata !1, metadata !2, metadata !212, metadata !4, metadata !138, metadata !6}
!214 = metadata !{null, metadata !1, metadata !2, metadata !215, metadata !4, metadata !136, metadata !6}
!215 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
!216 = metadata !{null, metadata !1, metadata !2, metadata !215, metadata !4, metadata !96, metadata !6}
!217 = metadata !{null, metadata !1, metadata !2, metadata !218, metadata !4, metadata !136, metadata !6}
!218 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_bit_ref<32, false> &"}
!219 = metadata !{null, metadata !1, metadata !2, metadata !220, metadata !4, metadata !136, metadata !6}
!220 = metadata !{metadata !"kernel_arg_type", metadata !"uint"}
!221 = metadata !{null, metadata !1, metadata !2, metadata !52, metadata !4, metadata !222, metadata !6}
!222 = metadata !{metadata !"kernel_arg_name", metadata !"a_re"}
!223 = metadata !{null, metadata !1, metadata !2, metadata !54, metadata !4, metadata !222, metadata !6}
!224 = metadata !{null, metadata !16, metadata !17, metadata !209, metadata !19, metadata !109, metadata !6}
!225 = metadata !{null, metadata !16, metadata !17, metadata !226, metadata !19, metadata !99, metadata !6}
!226 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"const ap_int_base<32, true> &"}
!227 = metadata !{null, metadata !16, metadata !17, metadata !228, metadata !19, metadata !109, metadata !6}
!228 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &", metadata !"uint"}
!229 = metadata !{null, metadata !1, metadata !2, metadata !220, metadata !4, metadata !96, metadata !6}
!230 = metadata !{null, metadata !16, metadata !17, metadata !231, metadata !19, metadata !99, metadata !6}
!231 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &", metadata !"const ap_int_base<32, false> &"}
!232 = metadata !{null, metadata !1, metadata !2, metadata !233, metadata !4, metadata !96, metadata !6}
!233 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, false> &"}
!234 = metadata !{null, metadata !1, metadata !2, metadata !235, metadata !4, metadata !236, metadata !6}
!235 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<32>"}
!236 = metadata !{metadata !"kernel_arg_name", metadata !"data"}
!237 = metadata !{null, metadata !1, metadata !2, metadata !238, metadata !4, metadata !239, metadata !6}
!238 = metadata !{metadata !"kernel_arg_type", metadata !"const class fp_struct<float> &"}
!239 = metadata !{metadata !"kernel_arg_name", metadata !""}
!240 = metadata !{null, metadata !16, metadata !17, metadata !241, metadata !19, metadata !109, metadata !6}
!241 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &", metadata !"int"}
!242 = metadata !{null, metadata !16, metadata !17, metadata !243, metadata !19, metadata !99, metadata !6}
!243 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &", metadata !"const ap_int_base<32, true> &"}
!244 = metadata !{null, metadata !1, metadata !2, metadata !117, metadata !4, metadata !96, metadata !6}
!245 = metadata !{null, metadata !1, metadata !2, metadata !246, metadata !4, metadata !96, metadata !6}
!246 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ulong"}
!247 = metadata !{null, metadata !16, metadata !17, metadata !248, metadata !19, metadata !109, metadata !6}
!248 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, false> &", metadata !"uint"}
!249 = metadata !{null, metadata !16, metadata !17, metadata !250, metadata !19, metadata !99, metadata !6}
!250 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, false> &", metadata !"const ap_int_base<32, false> &"}
!251 = metadata !{null, metadata !16, metadata !17, metadata !252, metadata !19, metadata !99, metadata !6}
!252 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<23, false> &"}
!253 = metadata !{null, metadata !1, metadata !2, metadata !254, metadata !4, metadata !96, metadata !6}
!254 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<24, true> &"}
!255 = metadata !{null, metadata !16, metadata !17, metadata !256, metadata !19, metadata !99, metadata !6}
!256 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"uint"}
!257 = metadata !{null, metadata !1, metadata !2, metadata !215, metadata !4, metadata !106, metadata !6}
!258 = metadata !{null, metadata !87, metadata !2, metadata !259, metadata !4, metadata !260, metadata !6}
!259 = metadata !{metadata !"kernel_arg_type", metadata !"uint32_t*"}
!260 = metadata !{metadata !"kernel_arg_name", metadata !"mask_table"}
!261 = metadata !{null, metadata !16, metadata !17, metadata !262, metadata !19, metadata !109, metadata !6}
!262 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<52, false> &", metadata !"ulong"}
!263 = metadata !{null, metadata !1, metadata !2, metadata !205, metadata !4, metadata !96, metadata !6}
!264 = metadata !{null, metadata !16, metadata !17, metadata !265, metadata !19, metadata !99, metadata !6}
!265 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<52, false> &", metadata !"const ap_int_base<64, false> &"}
!266 = metadata !{null, metadata !16, metadata !17, metadata !267, metadata !19, metadata !99, metadata !6}
!267 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"uint"}
!268 = metadata !{null, metadata !87, metadata !2, metadata !269, metadata !4, metadata !260, metadata !6}
!269 = metadata !{metadata !"kernel_arg_type", metadata !"uint64_t*"}
!270 = metadata !{null, metadata !271, metadata !43, metadata !272, metadata !45, metadata !273, metadata !6}
!271 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0}
!272 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<long long>::is_signed, _Bool>::type"}
!273 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"detect_overflow", metadata !"dummy"}
!274 = metadata !{null, metadata !1, metadata !2, metadata !275, metadata !4, metadata !276, metadata !6}
!275 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool"}
!276 = metadata !{metadata !"kernel_arg_name", metadata !"Cnative"}
!277 = metadata !{null, metadata !1, metadata !2, metadata !278, metadata !4, metadata !96, metadata !6}
!278 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<64, 64, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!279 = metadata !{null, metadata !1, metadata !2, metadata !280, metadata !4, metadata !96, metadata !6}
!280 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<65, 65, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!281 = metadata !{null, metadata !1, metadata !2, metadata !282, metadata !4, metadata !96, metadata !6}
!282 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<64, 64, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!283 = metadata !{null, metadata !1, metadata !2, metadata !284, metadata !4, metadata !96, metadata !6}
!284 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<64, 64, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!285 = metadata !{null, metadata !123, metadata !17, metadata !286, metadata !19, metadata !156, metadata !6}
!286 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, true>*", metadata !"int"}
!287 = metadata !{null, metadata !16, metadata !17, metadata !288, metadata !19, metadata !109, metadata !6}
!288 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 65, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!289 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !290, metadata !6}
!290 = metadata !{metadata !"kernel_arg_name", metadata !"i_op"}
!291 = metadata !{null, metadata !1, metadata !2, metadata !292, metadata !4, metadata !106, metadata !6}
!292 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 32, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!293 = metadata !{null, metadata !1, metadata !2, metadata !294, metadata !4, metadata !96, metadata !6}
!294 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 65, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!295 = metadata !{null, metadata !1, metadata !2, metadata !296, metadata !4, metadata !96, metadata !6}
!296 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<87, 87, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!297 = metadata !{null, metadata !1, metadata !2, metadata !298, metadata !4, metadata !96, metadata !6}
!298 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<87, 87, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!299 = metadata !{null, metadata !300, metadata !9, metadata !301, metadata !11, metadata !302, metadata !6}
!300 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0}
!301 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool", metadata !"_Bool", metadata !"_Bool", metadata !"_Bool"}
!302 = metadata !{metadata !"kernel_arg_name", metadata !"underflow", metadata !"overflow", metadata !"lD", metadata !"sign"}
!303 = metadata !{null, metadata !16, metadata !17, metadata !304, metadata !19, metadata !99, metadata !6}
!304 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<87, false> &", metadata !"int"}
!305 = metadata !{null, metadata !1, metadata !2, metadata !306, metadata !4, metadata !106, metadata !6}
!306 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<87, false> &"}
!307 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !308, metadata !6}
!308 = metadata !{metadata !"kernel_arg_name", metadata !"sh"}
!309 = metadata !{null, metadata !1, metadata !2, metadata !310, metadata !4, metadata !96, metadata !6}
!310 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<110, 87, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!311 = metadata !{null, metadata !1, metadata !2, metadata !220, metadata !4, metadata !153, metadata !6}
!312 = metadata !{null, metadata !123, metadata !17, metadata !313, metadata !19, metadata !156, metadata !6}
!313 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<24, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!314 = metadata !{null, metadata !42, metadata !43, metadata !315, metadata !45, metadata !133, metadata !6}
!315 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<24, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!316 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !92, metadata !6}
!317 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !318, metadata !6}
!318 = metadata !{metadata !"kernel_arg_name", metadata !"b"}
!319 = metadata !{null, metadata !1, metadata !2, metadata !292, metadata !4, metadata !96, metadata !6}
!320 = metadata !{null, metadata !1, metadata !2, metadata !321, metadata !4, metadata !96, metadata !6}
!321 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<24, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!322 = metadata !{null, metadata !1, metadata !2, metadata !323, metadata !4, metadata !96, metadata !6}
!323 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<24, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!324 = metadata !{null, metadata !271, metadata !43, metadata !325, metadata !45, metadata !273, metadata !6}
!325 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<long>::is_signed, _Bool>::type"}
!326 = metadata !{null, metadata !271, metadata !43, metadata !327, metadata !45, metadata !273, metadata !6}
!327 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<long long>::is_signed, _Bool>::type"}
!328 = metadata !{null, metadata !1, metadata !2, metadata !329, metadata !4, metadata !96, metadata !6}
!329 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<116, 116, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!330 = metadata !{null, metadata !1, metadata !2, metadata !331, metadata !4, metadata !96, metadata !6}
!331 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<116, 116, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!332 = metadata !{null, metadata !16, metadata !17, metadata !333, metadata !19, metadata !99, metadata !6}
!333 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<116, false> &", metadata !"int"}
!334 = metadata !{null, metadata !1, metadata !2, metadata !335, metadata !4, metadata !106, metadata !6}
!335 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<116, false> &"}
!336 = metadata !{null, metadata !1, metadata !2, metadata !337, metadata !4, metadata !96, metadata !6}
!337 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<168, 116, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!338 = metadata !{null, metadata !123, metadata !17, metadata !339, metadata !19, metadata !156, metadata !6}
!339 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<53, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!340 = metadata !{null, metadata !42, metadata !43, metadata !341, metadata !45, metadata !133, metadata !6}
!341 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<53, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!342 = metadata !{null, metadata !1, metadata !2, metadata !343, metadata !4, metadata !96, metadata !6}
!343 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<53, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!344 = metadata !{null, metadata !1, metadata !2, metadata !345, metadata !4, metadata !96, metadata !6}
!345 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<53, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!346 = metadata !{null, metadata !271, metadata !43, metadata !347, metadata !45, metadata !273, metadata !6}
!347 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<long>::is_signed, _Bool>::type"}
!348 = metadata !{null, metadata !16, metadata !17, metadata !349, metadata !19, metadata !109, metadata !6}
!349 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &", metadata !"ulong"}
!350 = metadata !{null, metadata !16, metadata !17, metadata !351, metadata !19, metadata !99, metadata !6}
!351 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &", metadata !"const ap_int_base<64, false> &"}
!352 = metadata !{null, metadata !1, metadata !2, metadata !353, metadata !4, metadata !96, metadata !6}
!353 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<65, false> &"}
!354 = metadata !{null, metadata !1, metadata !2, metadata !355, metadata !4, metadata !236, metadata !6}
!355 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<64>"}
!356 = metadata !{null, metadata !1, metadata !2, metadata !357, metadata !4, metadata !239, metadata !6}
!357 = metadata !{metadata !"kernel_arg_type", metadata !"const class fp_struct<double> &"}
!358 = metadata !{null, metadata !16, metadata !17, metadata !359, metadata !19, metadata !99, metadata !6}
!359 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"int"}
!360 = metadata !{null, metadata !16, metadata !17, metadata !361, metadata !19, metadata !362, metadata !6}
!361 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"const ap_int_base<23, false> &"}
!362 = metadata !{metadata !"kernel_arg_name", metadata !"i_op", metadata !"op"}
!363 = metadata !{null, metadata !16, metadata !17, metadata !364, metadata !19, metadata !99, metadata !6}
!364 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"const ap_int_base<23, false> &"}
!365 = metadata !{null, metadata !16, metadata !17, metadata !366, metadata !19, metadata !362, metadata !6}
!366 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ulong", metadata !"const ap_int_base<52, false> &"}
!367 = metadata !{null, metadata !16, metadata !17, metadata !368, metadata !19, metadata !99, metadata !6}
!368 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &", metadata !"const ap_int_base<52, false> &"}
!369 = metadata !{null, metadata !61, metadata !43, metadata !65, metadata !45, metadata !370, metadata !6}
!370 = metadata !{metadata !"kernel_arg_name", metadata !"t_in", metadata !"s", metadata !"c"}
!371 = metadata !{null, metadata !1, metadata !2, metadata !103, metadata !4, metadata !136, metadata !6}
!372 = metadata !{null, metadata !123, metadata !17, metadata !373, metadata !19, metadata !156, metadata !6}
!373 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<4, false>*", metadata !"int"}
!374 = metadata !{null, metadata !1, metadata !2, metadata !375, metadata !4, metadata !96, metadata !6}
!375 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<3> &"}
!376 = metadata !{null, metadata !16, metadata !17, metadata !377, metadata !19, metadata !99, metadata !6}
!377 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<8, true> &"}
!378 = metadata !{null, metadata !1, metadata !2, metadata !379, metadata !4, metadata !96, metadata !6}
!379 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, true> &"}
!380 = metadata !{null, metadata !1, metadata !2, metadata !381, metadata !4, metadata !106, metadata !6}
!381 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<31, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!382 = metadata !{null, metadata !1, metadata !2, metadata !383, metadata !4, metadata !106, metadata !6}
!383 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<31, 1, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!384 = metadata !{null, metadata !1, metadata !2, metadata !383, metadata !4, metadata !96, metadata !6}
!385 = metadata !{null, metadata !1, metadata !2, metadata !386, metadata !4, metadata !96, metadata !6}
!386 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!387 = metadata !{null, metadata !1, metadata !2, metadata !388, metadata !4, metadata !96, metadata !6}
!388 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<64, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!389 = metadata !{null, metadata !1, metadata !2, metadata !390, metadata !4, metadata !106, metadata !6}
!390 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<13, -2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!391 = metadata !{null, metadata !1, metadata !2, metadata !392, metadata !4, metadata !96, metadata !6}
!392 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<30, -16, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!393 = metadata !{null, metadata !1, metadata !2, metadata !394, metadata !4, metadata !106, metadata !6}
!394 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<21, -1, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!395 = metadata !{null, metadata !1, metadata !2, metadata !396, metadata !4, metadata !96, metadata !6}
!396 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<38, -8, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!397 = metadata !{null, metadata !1, metadata !2, metadata !398, metadata !4, metadata !96, metadata !6}
!398 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<30, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!399 = metadata !{null, metadata !1, metadata !2, metadata !400, metadata !4, metadata !96, metadata !6}
!400 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<30, 1, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!401 = metadata !{null, metadata !271, metadata !43, metadata !402, metadata !45, metadata !403, metadata !6}
!402 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ufixed<31, 1>", metadata !"float &", metadata !"int"}
!403 = metadata !{metadata !"kernel_arg_name", metadata !"in", metadata !"result", metadata !"prescale"}
!404 = metadata !{null, metadata !16, metadata !17, metadata !405, metadata !19, metadata !109, metadata !6}
!405 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<31, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &", metadata !"int"}
!406 = metadata !{null, metadata !1, metadata !2, metadata !407, metadata !4, metadata !96, metadata !6}
!407 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<31, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!408 = metadata !{null, metadata !1, metadata !2, metadata !409, metadata !4, metadata !96, metadata !6}
!409 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<31, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!410 = metadata !{null, metadata !1, metadata !2, metadata !411, metadata !4, metadata !412, metadata !6}
!411 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ufixed<1 + SIG_BITS, 1>"}
!412 = metadata !{metadata !"kernel_arg_name", metadata !"mantissa"}
!413 = metadata !{null, metadata !42, metadata !43, metadata !414, metadata !45, metadata !133, metadata !6}
!414 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<23, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!415 = metadata !{null, metadata !1, metadata !2, metadata !416, metadata !4, metadata !96, metadata !6}
!416 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<23, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!417 = metadata !{null, metadata !1, metadata !2, metadata !416, metadata !4, metadata !136, metadata !6}
!418 = metadata !{null, metadata !42, metadata !43, metadata !419, metadata !45, metadata !133, metadata !6}
!419 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<31, 1, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!420 = metadata !{null, metadata !1, metadata !2, metadata !421, metadata !4, metadata !136, metadata !6}
!421 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<31, 1, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!422 = metadata !{null, metadata !1, metadata !2, metadata !423, metadata !4, metadata !136, metadata !6}
!423 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<31, false> &"}
!424 = metadata !{null, metadata !1, metadata !2, metadata !425, metadata !4, metadata !96, metadata !6}
!425 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<31, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!426 = metadata !{null, metadata !42, metadata !43, metadata !427, metadata !45, metadata !133, metadata !6}
!427 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<31, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!428 = metadata !{null, metadata !1, metadata !2, metadata !429, metadata !4, metadata !136, metadata !6}
!429 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<31, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!430 = metadata !{null, metadata !1, metadata !2, metadata !423, metadata !4, metadata !96, metadata !6}
!431 = metadata !{null, metadata !1, metadata !2, metadata !409, metadata !4, metadata !106, metadata !6}
!432 = metadata !{null, metadata !1, metadata !2, metadata !433, metadata !4, metadata !96, metadata !6}
!433 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 2, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!434 = metadata !{null, metadata !16, metadata !17, metadata !435, metadata !19, metadata !362, metadata !6}
!435 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"const ap_fixed_base<33, 3, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!436 = metadata !{null, metadata !1, metadata !2, metadata !437, metadata !4, metadata !106, metadata !6}
!437 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<33, 3, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!438 = metadata !{null, metadata !1, metadata !2, metadata !437, metadata !4, metadata !96, metadata !6}
!439 = metadata !{null, metadata !1, metadata !2, metadata !440, metadata !4, metadata !96, metadata !6}
!440 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<63, 33, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!441 = metadata !{null, metadata !1, metadata !2, metadata !442, metadata !4, metadata !106, metadata !6}
!442 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<15, 0, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!443 = metadata !{null, metadata !1, metadata !2, metadata !444, metadata !4, metadata !96, metadata !6}
!444 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, -14, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!445 = metadata !{null, metadata !1, metadata !2, metadata !446, metadata !4, metadata !106, metadata !6}
!446 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<23, 1, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!447 = metadata !{null, metadata !1, metadata !2, metadata !448, metadata !4, metadata !96, metadata !6}
!448 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<40, -6, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!449 = metadata !{null, metadata !1, metadata !2, metadata !450, metadata !4, metadata !96, metadata !6}
!450 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<29, 0, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!451 = metadata !{null, metadata !1, metadata !2, metadata !452, metadata !4, metadata !96, metadata !6}
!452 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<29, 0, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!453 = metadata !{null, metadata !1, metadata !2, metadata !454, metadata !4, metadata !106, metadata !6}
!454 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<9, -7, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!455 = metadata !{null, metadata !1, metadata !2, metadata !456, metadata !4, metadata !96, metadata !6}
!456 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<18, -14, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!457 = metadata !{null, metadata !1, metadata !2, metadata !458, metadata !4, metadata !96, metadata !6}
!458 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<17, -7, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!459 = metadata !{null, metadata !1, metadata !2, metadata !460, metadata !4, metadata !96, metadata !6}
!460 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<17, -7, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!461 = metadata !{null, metadata !1, metadata !2, metadata !462, metadata !4, metadata !96, metadata !6}
!462 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<31, 0, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!463 = metadata !{null, metadata !1, metadata !2, metadata !381, metadata !4, metadata !96, metadata !6}
!464 = metadata !{null, metadata !42, metadata !43, metadata !465, metadata !45, metadata !133, metadata !6}
!465 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<31, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!466 = metadata !{null, metadata !1, metadata !2, metadata !467, metadata !4, metadata !96, metadata !6}
!467 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<31, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!468 = metadata !{null, metadata !1, metadata !2, metadata !467, metadata !4, metadata !136, metadata !6}
!469 = metadata !{null, metadata !470, metadata !471, metadata !472, metadata !473, metadata !474, metadata !6}
!470 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0}
!471 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!472 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"ap_uint<3> &", metadata !"ap_ufixed<31, 0> &", metadata !"ap_ufixed<31, 0> &", metadata !"ap_int<fp_struct<float>::EXP_BITS> &"}
!473 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!474 = metadata !{metadata !"kernel_arg_name", metadata !"din", metadata !"k", metadata !"dout", metadata !"Mx", metadata !"Ex"}
!475 = metadata !{null, metadata !1, metadata !2, metadata !379, metadata !4, metadata !106, metadata !6}
!476 = metadata !{null, metadata !1, metadata !2, metadata !477, metadata !4, metadata !106, metadata !6}
!477 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<5, false> &"}
!478 = metadata !{null, metadata !1, metadata !2, metadata !220, metadata !4, metadata !308, metadata !6}
!479 = metadata !{null, metadata !1, metadata !2, metadata !480, metadata !4, metadata !96, metadata !6}
!480 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<49, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!481 = metadata !{null, metadata !271, metadata !43, metadata !482, metadata !45, metadata !483, metadata !6}
!482 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool", metadata !"_Bool", metadata !"_Bool"}
!483 = metadata !{metadata !"kernel_arg_name", metadata !"qb", metadata !"r", metadata !"s"}
!484 = metadata !{null, metadata !1, metadata !2, metadata !485, metadata !4, metadata !96, metadata !6}
!485 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<31, 0, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!486 = metadata !{null, metadata !1, metadata !2, metadata !487, metadata !4, metadata !96, metadata !6}
!487 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<31, 0, false, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!488 = metadata !{null, metadata !1, metadata !2, metadata !489, metadata !4, metadata !5, metadata !6}
!489 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ufixed<49, 0>"}
!490 = metadata !{null, metadata !42, metadata !43, metadata !491, metadata !45, metadata !133, metadata !6}
!491 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<19, false>*", metadata !"int", metadata !"int"}
!492 = metadata !{null, metadata !1, metadata !2, metadata !493, metadata !4, metadata !136, metadata !6}
!493 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<19, false> &"}
!494 = metadata !{null, metadata !1, metadata !2, metadata !493, metadata !4, metadata !138, metadata !6}
!495 = metadata !{null, metadata !1, metadata !2, metadata !496, metadata !4, metadata !136, metadata !6}
!496 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<19, false> &"}
!497 = metadata !{null, metadata !1, metadata !2, metadata !496, metadata !4, metadata !96, metadata !6}
!498 = metadata !{null, metadata !123, metadata !17, metadata !499, metadata !19, metadata !156, metadata !6}
!499 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<19, false>*", metadata !"int"}
!500 = metadata !{null, metadata !42, metadata !43, metadata !501, metadata !45, metadata !133, metadata !6}
!501 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<49, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!502 = metadata !{null, metadata !1, metadata !2, metadata !503, metadata !4, metadata !136, metadata !6}
!503 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<49, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!504 = metadata !{null, metadata !1, metadata !2, metadata !505, metadata !4, metadata !136, metadata !6}
!505 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<49, false> &"}
!506 = metadata !{null, metadata !1, metadata !2, metadata !505, metadata !4, metadata !96, metadata !6}
!507 = metadata !{null, metadata !16, metadata !17, metadata !508, metadata !19, metadata !362, metadata !6}
!508 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"const ap_fixed_base<49, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!509 = metadata !{null, metadata !1, metadata !2, metadata !480, metadata !4, metadata !106, metadata !6}
!510 = metadata !{null, metadata !1, metadata !2, metadata !511, metadata !4, metadata !96, metadata !6}
!511 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<82, 33, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!512 = metadata !{null, metadata !1, metadata !2, metadata !513, metadata !4, metadata !96, metadata !6}
!513 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<49, 0, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!514 = metadata !{null, metadata !123, metadata !17, metadata !515, metadata !19, metadata !156, metadata !6}
!515 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<3, false>*", metadata !"int"}
!516 = metadata !{null, metadata !16, metadata !17, metadata !517, metadata !19, metadata !99, metadata !6}
!517 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_bit_ref<3, false> &", metadata !"int"}
!518 = metadata !{null, metadata !1, metadata !2, metadata !519, metadata !4, metadata !96, metadata !6}
!519 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<95, 27, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!520 = metadata !{null, metadata !1, metadata !2, metadata !521, metadata !4, metadata !96, metadata !6}
!521 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<95, 27, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!522 = metadata !{null, metadata !1, metadata !2, metadata !375, metadata !4, metadata !106, metadata !6}
!523 = metadata !{null, metadata !42, metadata !43, metadata !524, metadata !45, metadata !133, metadata !6}
!524 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<95, false>*", metadata !"int", metadata !"int"}
!525 = metadata !{null, metadata !1, metadata !2, metadata !526, metadata !4, metadata !136, metadata !6}
!526 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<95, false> &"}
!527 = metadata !{null, metadata !1, metadata !2, metadata !526, metadata !4, metadata !138, metadata !6}
!528 = metadata !{null, metadata !1, metadata !2, metadata !529, metadata !4, metadata !136, metadata !6}
!529 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<95, false> &"}
!530 = metadata !{null, metadata !42, metadata !43, metadata !531, metadata !45, metadata !133, metadata !6}
!531 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<95, 27, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!532 = metadata !{null, metadata !271, metadata !43, metadata !533, metadata !45, metadata !534, metadata !6}
!533 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<71>", metadata !"ap_uint<24>", metadata !"ap_uint<71 + 24> &"}
!534 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b", metadata !"m"}
!535 = metadata !{null, metadata !1, metadata !2, metadata !536, metadata !4, metadata !136, metadata !6}
!536 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<41, false> &"}
!537 = metadata !{null, metadata !1, metadata !2, metadata !536, metadata !4, metadata !96, metadata !6}
!538 = metadata !{null, metadata !42, metadata !43, metadata !539, metadata !45, metadata !133, metadata !6}
!539 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<41, false>*", metadata !"int", metadata !"int"}
!540 = metadata !{null, metadata !1, metadata !2, metadata !541, metadata !4, metadata !136, metadata !6}
!541 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<41, false> &"}
!542 = metadata !{null, metadata !1, metadata !2, metadata !541, metadata !4, metadata !138, metadata !6}
!543 = metadata !{null, metadata !1, metadata !2, metadata !536, metadata !4, metadata !106, metadata !6}
!544 = metadata !{null, metadata !16, metadata !17, metadata !545, metadata !19, metadata !99, metadata !6}
!545 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<41, false> &", metadata !"int"}
!546 = metadata !{null, metadata !42, metadata !43, metadata !547, metadata !45, metadata !133, metadata !6}
!547 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<71, false>*", metadata !"int", metadata !"int"}
!548 = metadata !{null, metadata !16, metadata !17, metadata !549, metadata !19, metadata !550, metadata !6}
!549 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<71, false> &", metadata !"const ap_int_base<24, false> &"}
!550 = metadata !{metadata !"kernel_arg_name", metadata !"op1", metadata !"op2"}
!551 = metadata !{null, metadata !1, metadata !2, metadata !552, metadata !4, metadata !138, metadata !6}
!552 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<71, false> &"}
!553 = metadata !{null, metadata !16, metadata !17, metadata !554, metadata !19, metadata !99, metadata !6}
!554 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<71, false> &", metadata !"const ap_int_base<24, false> &"}
!555 = metadata !{null, metadata !1, metadata !2, metadata !556, metadata !4, metadata !96, metadata !6}
!556 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<24, false> &"}
!557 = metadata !{null, metadata !1, metadata !2, metadata !558, metadata !4, metadata !96, metadata !6}
!558 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<71, false> &"}
!559 = metadata !{null, metadata !1, metadata !2, metadata !529, metadata !4, metadata !96, metadata !6}
!560 = metadata !{null, metadata !1, metadata !2, metadata !561, metadata !4, metadata !106, metadata !6}
!561 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<41> &"}
!562 = metadata !{null, metadata !16, metadata !17, metadata !563, metadata !19, metadata !564, metadata !6}
!563 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"float"}
!564 = metadata !{metadata !"kernel_arg_name", metadata !"exp", metadata !"dummy"}
!565 = metadata !{null, metadata !42, metadata !43, metadata !566, metadata !45, metadata !133, metadata !6}
!566 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<100, false>*", metadata !"int", metadata !"int"}
!567 = metadata !{null, metadata !42, metadata !43, metadata !568, metadata !45, metadata !133, metadata !6}
!568 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<9, true>*", metadata !"int", metadata !"int"}
!569 = metadata !{null, metadata !1, metadata !2, metadata !570, metadata !4, metadata !138, metadata !6}
!570 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<9, true> &"}
!571 = metadata !{null, metadata !1, metadata !2, metadata !572, metadata !4, metadata !106, metadata !6}
!572 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<4, false> &"}
!573 = metadata !{null, metadata !1, metadata !2, metadata !574, metadata !4, metadata !138, metadata !6}
!574 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<100, false> &"}
!575 = metadata !{null, metadata !16, metadata !17, metadata !576, metadata !19, metadata !99, metadata !6}
!576 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<9, true> &", metadata !"int"}
!577 = metadata !{null, metadata !1, metadata !2, metadata !578, metadata !4, metadata !106, metadata !6}
!578 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<71> &"}
!579 = metadata !{null, metadata !123, metadata !17, metadata !580, metadata !19, metadata !156, metadata !6}
!580 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<24, false>*", metadata !"int"}
!581 = metadata !{null, metadata !42, metadata !43, metadata !582, metadata !45, metadata !133, metadata !6}
!582 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<24, false>*", metadata !"int", metadata !"int"}
!583 = metadata !{null, metadata !1, metadata !2, metadata !584, metadata !4, metadata !106, metadata !6}
!584 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<8> &"}
!585 = metadata !{null, metadata !61, metadata !43, metadata !62, metadata !45, metadata !586, metadata !6}
!586 = metadata !{metadata !"kernel_arg_name", metadata !"t_in", metadata !"s_out", metadata !"c_out"}
!587 = metadata !{null, metadata !271, metadata !43, metadata !588, metadata !45, metadata !586, metadata !6}
!588 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"double &", metadata !"double &"}
!589 = metadata !{null, metadata !1, metadata !2, metadata !590, metadata !4, metadata !96, metadata !6}
!590 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<78> &"}
!591 = metadata !{null, metadata !1, metadata !2, metadata !592, metadata !4, metadata !593, metadata !6}
!592 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<78>"}
!593 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!594 = metadata !{null, metadata !16, metadata !17, metadata !595, metadata !19, metadata !99, metadata !6}
!595 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<78, false> &", metadata !"int"}
!596 = metadata !{null, metadata !1, metadata !2, metadata !597, metadata !4, metadata !136, metadata !6}
!597 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<78, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!598 = metadata !{null, metadata !1, metadata !2, metadata !599, metadata !4, metadata !136, metadata !6}
!599 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<78, false> &"}
!600 = metadata !{null, metadata !1, metadata !2, metadata !599, metadata !4, metadata !96, metadata !6}
!601 = metadata !{null, metadata !1, metadata !2, metadata !602, metadata !4, metadata !96, metadata !6}
!602 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<78, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!603 = metadata !{null, metadata !1, metadata !2, metadata !604, metadata !4, metadata !96, metadata !6}
!604 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<78, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!605 = metadata !{null, metadata !42, metadata !43, metadata !606, metadata !45, metadata !133, metadata !6}
!606 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<78, false>*", metadata !"int", metadata !"int"}
!607 = metadata !{null, metadata !1, metadata !2, metadata !608, metadata !4, metadata !136, metadata !6}
!608 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<78, false> &"}
!609 = metadata !{null, metadata !1, metadata !2, metadata !608, metadata !4, metadata !138, metadata !6}
!610 = metadata !{null, metadata !42, metadata !43, metadata !611, metadata !45, metadata !133, metadata !6}
!611 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<78, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!612 = metadata !{null, metadata !16, metadata !17, metadata !613, metadata !19, metadata !99, metadata !6}
!613 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<78, false> &", metadata !"const ap_int_base<78, true> &"}
!614 = metadata !{null, metadata !1, metadata !2, metadata !615, metadata !4, metadata !96, metadata !6}
!615 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<78, true> &"}
!616 = metadata !{null, metadata !1, metadata !2, metadata !617, metadata !4, metadata !96, metadata !6}
!617 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<80, true> &"}
!618 = metadata !{null, metadata !16, metadata !17, metadata !619, metadata !19, metadata !99, metadata !6}
!619 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<78, true> &", metadata !"int"}
!620 = metadata !{null, metadata !1, metadata !2, metadata !621, metadata !4, metadata !96, metadata !6}
!621 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<79, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!622 = metadata !{null, metadata !1, metadata !2, metadata !621, metadata !4, metadata !136, metadata !6}
!623 = metadata !{null, metadata !271, metadata !43, metadata !624, metadata !45, metadata !625, metadata !6}
!624 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed<79, 3> &", metadata !"ap_fixed<79, 3> &", metadata !"ap_fixed<79, 3> &"}
!625 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"y", metadata !"z"}
!626 = metadata !{null, metadata !271, metadata !43, metadata !627, metadata !45, metadata !628, metadata !6}
!627 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<79, 3, 5, 3, 0>", metadata !"struct ap_fixed<79, 3, 0, 3, 0>", metadata !"struct ap_uint<1>"}
!628 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b", metadata !"add"}
!629 = metadata !{null, metadata !1, metadata !2, metadata !630, metadata !4, metadata !106, metadata !6}
!630 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<79, 3, true, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!631 = metadata !{null, metadata !1, metadata !2, metadata !630, metadata !4, metadata !96, metadata !6}
!632 = metadata !{null, metadata !1, metadata !2, metadata !633, metadata !4, metadata !96, metadata !6}
!633 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<79, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!634 = metadata !{null, metadata !1, metadata !2, metadata !635, metadata !4, metadata !96, metadata !6}
!635 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<80, 4, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!636 = metadata !{null, metadata !1, metadata !2, metadata !637, metadata !4, metadata !96, metadata !6}
!637 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<80, 4, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!638 = metadata !{null, metadata !1, metadata !2, metadata !639, metadata !4, metadata !96, metadata !6}
!639 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<128, 2, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!640 = metadata !{null, metadata !1, metadata !2, metadata !641, metadata !4, metadata !96, metadata !6}
!641 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<128, 2, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!642 = metadata !{null, metadata !1, metadata !2, metadata !643, metadata !4, metadata !96, metadata !6}
!643 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<79, 3, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!644 = metadata !{null, metadata !271, metadata !43, metadata !645, metadata !45, metadata !628, metadata !6}
!645 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<79, 3, 5, 3, 0>", metadata !"struct ap_fixed<79, 3, 5, 3, 0>", metadata !"_Bool"}
!646 = metadata !{null, metadata !1, metadata !2, metadata !633, metadata !4, metadata !106, metadata !6}
!647 = metadata !{null, metadata !271, metadata !43, metadata !648, metadata !45, metadata !628, metadata !6}
!648 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<79, 3, 5, 3, 0>", metadata !"struct ap_fixed<79, 3, 5, 3, 0>", metadata !"struct ap_uint<1>"}
!649 = metadata !{null, metadata !123, metadata !17, metadata !650, metadata !19, metadata !156, metadata !6}
!650 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<79, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!651 = metadata !{null, metadata !1, metadata !2, metadata !652, metadata !4, metadata !96, metadata !6}
!652 = metadata !{metadata !"kernel_arg_type", metadata !"const af_bit_ref<79, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!653 = metadata !{null, metadata !1, metadata !2, metadata !652, metadata !4, metadata !136, metadata !6}
!654 = metadata !{null, metadata !1, metadata !2, metadata !615, metadata !4, metadata !136, metadata !6}
!655 = metadata !{null, metadata !1, metadata !2, metadata !656, metadata !4, metadata !96, metadata !6}
!656 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<79, 3, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!657 = metadata !{null, metadata !16, metadata !17, metadata !658, metadata !19, metadata !99, metadata !6}
!658 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<100, false> &", metadata !"int"}
!659 = metadata !{null, metadata !16, metadata !17, metadata !660, metadata !19, metadata !99, metadata !6}
!660 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<32, true> &"}
!661 = metadata !{null, metadata !123, metadata !17, metadata !662, metadata !19, metadata !156, metadata !6}
!662 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, true>*", metadata !"int"}
!663 = metadata !{null, metadata !1, metadata !2, metadata !664, metadata !4, metadata !136, metadata !6}
!664 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<100, false> &"}
!665 = metadata !{null, metadata !1, metadata !2, metadata !664, metadata !4, metadata !96, metadata !6}
!666 = metadata !{null, metadata !42, metadata !43, metadata !667, metadata !45, metadata !133, metadata !6}
!667 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<79, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!668 = metadata !{null, metadata !1, metadata !2, metadata !590, metadata !4, metadata !106, metadata !6}
!669 = metadata !{null, metadata !271, metadata !43, metadata !670, metadata !45, metadata !671, metadata !6}
!670 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"ap_uint<3> &", metadata !"ap_uint<78> &"}
!671 = metadata !{metadata !"kernel_arg_name", metadata !"din", metadata !"k", metadata !"dout"}
!672 = metadata !{null, metadata !1, metadata !2, metadata !52, metadata !4, metadata !593, metadata !6}
!673 = metadata !{null, metadata !16, metadata !17, metadata !674, metadata !19, metadata !99, metadata !6}
!674 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<78, false> &", metadata !"const ap_int_base<52, false> &"}
!675 = metadata !{null, metadata !42, metadata !43, metadata !676, metadata !45, metadata !133, metadata !6}
!676 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<79, false>*", metadata !"int", metadata !"int"}
!677 = metadata !{null, metadata !1, metadata !2, metadata !678, metadata !4, metadata !138, metadata !6}
!678 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<79, false> &"}
!679 = metadata !{null, metadata !16, metadata !17, metadata !680, metadata !19, metadata !99, metadata !6}
!680 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<79, false> &", metadata !"const ap_int_base<79, false> &"}
!681 = metadata !{null, metadata !1, metadata !2, metadata !682, metadata !4, metadata !96, metadata !6}
!682 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<79, false> &"}
!683 = metadata !{null, metadata !42, metadata !43, metadata !684, metadata !45, metadata !133, metadata !6}
!684 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<156, false>*", metadata !"int", metadata !"int"}
!685 = metadata !{null, metadata !1, metadata !2, metadata !686, metadata !4, metadata !138, metadata !6}
!686 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<156, false> &"}
!687 = metadata !{null, metadata !271, metadata !43, metadata !688, metadata !45, metadata !534, metadata !6}
!688 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<78>", metadata !"ap_uint<78>", metadata !"ap_uint<78 + 78> &"}
!689 = metadata !{null, metadata !1, metadata !2, metadata !690, metadata !4, metadata !96, metadata !6}
!690 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<188> &"}
!691 = metadata !{null, metadata !1, metadata !2, metadata !692, metadata !4, metadata !106, metadata !6}
!692 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<156> &"}
!693 = metadata !{null, metadata !271, metadata !43, metadata !694, metadata !45, metadata !534, metadata !6}
!694 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<94>", metadata !"ap_uint<94>", metadata !"ap_uint<2 * 94> &"}
!695 = metadata !{null, metadata !42, metadata !43, metadata !696, metadata !45, metadata !133, metadata !6}
!696 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<48, false>*", metadata !"int", metadata !"int"}
!697 = metadata !{null, metadata !1, metadata !2, metadata !698, metadata !4, metadata !136, metadata !6}
!698 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<48, false> &"}
!699 = metadata !{null, metadata !1, metadata !2, metadata !698, metadata !4, metadata !138, metadata !6}
!700 = metadata !{null, metadata !1, metadata !2, metadata !701, metadata !4, metadata !136, metadata !6}
!701 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<48, false> &"}
!702 = metadata !{null, metadata !1, metadata !2, metadata !701, metadata !4, metadata !96, metadata !6}
!703 = metadata !{null, metadata !42, metadata !43, metadata !704, metadata !45, metadata !133, metadata !6}
!704 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<188, false>*", metadata !"int", metadata !"int"}
!705 = metadata !{null, metadata !1, metadata !2, metadata !706, metadata !4, metadata !106, metadata !6}
!706 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<34, false> &"}
!707 = metadata !{null, metadata !16, metadata !17, metadata !708, metadata !19, metadata !99, metadata !6}
!708 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<48, false> &", metadata !"int"}
!709 = metadata !{null, metadata !1, metadata !2, metadata !710, metadata !4, metadata !96, metadata !6}
!710 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<34> &"}
!711 = metadata !{null, metadata !1, metadata !2, metadata !712, metadata !4, metadata !106, metadata !6}
!712 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<48> &"}
!713 = metadata !{null, metadata !42, metadata !43, metadata !714, metadata !45, metadata !133, metadata !6}
!714 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<94, false>*", metadata !"int", metadata !"int"}
!715 = metadata !{null, metadata !16, metadata !17, metadata !716, metadata !19, metadata !717, metadata !6}
!716 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<94, false> &", metadata !"const ap_range_ref<94, false> &"}
!717 = metadata !{metadata !"kernel_arg_name", metadata !"lhs", metadata !"rhs"}
!718 = metadata !{null, metadata !1, metadata !2, metadata !719, metadata !4, metadata !138, metadata !6}
!719 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<94, false> &"}
!720 = metadata !{null, metadata !16, metadata !17, metadata !721, metadata !19, metadata !99, metadata !6}
!721 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<94, false> &", metadata !"const ap_int_base<94, false> &"}
!722 = metadata !{null, metadata !1, metadata !2, metadata !723, metadata !4, metadata !96, metadata !6}
!723 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<94, false> &"}
!724 = metadata !{null, metadata !1, metadata !2, metadata !725, metadata !4, metadata !96, metadata !6}
!725 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<188, false> &"}
!726 = metadata !{null, metadata !1, metadata !2, metadata !710, metadata !4, metadata !106, metadata !6}
!727 = metadata !{null, metadata !1, metadata !2, metadata !728, metadata !4, metadata !96, metadata !6}
!728 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<78> &"}
!729 = metadata !{null, metadata !42, metadata !43, metadata !730, metadata !45, metadata !133, metadata !6}
!730 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<56, false>*", metadata !"int", metadata !"int"}
!731 = metadata !{null, metadata !1, metadata !2, metadata !732, metadata !4, metadata !138, metadata !6}
!732 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<56, false> &"}
!733 = metadata !{null, metadata !42, metadata !43, metadata !734, metadata !45, metadata !133, metadata !6}
!734 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<178, false>*", metadata !"int", metadata !"int"}
!735 = metadata !{null, metadata !1, metadata !2, metadata !736, metadata !4, metadata !138, metadata !6}
!736 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<178, false> &"}
!737 = metadata !{null, metadata !16, metadata !17, metadata !738, metadata !19, metadata !99, metadata !6}
!738 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<178, false> &", metadata !"int"}
!739 = metadata !{null, metadata !1, metadata !2, metadata !740, metadata !4, metadata !96, metadata !6}
!740 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<178, false> &"}
!741 = metadata !{null, metadata !1, metadata !2, metadata !742, metadata !4, metadata !106, metadata !6}
!742 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<56> &"}
!743 = metadata !{null, metadata !271, metadata !43, metadata !744, metadata !45, metadata !534, metadata !6}
!744 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<125>", metadata !"ap_uint<53>", metadata !"ap_uint<125 + 53> &"}
!745 = metadata !{null, metadata !1, metadata !2, metadata !746, metadata !4, metadata !136, metadata !6}
!746 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<70, false> &"}
!747 = metadata !{null, metadata !1, metadata !2, metadata !746, metadata !4, metadata !96, metadata !6}
!748 = metadata !{null, metadata !42, metadata !43, metadata !749, metadata !45, metadata !133, metadata !6}
!749 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<70, false>*", metadata !"int", metadata !"int"}
!750 = metadata !{null, metadata !1, metadata !2, metadata !751, metadata !4, metadata !136, metadata !6}
!751 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<70, false> &"}
!752 = metadata !{null, metadata !1, metadata !2, metadata !751, metadata !4, metadata !138, metadata !6}
!753 = metadata !{null, metadata !1, metadata !2, metadata !746, metadata !4, metadata !106, metadata !6}
!754 = metadata !{null, metadata !16, metadata !17, metadata !755, metadata !19, metadata !99, metadata !6}
!755 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<70, false> &", metadata !"int"}
!756 = metadata !{null, metadata !42, metadata !43, metadata !757, metadata !45, metadata !133, metadata !6}
!757 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<125, false>*", metadata !"int", metadata !"int"}
!758 = metadata !{null, metadata !16, metadata !17, metadata !759, metadata !19, metadata !550, metadata !6}
!759 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<125, false> &", metadata !"const ap_int_base<53, false> &"}
!760 = metadata !{null, metadata !1, metadata !2, metadata !761, metadata !4, metadata !138, metadata !6}
!761 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<125, false> &"}
!762 = metadata !{null, metadata !16, metadata !17, metadata !763, metadata !19, metadata !99, metadata !6}
!763 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<125, false> &", metadata !"const ap_int_base<53, false> &"}
!764 = metadata !{null, metadata !1, metadata !2, metadata !765, metadata !4, metadata !96, metadata !6}
!765 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<53, false> &"}
!766 = metadata !{null, metadata !1, metadata !2, metadata !767, metadata !4, metadata !96, metadata !6}
!767 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<125, false> &"}
!768 = metadata !{null, metadata !1, metadata !2, metadata !769, metadata !4, metadata !106, metadata !6}
!769 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<70> &"}
!770 = metadata !{null, metadata !16, metadata !17, metadata !771, metadata !19, metadata !564, metadata !6}
!771 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"double"}
!772 = metadata !{null, metadata !16, metadata !17, metadata !773, metadata !19, metadata !99, metadata !6}
!773 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<12, true> &", metadata !"int"}
!774 = metadata !{null, metadata !42, metadata !43, metadata !775, metadata !45, metadata !133, metadata !6}
!775 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<256, false>*", metadata !"int", metadata !"int"}
!776 = metadata !{null, metadata !1, metadata !2, metadata !777, metadata !4, metadata !138, metadata !6}
!777 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<12, true> &"}
!778 = metadata !{null, metadata !1, metadata !2, metadata !779, metadata !4, metadata !106, metadata !6}
!779 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<7, false> &"}
!780 = metadata !{null, metadata !1, metadata !2, metadata !781, metadata !4, metadata !138, metadata !6}
!781 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<256, false> &"}
!782 = metadata !{null, metadata !42, metadata !43, metadata !783, metadata !45, metadata !133, metadata !6}
!783 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<12, true>*", metadata !"int", metadata !"int"}
!784 = metadata !{null, metadata !1, metadata !2, metadata !785, metadata !4, metadata !106, metadata !6}
!785 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<125> &"}
!786 = metadata !{null, metadata !16, metadata !17, metadata !787, metadata !19, metadata !99, metadata !6}
!787 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<53, false> &", metadata !"int"}
!788 = metadata !{null, metadata !16, metadata !17, metadata !789, metadata !19, metadata !99, metadata !6}
!789 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<53, false> &", metadata !"const ap_int_base<52, false> &"}
!790 = metadata !{null, metadata !1, metadata !2, metadata !791, metadata !4, metadata !106, metadata !6}
!791 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<53> &"}
!792 = metadata !{null, metadata !1, metadata !2, metadata !793, metadata !4, metadata !138, metadata !6}
!793 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<400, false> &"}
!794 = metadata !{null, metadata !1, metadata !2, metadata !795, metadata !4, metadata !106, metadata !6}
!795 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<79> &"}
!796 = metadata !{null, metadata !42, metadata !43, metadata !797, metadata !45, metadata !133, metadata !6}
!797 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<400, false>*", metadata !"int", metadata !"int"}
!798 = metadata !{null, metadata !1, metadata !2, metadata !728, metadata !4, metadata !106, metadata !6}
!799 = metadata !{null, metadata !271, metadata !43, metadata !800, metadata !45, metadata !586, metadata !6}
!800 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float &", metadata !"float &"}
!801 = metadata !{null, metadata !1, metadata !2, metadata !802, metadata !4, metadata !803, metadata !6}
!802 = metadata !{metadata !"kernel_arg_type", metadata !"uint32_t"}
!803 = metadata !{metadata !"kernel_arg_name", metadata !"i"}
!804 = metadata !{null, metadata !16, metadata !17, metadata !805, metadata !19, metadata !99, metadata !6}
!805 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<8, false> &"}
!806 = metadata !{null, metadata !16, metadata !17, metadata !576, metadata !19, metadata !109, metadata !6}
!807 = metadata !{null, metadata !16, metadata !17, metadata !808, metadata !19, metadata !99, metadata !6}
!808 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<9, true> &", metadata !"const ap_int_base<32, true> &"}
!809 = metadata !{null, metadata !1, metadata !2, metadata !810, metadata !4, metadata !96, metadata !6}
!810 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<9, true> &"}
!811 = metadata !{null, metadata !1, metadata !2, metadata !220, metadata !4, metadata !812, metadata !6}
!812 = metadata !{metadata !"kernel_arg_name", metadata !"pi"}
!813 = metadata !{null, metadata !16, metadata !17, metadata !814, metadata !19, metadata !99, metadata !6}
!814 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<8, true> &", metadata !"int"}
!815 = metadata !{null, metadata !1, metadata !2, metadata !54, metadata !4, metadata !119, metadata !6}
!816 = metadata !{null, metadata !271, metadata !43, metadata !817, metadata !45, metadata !625, metadata !6}
!817 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<34, 2, 5, 3, 0> &", metadata !"struct ap_fixed<34, 2, 5, 3, 0> &", metadata !"struct ap_fixed<34, 2, 5, 3, 0> &"}
!818 = metadata !{null, metadata !271, metadata !43, metadata !819, metadata !45, metadata !628, metadata !6}
!819 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<34, 2, 5, 3, 0>", metadata !"struct ap_fixed<34, 2, 5, 3, 0>", metadata !"struct ap_uint<1>"}
!820 = metadata !{null, metadata !1, metadata !2, metadata !821, metadata !4, metadata !106, metadata !6}
!821 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<34, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!822 = metadata !{null, metadata !1, metadata !2, metadata !821, metadata !4, metadata !96, metadata !6}
!823 = metadata !{null, metadata !1, metadata !2, metadata !824, metadata !4, metadata !96, metadata !6}
!824 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<35, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!825 = metadata !{null, metadata !1, metadata !2, metadata !826, metadata !4, metadata !96, metadata !6}
!826 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<35, 3, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!827 = metadata !{null, metadata !1, metadata !2, metadata !828, metadata !4, metadata !96, metadata !6}
!828 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<128, 4, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!829 = metadata !{null, metadata !1, metadata !2, metadata !830, metadata !4, metadata !96, metadata !6}
!830 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<128, 4, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!831 = metadata !{null, metadata !271, metadata !43, metadata !832, metadata !45, metadata !628, metadata !6}
!832 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<34, 2, 5, 3, 0>", metadata !"struct ap_fixed<34, 2, 5, 3, 0>", metadata !"_Bool"}
!833 = metadata !{null, metadata !1, metadata !2, metadata !834, metadata !4, metadata !96, metadata !6}
!834 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<34, 2, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!835 = metadata !{null, metadata !123, metadata !17, metadata !836, metadata !19, metadata !156, metadata !6}
!836 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<34, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!837 = metadata !{null, metadata !1, metadata !2, metadata !838, metadata !4, metadata !96, metadata !6}
!838 = metadata !{metadata !"kernel_arg_type", metadata !"const af_bit_ref<34, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!839 = metadata !{null, metadata !1, metadata !2, metadata !838, metadata !4, metadata !136, metadata !6}
!840 = metadata !{null, metadata !1, metadata !2, metadata !841, metadata !4, metadata !96, metadata !6}
!841 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<35, 0, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!842 = metadata !{null, metadata !1, metadata !2, metadata !843, metadata !4, metadata !96, metadata !6}
!843 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<35, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!844 = metadata !{null, metadata !1, metadata !2, metadata !54, metadata !4, metadata !92, metadata !6}
!845 = metadata !{null, metadata !271, metadata !43, metadata !846, metadata !45, metadata !847, metadata !6}
!846 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"ap_uint<7 + 1> &", metadata !"ap_ufixed<fp_struct<float>::SIG_BITS + 12, 0> &"}
!847 = metadata !{metadata !"kernel_arg_name", metadata !"t_in", metadata !"k", metadata !"t_out"}
!848 = metadata !{null, metadata !1, metadata !2, metadata !849, metadata !4, metadata !96, metadata !6}
!849 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<70, 0, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!850 = metadata !{null, metadata !1, metadata !2, metadata !851, metadata !4, metadata !96, metadata !6}
!851 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<70, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!852 = metadata !{null, metadata !271, metadata !43, metadata !853, metadata !45, metadata !534, metadata !6}
!853 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ufixed<35, 0>", metadata !"ap_ufixed<35, 0>", metadata !"ap_ufixed<35 + 35, 0 + 0> &"}
!854 = metadata !{null, metadata !42, metadata !43, metadata !855, metadata !45, metadata !133, metadata !6}
!855 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<70, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!856 = metadata !{null, metadata !271, metadata !43, metadata !857, metadata !45, metadata !534, metadata !6}
!857 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<35>", metadata !"ap_uint<35>", metadata !"ap_uint<35 + 35> &"}
!858 = metadata !{null, metadata !1, metadata !2, metadata !174, metadata !4, metadata !106, metadata !6}
!859 = metadata !{null, metadata !16, metadata !17, metadata !860, metadata !19, metadata !550, metadata !6}
!860 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<35, false> &", metadata !"const ap_int_base<35, false> &"}
!861 = metadata !{null, metadata !1, metadata !2, metadata !862, metadata !4, metadata !138, metadata !6}
!862 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<35, false> &"}
!863 = metadata !{null, metadata !16, metadata !17, metadata !864, metadata !19, metadata !99, metadata !6}
!864 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<35, false> &", metadata !"const ap_int_base<35, false> &"}
!865 = metadata !{null, metadata !1, metadata !2, metadata !866, metadata !4, metadata !96, metadata !6}
!866 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<35, false> &"}
!867 = metadata !{null, metadata !42, metadata !43, metadata !868, metadata !45, metadata !133, metadata !6}
!868 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<35, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!869 = metadata !{null, metadata !1, metadata !2, metadata !870, metadata !4, metadata !136, metadata !6}
!870 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<35, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!871 = metadata !{null, metadata !1, metadata !2, metadata !866, metadata !4, metadata !136, metadata !6}
!872 = metadata !{null, metadata !42, metadata !43, metadata !873, metadata !45, metadata !133, metadata !6}
!873 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<35, false>*", metadata !"int", metadata !"int"}
!874 = metadata !{null, metadata !1, metadata !2, metadata !875, metadata !4, metadata !96, metadata !6}
!875 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<77, 8, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!876 = metadata !{null, metadata !1, metadata !2, metadata !877, metadata !4, metadata !96, metadata !6}
!877 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<77, 8, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!878 = metadata !{null, metadata !1, metadata !2, metadata !52, metadata !4, metadata !136, metadata !6}
!879 = metadata !{null, metadata !271, metadata !43, metadata !880, metadata !45, metadata !534, metadata !6}
!880 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ufixed<42, 7>", metadata !"ap_ufixed<35, 1>", metadata !"ap_ufixed<42 + 35, 7 + 1> &"}
!881 = metadata !{null, metadata !42, metadata !43, metadata !882, metadata !45, metadata !133, metadata !6}
!882 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<77, false>*", metadata !"int", metadata !"int"}
!883 = metadata !{null, metadata !1, metadata !2, metadata !884, metadata !4, metadata !136, metadata !6}
!884 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<77, false> &"}
!885 = metadata !{null, metadata !1, metadata !2, metadata !884, metadata !4, metadata !138, metadata !6}
!886 = metadata !{null, metadata !1, metadata !2, metadata !887, metadata !4, metadata !136, metadata !6}
!887 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<77, false> &"}
!888 = metadata !{null, metadata !42, metadata !43, metadata !889, metadata !45, metadata !133, metadata !6}
!889 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<77, 8, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!890 = metadata !{null, metadata !271, metadata !43, metadata !891, metadata !45, metadata !534, metadata !6}
!891 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<42>", metadata !"ap_uint<35>", metadata !"ap_uint<42 + 35> &"}
!892 = metadata !{null, metadata !16, metadata !17, metadata !893, metadata !19, metadata !550, metadata !6}
!893 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<42, false> &", metadata !"const ap_int_base<35, false> &"}
!894 = metadata !{null, metadata !1, metadata !2, metadata !895, metadata !4, metadata !138, metadata !6}
!895 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<42, false> &"}
!896 = metadata !{null, metadata !16, metadata !17, metadata !897, metadata !19, metadata !99, metadata !6}
!897 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<42, false> &", metadata !"const ap_int_base<35, false> &"}
!898 = metadata !{null, metadata !1, metadata !2, metadata !899, metadata !4, metadata !96, metadata !6}
!899 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<42, false> &"}
!900 = metadata !{null, metadata !1, metadata !2, metadata !887, metadata !4, metadata !96, metadata !6}
!901 = metadata !{null, metadata !42, metadata !43, metadata !902, metadata !45, metadata !133, metadata !6}
!902 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<35, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!903 = metadata !{null, metadata !1, metadata !2, metadata !904, metadata !4, metadata !136, metadata !6}
!904 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<35, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!905 = metadata !{null, metadata !1, metadata !2, metadata !906, metadata !4, metadata !136, metadata !6}
!906 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<42, 7, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!907 = metadata !{null, metadata !1, metadata !2, metadata !899, metadata !4, metadata !136, metadata !6}
!908 = metadata !{null, metadata !42, metadata !43, metadata !909, metadata !45, metadata !133, metadata !6}
!909 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<42, false>*", metadata !"int", metadata !"int"}
!910 = metadata !{null, metadata !1, metadata !2, metadata !911, metadata !4, metadata !96, metadata !6}
!911 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<42, 7, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!912 = metadata !{null, metadata !1, metadata !2, metadata !913, metadata !4, metadata !96, metadata !6}
!913 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<42, 7, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!914 = metadata !{null, metadata !123, metadata !17, metadata !915, metadata !19, metadata !156, metadata !6}
!915 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<42, 7, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!916 = metadata !{null, metadata !42, metadata !43, metadata !917, metadata !45, metadata !133, metadata !6}
!917 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<42, 7, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!918 = metadata !{null, metadata !16, metadata !17, metadata !59, metadata !19, metadata !919, metadata !6}
!919 = metadata !{metadata !"kernel_arg_name", metadata !"y_in", metadata !"x_in"}
!920 = metadata !{null, metadata !271, metadata !43, metadata !921, metadata !45, metadata !625, metadata !6}
!921 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed<41, 2> &", metadata !"ap_fixed<41, 2> &", metadata !"ap_fixed<41, 2> &"}
!922 = metadata !{null, metadata !271, metadata !43, metadata !923, metadata !45, metadata !628, metadata !6}
!923 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<41, 2, 5, 3, 0>", metadata !"struct ap_fixed<41, 2, 0, 3, 0>", metadata !"struct ap_uint<1>"}
!924 = metadata !{null, metadata !1, metadata !2, metadata !925, metadata !4, metadata !106, metadata !6}
!925 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<41, 2, true, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!926 = metadata !{null, metadata !1, metadata !2, metadata !925, metadata !4, metadata !96, metadata !6}
!927 = metadata !{null, metadata !1, metadata !2, metadata !928, metadata !4, metadata !96, metadata !6}
!928 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<41, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!929 = metadata !{null, metadata !1, metadata !2, metadata !930, metadata !4, metadata !96, metadata !6}
!930 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<42, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!931 = metadata !{null, metadata !1, metadata !2, metadata !932, metadata !4, metadata !96, metadata !6}
!932 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<42, 3, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!933 = metadata !{null, metadata !1, metadata !2, metadata !934, metadata !4, metadata !96, metadata !6}
!934 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<41, 2, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!935 = metadata !{null, metadata !271, metadata !43, metadata !936, metadata !45, metadata !628, metadata !6}
!936 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<41, 2, 5, 3, 0>", metadata !"struct ap_fixed<41, 2, 5, 3, 0>", metadata !"_Bool"}
!937 = metadata !{null, metadata !1, metadata !2, metadata !928, metadata !4, metadata !106, metadata !6}
!938 = metadata !{null, metadata !271, metadata !43, metadata !939, metadata !45, metadata !628, metadata !6}
!939 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<41, 2, 5, 3, 0>", metadata !"struct ap_fixed<41, 2, 5, 3, 0>", metadata !"struct ap_uint<1>"}
!940 = metadata !{null, metadata !1, metadata !2, metadata !275, metadata !4, metadata !136, metadata !6}
!941 = metadata !{null, metadata !123, metadata !17, metadata !942, metadata !19, metadata !156, metadata !6}
!942 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<41, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!943 = metadata !{null, metadata !42, metadata !43, metadata !944, metadata !45, metadata !133, metadata !6}
!944 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<41, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!945 = metadata !{null, metadata !1, metadata !2, metadata !946, metadata !4, metadata !96, metadata !6}
!946 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<41, 2, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!947 = metadata !{null, metadata !16, metadata !17, metadata !948, metadata !19, metadata !99, metadata !6}
!948 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"const ap_int_base<8, false> &"}
!949 = metadata !{null, metadata !1, metadata !2, metadata !148, metadata !4, metadata !106, metadata !6}
!950 = metadata !{null, metadata !16, metadata !17, metadata !56, metadata !19, metadata !919, metadata !6}
!951 = metadata !{null, metadata !1, metadata !2, metadata !158, metadata !4, metadata !812, metadata !6}
!952 = metadata !{null, metadata !42, metadata !43, metadata !953, metadata !45, metadata !133, metadata !6}
!953 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<88, true>*", metadata !"int", metadata !"int"}
!954 = metadata !{null, metadata !1, metadata !2, metadata !955, metadata !4, metadata !136, metadata !6}
!955 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<88, true> &"}
!956 = metadata !{null, metadata !1, metadata !2, metadata !955, metadata !4, metadata !138, metadata !6}
!957 = metadata !{null, metadata !1, metadata !2, metadata !958, metadata !4, metadata !136, metadata !6}
!958 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<88, false> &"}
!959 = metadata !{null, metadata !1, metadata !2, metadata !958, metadata !4, metadata !96, metadata !6}
!960 = metadata !{null, metadata !271, metadata !43, metadata !961, metadata !45, metadata !625, metadata !6}
!961 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed<87, 2> &", metadata !"ap_fixed<87, 2> &", metadata !"ap_fixed<87, 2> &"}
!962 = metadata !{null, metadata !271, metadata !43, metadata !963, metadata !45, metadata !628, metadata !6}
!963 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<87, 2, 5, 3, 0>", metadata !"struct ap_fixed<87, 2, 0, 3, 0>", metadata !"struct ap_uint<1>"}
!964 = metadata !{null, metadata !1, metadata !2, metadata !965, metadata !4, metadata !106, metadata !6}
!965 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<87, 2, true, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!966 = metadata !{null, metadata !1, metadata !2, metadata !965, metadata !4, metadata !96, metadata !6}
!967 = metadata !{null, metadata !1, metadata !2, metadata !968, metadata !4, metadata !96, metadata !6}
!968 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<87, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!969 = metadata !{null, metadata !1, metadata !2, metadata !970, metadata !4, metadata !96, metadata !6}
!970 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<88, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!971 = metadata !{null, metadata !1, metadata !2, metadata !972, metadata !4, metadata !96, metadata !6}
!972 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<88, 3, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!973 = metadata !{null, metadata !1, metadata !2, metadata !974, metadata !4, metadata !96, metadata !6}
!974 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<87, 2, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!975 = metadata !{null, metadata !271, metadata !43, metadata !976, metadata !45, metadata !628, metadata !6}
!976 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<87, 2, 5, 3, 0>", metadata !"struct ap_fixed<87, 2, 5, 3, 0>", metadata !"_Bool"}
!977 = metadata !{null, metadata !1, metadata !2, metadata !968, metadata !4, metadata !106, metadata !6}
!978 = metadata !{null, metadata !271, metadata !43, metadata !979, metadata !45, metadata !628, metadata !6}
!979 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<87, 2, 5, 3, 0>", metadata !"struct ap_fixed<87, 2, 5, 3, 0>", metadata !"struct ap_uint<1>"}
!980 = metadata !{null, metadata !123, metadata !17, metadata !981, metadata !19, metadata !156, metadata !6}
!981 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<87, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!982 = metadata !{null, metadata !42, metadata !43, metadata !983, metadata !45, metadata !133, metadata !6}
!983 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<87, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!984 = metadata !{null, metadata !1, metadata !2, metadata !985, metadata !4, metadata !96, metadata !6}
!985 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<87, 2, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!986 = metadata !{null, metadata !16, metadata !17, metadata !987, metadata !19, metadata !99, metadata !6}
!987 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"const ap_int_base<11, false> &"}
!988 = metadata !{null, metadata !1, metadata !2, metadata !115, metadata !4, metadata !106, metadata !6}
!989 = metadata !{null, metadata !1, metadata !2, metadata !200, metadata !4, metadata !106, metadata !6}
!990 = metadata !{null, metadata !1, metadata !2, metadata !991, metadata !4, metadata !803, metadata !6}
!991 = metadata !{metadata !"kernel_arg_type", metadata !"uint64_t"}
!992 = metadata !{null, metadata !16, metadata !17, metadata !993, metadata !19, metadata !994, metadata !6}
!993 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float &"}
!994 = metadata !{metadata !"kernel_arg_name", metadata !"t_in", metadata !"t_out"}
!995 = metadata !{null, metadata !1, metadata !2, metadata !996, metadata !4, metadata !96, metadata !6}
!996 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<41, 3, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!997 = metadata !{null, metadata !1, metadata !2, metadata !998, metadata !4, metadata !96, metadata !6}
!998 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<41, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!999 = metadata !{null, metadata !1, metadata !2, metadata !1000, metadata !4, metadata !593, metadata !6}
!1000 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ufixed<40, 3>"}
!1001 = metadata !{null, metadata !1, metadata !2, metadata !1002, metadata !4, metadata !593, metadata !6}
!1002 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<40>"}
!1003 = metadata !{null, metadata !16, metadata !17, metadata !1004, metadata !19, metadata !99, metadata !6}
!1004 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<40, false> &", metadata !"int"}
!1005 = metadata !{null, metadata !1, metadata !2, metadata !1006, metadata !4, metadata !136, metadata !6}
!1006 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<40, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1007 = metadata !{null, metadata !1, metadata !2, metadata !1008, metadata !4, metadata !136, metadata !6}
!1008 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<40, false> &"}
!1009 = metadata !{null, metadata !1, metadata !2, metadata !1008, metadata !4, metadata !96, metadata !6}
!1010 = metadata !{null, metadata !1, metadata !2, metadata !1011, metadata !4, metadata !96, metadata !6}
!1011 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<40, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1012 = metadata !{null, metadata !1, metadata !2, metadata !1013, metadata !4, metadata !136, metadata !6}
!1013 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<40, false> &"}
!1014 = metadata !{null, metadata !1, metadata !2, metadata !1013, metadata !4, metadata !138, metadata !6}
!1015 = metadata !{null, metadata !42, metadata !43, metadata !1016, metadata !45, metadata !133, metadata !6}
!1016 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<40, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!1017 = metadata !{null, metadata !42, metadata !43, metadata !1018, metadata !45, metadata !133, metadata !6}
!1018 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<40, false>*", metadata !"int", metadata !"int"}
!1019 = metadata !{null, metadata !1, metadata !2, metadata !1020, metadata !4, metadata !96, metadata !6}
!1020 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<40, 3, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1021 = metadata !{null, metadata !1, metadata !2, metadata !1022, metadata !4, metadata !96, metadata !6}
!1022 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<40, 3, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1023 = metadata !{null, metadata !1, metadata !2, metadata !1024, metadata !4, metadata !96, metadata !6}
!1024 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<40, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1025 = metadata !{null, metadata !271, metadata !43, metadata !1026, metadata !45, metadata !625, metadata !6}
!1026 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed<41, 3> &", metadata !"ap_fixed<41, 3> &", metadata !"ap_fixed<41, 3> &"}
!1027 = metadata !{null, metadata !271, metadata !43, metadata !1028, metadata !45, metadata !628, metadata !6}
!1028 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<41, 3, 5, 3, 0>", metadata !"struct ap_fixed<41, 3, 0, 3, 0>", metadata !"struct ap_uint<1>"}
!1029 = metadata !{null, metadata !1, metadata !2, metadata !1030, metadata !4, metadata !106, metadata !6}
!1030 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<41, 3, true, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!1031 = metadata !{null, metadata !1, metadata !2, metadata !1030, metadata !4, metadata !96, metadata !6}
!1032 = metadata !{null, metadata !1, metadata !2, metadata !1033, metadata !4, metadata !96, metadata !6}
!1033 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<42, 4, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1034 = metadata !{null, metadata !1, metadata !2, metadata !1035, metadata !4, metadata !96, metadata !6}
!1035 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<42, 4, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1036 = metadata !{null, metadata !1, metadata !2, metadata !1037, metadata !4, metadata !96, metadata !6}
!1037 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<41, 3, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!1038 = metadata !{null, metadata !271, metadata !43, metadata !1039, metadata !45, metadata !628, metadata !6}
!1039 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<41, 3, 5, 3, 0>", metadata !"struct ap_fixed<41, 3, 5, 3, 0>", metadata !"_Bool"}
!1040 = metadata !{null, metadata !1, metadata !2, metadata !998, metadata !4, metadata !106, metadata !6}
!1041 = metadata !{null, metadata !271, metadata !43, metadata !1042, metadata !45, metadata !628, metadata !6}
!1042 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<41, 3, 5, 3, 0>", metadata !"struct ap_fixed<41, 3, 5, 3, 0>", metadata !"struct ap_uint<1>"}
!1043 = metadata !{null, metadata !123, metadata !17, metadata !1044, metadata !19, metadata !156, metadata !6}
!1044 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<41, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!1045 = metadata !{null, metadata !42, metadata !43, metadata !1046, metadata !45, metadata !133, metadata !6}
!1046 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<41, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!1047 = metadata !{null, metadata !1, metadata !2, metadata !1048, metadata !4, metadata !138, metadata !6}
!1048 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<66, false> &"}
!1049 = metadata !{null, metadata !1, metadata !2, metadata !1050, metadata !4, metadata !106, metadata !6}
!1050 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<40> &"}
!1051 = metadata !{null, metadata !16, metadata !17, metadata !1052, metadata !19, metadata !99, metadata !6}
!1052 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<66, false> &", metadata !"int"}
!1053 = metadata !{null, metadata !1, metadata !2, metadata !1054, metadata !4, metadata !96, metadata !6}
!1054 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<66, false> &"}
!1055 = metadata !{null, metadata !1, metadata !2, metadata !556, metadata !4, metadata !136, metadata !6}
!1056 = metadata !{null, metadata !42, metadata !43, metadata !1057, metadata !45, metadata !133, metadata !6}
!1057 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<66, false>*", metadata !"int", metadata !"int"}
!1058 = metadata !{null, metadata !1, metadata !2, metadata !1059, metadata !4, metadata !106, metadata !6}
!1059 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<66> &"}
!1060 = metadata !{null, metadata !16, metadata !17, metadata !1061, metadata !19, metadata !99, metadata !6}
!1061 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<24, false> &", metadata !"int"}
!1062 = metadata !{null, metadata !16, metadata !17, metadata !1063, metadata !19, metadata !99, metadata !6}
!1063 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<24, false> &", metadata !"const ap_int_base<23, false> &"}
!1064 = metadata !{null, metadata !16, metadata !17, metadata !1065, metadata !19, metadata !362, metadata !6}
!1065 = metadata !{metadata !"kernel_arg_type", metadata !"uint", metadata !"const ap_int_base<8, false> &"}
!1066 = metadata !{null, metadata !16, metadata !17, metadata !1067, metadata !19, metadata !99, metadata !6}
!1067 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &", metadata !"const ap_int_base<8, false> &"}
!1068 = metadata !{null, metadata !271, metadata !43, metadata !1069, metadata !45, metadata !1070, metadata !6}
!1069 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"_Bool"}
!1070 = metadata !{metadata !"kernel_arg_name", metadata !"t_in", metadata !"do_cos", metadata !"do_pi"}
!1071 = metadata !{null, metadata !1, metadata !2, metadata !1072, metadata !4, metadata !96, metadata !6}
!1072 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<30, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1073 = metadata !{null, metadata !1, metadata !2, metadata !1074, metadata !4, metadata !96, metadata !6}
!1074 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<30, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1075 = metadata !{null, metadata !16, metadata !17, metadata !1076, metadata !19, metadata !99, metadata !6}
!1076 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &", metadata !"int"}
!1077 = metadata !{null, metadata !1, metadata !2, metadata !1078, metadata !4, metadata !96, metadata !6}
!1078 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<31, 0, false, (enum ap_q_mode)0, (enum ap_o_mode)0, 0> &"}
!1079 = metadata !{null, metadata !1, metadata !2, metadata !1080, metadata !4, metadata !96, metadata !6}
!1080 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<31, 0, (enum ap_q_mode)0, (enum ap_o_mode)0, 0> &"}
!1081 = metadata !{null, metadata !123, metadata !17, metadata !1082, metadata !19, metadata !156, metadata !6}
!1082 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<8, false>*", metadata !"int"}
!1083 = metadata !{null, metadata !1084, metadata !23, metadata !1085, metadata !25, metadata !1086, metadata !6}
!1084 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!1085 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"ap_uint<3> &", metadata !"ap_ufixed<31, 0> &", metadata !"ap_ufixed<31, 0> &", metadata !"ap_int<fp_struct<float>::EXP_BITS> &", metadata !"int &"}
!1086 = metadata !{metadata !"kernel_arg_name", metadata !"din", metadata !"k", metadata !"dout", metadata !"Mx", metadata !"Ex", metadata !"exactly_pi_over_2"}
!1087 = metadata !{null, metadata !16, metadata !17, metadata !1088, metadata !19, metadata !109, metadata !6}
!1088 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<49, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &", metadata !"int"}
!1089 = metadata !{null, metadata !16, metadata !17, metadata !1090, metadata !19, metadata !99, metadata !6}
!1090 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<95, false> &", metadata !"int"}
!1091 = metadata !{null, metadata !1, metadata !2, metadata !1092, metadata !4, metadata !96, metadata !6}
!1092 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<24> &"}
!1093 = metadata !{null, metadata !1, metadata !2, metadata !1094, metadata !4, metadata !106, metadata !6}
!1094 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<95> &"}
!1095 = metadata !{null, metadata !271, metadata !43, metadata !1096, metadata !45, metadata !273, metadata !6}
!1096 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ulong>::is_signed, _Bool>::type"}
!1097 = metadata !{null, metadata !271, metadata !43, metadata !1098, metadata !45, metadata !273, metadata !6}
!1098 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uint>::is_signed, _Bool>::type"}
!1099 = metadata !{null, metadata !16, metadata !17, metadata !1100, metadata !19, metadata !109, metadata !6}
!1100 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 33, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!1101 = metadata !{null, metadata !1, metadata !2, metadata !1102, metadata !4, metadata !96, metadata !6}
!1102 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 33, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!1103 = metadata !{null, metadata !1, metadata !2, metadata !1104, metadata !4, metadata !96, metadata !6}
!1104 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<84, 84, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1105 = metadata !{null, metadata !1, metadata !2, metadata !1106, metadata !4, metadata !96, metadata !6}
!1106 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<84, 84, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1107 = metadata !{null, metadata !16, metadata !17, metadata !1108, metadata !19, metadata !99, metadata !6}
!1108 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<84, false> &", metadata !"int"}
!1109 = metadata !{null, metadata !1, metadata !2, metadata !1110, metadata !4, metadata !106, metadata !6}
!1110 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<84, false> &"}
!1111 = metadata !{null, metadata !1, metadata !2, metadata !1112, metadata !4, metadata !96, metadata !6}
!1112 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<136, 84, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1113 = metadata !{null, metadata !271, metadata !43, metadata !1114, metadata !45, metadata !273, metadata !6}
!1114 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ushort>::is_signed, _Bool>::type"}
!1115 = metadata !{null, metadata !16, metadata !17, metadata !1116, metadata !19, metadata !109, metadata !6}
!1116 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 17, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!1117 = metadata !{null, metadata !1, metadata !2, metadata !1118, metadata !4, metadata !96, metadata !6}
!1118 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 17, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!1119 = metadata !{null, metadata !1, metadata !2, metadata !1120, metadata !4, metadata !96, metadata !6}
!1120 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<68, 68, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1121 = metadata !{null, metadata !1, metadata !2, metadata !1122, metadata !4, metadata !96, metadata !6}
!1122 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<68, 68, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1123 = metadata !{null, metadata !16, metadata !17, metadata !1124, metadata !19, metadata !99, metadata !6}
!1124 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<68, false> &", metadata !"int"}
!1125 = metadata !{null, metadata !1, metadata !2, metadata !1126, metadata !4, metadata !106, metadata !6}
!1126 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<68, false> &"}
!1127 = metadata !{null, metadata !1, metadata !2, metadata !1128, metadata !4, metadata !96, metadata !6}
!1128 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<120, 68, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1129 = metadata !{null, metadata !271, metadata !43, metadata !1130, metadata !45, metadata !273, metadata !6}
!1130 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uchar>::is_signed, _Bool>::type"}
!1131 = metadata !{null, metadata !16, metadata !17, metadata !1132, metadata !19, metadata !109, metadata !6}
!1132 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 9, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!1133 = metadata !{null, metadata !1, metadata !2, metadata !1134, metadata !4, metadata !96, metadata !6}
!1134 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 9, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!1135 = metadata !{null, metadata !1, metadata !2, metadata !1136, metadata !4, metadata !96, metadata !6}
!1136 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<60, 60, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1137 = metadata !{null, metadata !1, metadata !2, metadata !1138, metadata !4, metadata !96, metadata !6}
!1138 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<60, 60, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1139 = metadata !{null, metadata !16, metadata !17, metadata !1140, metadata !19, metadata !99, metadata !6}
!1140 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<60, false> &", metadata !"int"}
!1141 = metadata !{null, metadata !1, metadata !2, metadata !1142, metadata !4, metadata !106, metadata !6}
!1142 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<60, false> &"}
!1143 = metadata !{null, metadata !1, metadata !2, metadata !1144, metadata !4, metadata !96, metadata !6}
!1144 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<112, 60, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1145 = metadata !{null, metadata !271, metadata !43, metadata !1146, metadata !45, metadata !273, metadata !6}
!1146 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ulong>::is_signed, _Bool>::type"}
!1147 = metadata !{null, metadata !271, metadata !43, metadata !1148, metadata !45, metadata !273, metadata !6}
!1148 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uint>::is_signed, _Bool>::type"}
!1149 = metadata !{null, metadata !1, metadata !2, metadata !1150, metadata !4, metadata !96, metadata !6}
!1150 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<55, 55, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1151 = metadata !{null, metadata !1, metadata !2, metadata !1152, metadata !4, metadata !96, metadata !6}
!1152 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<55, 55, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1153 = metadata !{null, metadata !16, metadata !17, metadata !1154, metadata !19, metadata !99, metadata !6}
!1154 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, false> &", metadata !"int"}
!1155 = metadata !{null, metadata !1, metadata !2, metadata !1156, metadata !4, metadata !106, metadata !6}
!1156 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, false> &"}
!1157 = metadata !{null, metadata !1, metadata !2, metadata !1158, metadata !4, metadata !96, metadata !6}
!1158 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<78, 55, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1159 = metadata !{null, metadata !271, metadata !43, metadata !1160, metadata !45, metadata !273, metadata !6}
!1160 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ushort>::is_signed, _Bool>::type"}
!1161 = metadata !{null, metadata !1, metadata !2, metadata !1162, metadata !4, metadata !96, metadata !6}
!1162 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<39, 39, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1163 = metadata !{null, metadata !1, metadata !2, metadata !1164, metadata !4, metadata !96, metadata !6}
!1164 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<39, 39, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1165 = metadata !{null, metadata !16, metadata !17, metadata !1166, metadata !19, metadata !99, metadata !6}
!1166 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<39, false> &", metadata !"int"}
!1167 = metadata !{null, metadata !1, metadata !2, metadata !1168, metadata !4, metadata !106, metadata !6}
!1168 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<39, false> &"}
!1169 = metadata !{null, metadata !1, metadata !2, metadata !1170, metadata !4, metadata !96, metadata !6}
!1170 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<62, 39, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1171 = metadata !{null, metadata !271, metadata !43, metadata !1172, metadata !45, metadata !273, metadata !6}
!1172 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uchar>::is_signed, _Bool>::type"}
!1173 = metadata !{null, metadata !1, metadata !2, metadata !1174, metadata !4, metadata !96, metadata !6}
!1174 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<31, 31, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1175 = metadata !{null, metadata !1, metadata !2, metadata !1176, metadata !4, metadata !96, metadata !6}
!1176 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<31, 31, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1177 = metadata !{null, metadata !16, metadata !17, metadata !1178, metadata !19, metadata !99, metadata !6}
!1178 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<31, false> &", metadata !"int"}
!1179 = metadata !{null, metadata !1, metadata !2, metadata !423, metadata !4, metadata !106, metadata !6}
!1180 = metadata !{null, metadata !1, metadata !2, metadata !1181, metadata !4, metadata !96, metadata !6}
!1181 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<54, 31, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1182 = metadata !{null, metadata !271, metadata !43, metadata !1183, metadata !45, metadata !273, metadata !6}
!1183 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<int>::is_signed, _Bool>::type"}
!1184 = metadata !{null, metadata !1, metadata !2, metadata !1185, metadata !4, metadata !96, metadata !6}
!1185 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 32, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1186 = metadata !{null, metadata !1, metadata !2, metadata !1187, metadata !4, metadata !96, metadata !6}
!1187 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<33, 33, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1188 = metadata !{null, metadata !1, metadata !2, metadata !1189, metadata !4, metadata !96, metadata !6}
!1189 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<32, 32, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1190 = metadata !{null, metadata !1, metadata !2, metadata !1191, metadata !4, metadata !96, metadata !6}
!1191 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<32, 32, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1192 = metadata !{null, metadata !271, metadata !43, metadata !1193, metadata !45, metadata !273, metadata !6}
!1193 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<short>::is_signed, _Bool>::type"}
!1194 = metadata !{null, metadata !1, metadata !2, metadata !1195, metadata !4, metadata !96, metadata !6}
!1195 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<16, 16, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1196 = metadata !{null, metadata !1, metadata !2, metadata !1197, metadata !4, metadata !96, metadata !6}
!1197 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<17, 17, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1198 = metadata !{null, metadata !1, metadata !2, metadata !1199, metadata !4, metadata !96, metadata !6}
!1199 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<16, 16, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1200 = metadata !{null, metadata !1, metadata !2, metadata !1201, metadata !4, metadata !96, metadata !6}
!1201 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<16, 16, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1202 = metadata !{null, metadata !123, metadata !17, metadata !1203, metadata !19, metadata !156, metadata !6}
!1203 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<16, true>*", metadata !"int"}
!1204 = metadata !{null, metadata !271, metadata !43, metadata !1205, metadata !45, metadata !273, metadata !6}
!1205 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<signed char>::is_signed, _Bool>::type"}
!1206 = metadata !{null, metadata !1, metadata !2, metadata !1207, metadata !4, metadata !96, metadata !6}
!1207 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<8, 8, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1208 = metadata !{null, metadata !1, metadata !2, metadata !1209, metadata !4, metadata !96, metadata !6}
!1209 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<9, 9, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1210 = metadata !{null, metadata !1, metadata !2, metadata !1211, metadata !4, metadata !96, metadata !6}
!1211 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<8, 8, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1212 = metadata !{null, metadata !1, metadata !2, metadata !1213, metadata !4, metadata !96, metadata !6}
!1213 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<8, 8, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1214 = metadata !{null, metadata !123, metadata !17, metadata !1215, metadata !19, metadata !156, metadata !6}
!1215 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<8, true>*", metadata !"int"}
!1216 = metadata !{null, metadata !271, metadata !43, metadata !1217, metadata !45, metadata !273, metadata !6}
!1217 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<int>::is_signed, _Bool>::type"}
!1218 = metadata !{null, metadata !271, metadata !43, metadata !1219, metadata !45, metadata !273, metadata !6}
!1219 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<short>::is_signed, _Bool>::type"}
!1220 = metadata !{null, metadata !271, metadata !43, metadata !1221, metadata !45, metadata !273, metadata !6}
!1221 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<signed char>::is_signed, _Bool>::type"}
!1222 = metadata !{metadata !1223, [2 x i32]* @llvm_global_ctors_0}
!1223 = metadata !{metadata !1224}
!1224 = metadata !{i32 0, i32 31, metadata !1225}
!1225 = metadata !{metadata !1226}
!1226 = metadata !{metadata !"llvm.global_ctors.0", metadata !1227, metadata !"", i32 0, i32 31}
!1227 = metadata !{metadata !1228}
!1228 = metadata !{i32 0, i32 1, i32 1}
!1229 = metadata !{metadata !1230}
!1230 = metadata !{i32 0, i32 31, metadata !1231}
!1231 = metadata !{metadata !1232}
!1232 = metadata !{metadata !"size", metadata !1233, metadata !"int", i32 0, i32 31}
!1233 = metadata !{metadata !1234}
!1234 = metadata !{i32 0, i32 0, i32 0}
!1235 = metadata !{metadata !1236}
!1236 = metadata !{i32 0, i32 31, metadata !1237}
!1237 = metadata !{metadata !1238}
!1238 = metadata !{metadata !"length", metadata !1233, metadata !"int", i32 0, i32 31}
!1239 = metadata !{metadata !1240}
!1240 = metadata !{i32 0, i32 63, metadata !1241}
!1241 = metadata !{metadata !1242}
!1242 = metadata !{metadata !"dataa", metadata !1243, metadata !"double", i32 0, i32 63}
!1243 = metadata !{metadata !1244, metadata !1245}
!1244 = metadata !{i32 0, i32 14, i32 1}
!1245 = metadata !{i32 0, i32 4, i32 1}
!1246 = metadata !{metadata !1247}
!1247 = metadata !{i32 0, i32 63, metadata !1248}
!1248 = metadata !{metadata !1249}
!1249 = metadata !{metadata !"datac", metadata !1243, metadata !"double", i32 0, i32 63}
!1250 = metadata !{metadata !1251}
!1251 = metadata !{i32 0, i32 63, metadata !1252}
!1252 = metadata !{metadata !1253}
!1253 = metadata !{metadata !"datag", metadata !1243, metadata !"double", i32 0, i32 63}
!1254 = metadata !{metadata !1255}
!1255 = metadata !{i32 0, i32 63, metadata !1256}
!1256 = metadata !{metadata !1257}
!1257 = metadata !{metadata !"datat", metadata !1243, metadata !"double", i32 0, i32 63}
!1258 = metadata !{metadata !1259}
!1259 = metadata !{i32 0, i32 63, metadata !1260}
!1260 = metadata !{metadata !1261}
!1261 = metadata !{metadata !"return", metadata !1262, metadata !"double", i32 0, i32 63}
!1262 = metadata !{metadata !1263}
!1263 = metadata !{i32 0, i32 1, i32 0}
!1264 = metadata !{i32 786689, metadata !1265, metadata !"length", metadata !1266, i32 33554515, metadata !1270, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1265 = metadata !{i32 786478, i32 0, metadata !1266, metadata !"compute", metadata !"compute", metadata !"", metadata !1266, i32 83, metadata !1267, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !1275, i32 84} ; [ DW_TAG_subprogram ]
!1266 = metadata !{i32 786473, metadata !"testproject/fun.h", metadata !"/home/rika/eceproject/hequ2", null} ; [ DW_TAG_file_type ]
!1267 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1268, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1268 = metadata !{metadata !1269, metadata !1270, metadata !1270, metadata !1271, metadata !1271, metadata !1271, metadata !1271}
!1269 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!1270 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!1271 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1272} ; [ DW_TAG_pointer_type ]
!1272 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 320, i64 64, i32 0, i32 0, metadata !1269, metadata !1273, i32 0, i32 0} ; [ DW_TAG_array_type ]
!1273 = metadata !{metadata !1274}
!1274 = metadata !{i32 786465, i64 0, i64 4}      ; [ DW_TAG_subrange_type ]
!1275 = metadata !{metadata !1276}
!1276 = metadata !{i32 786468}                    ; [ DW_TAG_base_type ]
!1277 = metadata !{i32 83, i32 30, metadata !1265, null}
!1278 = metadata !{i32 786689, metadata !1265, metadata !"size", metadata !1266, i32 16777299, metadata !1270, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1279 = metadata !{i32 83, i32 20, metadata !1265, null}
!1280 = metadata !{i32 786689, metadata !1281, metadata !"size", metadata !1266, i32 16777278, metadata !1270, i32 0, metadata !1284} ; [ DW_TAG_arg_variable ]
!1281 = metadata !{i32 786478, i32 0, metadata !1266, metadata !"countHeight", metadata !"countHeight", metadata !"", metadata !1266, i32 62, metadata !1282, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !1275, i32 62} ; [ DW_TAG_subprogram ]
!1282 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1283, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1283 = metadata !{metadata !1270, metadata !1270}
!1284 = metadata !{i32 92, i32 13, metadata !1285, null}
!1285 = metadata !{i32 786443, metadata !1265, i32 84, i32 42, metadata !1266, i32 17} ; [ DW_TAG_lexical_block ]
!1286 = metadata !{i32 62, i32 21, metadata !1281, metadata !1284}
!1287 = metadata !{i32 786689, metadata !1265, metadata !"dataa", null, i32 83, metadata !1288, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1288 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 4800, i64 64, i32 0, i32 0, metadata !1269, metadata !1289, i32 0, i32 0} ; [ DW_TAG_array_type ]
!1289 = metadata !{metadata !1290, metadata !1274}
!1290 = metadata !{i32 786465, i64 0, i64 14}     ; [ DW_TAG_subrange_type ]
!1291 = metadata !{i32 83, i32 45, metadata !1265, null}
!1292 = metadata !{i32 786689, metadata !1265, metadata !"datac", null, i32 83, metadata !1288, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1293 = metadata !{i32 83, i32 66, metadata !1265, null}
!1294 = metadata !{i32 786689, metadata !1265, metadata !"datag", null, i32 84, metadata !1288, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1295 = metadata !{i32 84, i32 8, metadata !1265, null}
!1296 = metadata !{i32 786689, metadata !1265, metadata !"datat", null, i32 84, metadata !1288, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1297 = metadata !{i32 84, i32 29, metadata !1265, null}
!1298 = metadata !{i32 65, i32 6, metadata !1299, metadata !1284}
!1299 = metadata !{i32 786443, metadata !1300, i32 65, i32 2, metadata !1266, i32 12} ; [ DW_TAG_lexical_block ]
!1300 = metadata !{i32 786443, metadata !1281, i32 62, i32 26, metadata !1266, i32 11} ; [ DW_TAG_lexical_block ]
!1301 = metadata !{i32 786689, metadata !1302, metadata !"index", metadata !1266, i32 33554505, metadata !1270, i32 0, metadata !1305} ; [ DW_TAG_arg_variable ]
!1302 = metadata !{i32 786478, i32 0, metadata !1266, metadata !"mypower", metadata !"mypower", metadata !"", metadata !1266, i32 73, metadata !1303, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !1275, i32 73} ; [ DW_TAG_subprogram ]
!1303 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1304, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1304 = metadata !{metadata !1270, metadata !1270, metadata !1270}
!1305 = metadata !{i32 66, i32 11, metadata !1306, metadata !1284}
!1306 = metadata !{i32 786443, metadata !1299, i32 65, i32 17, metadata !1266, i32 13} ; [ DW_TAG_lexical_block ]
!1307 = metadata !{i32 73, i32 27, metadata !1302, metadata !1305}
!1308 = metadata !{i32 65, i32 13, metadata !1299, metadata !1284}
!1309 = metadata !{i32 76, i32 6, metadata !1310, metadata !1305}
!1310 = metadata !{i32 786443, metadata !1311, i32 76, i32 2, metadata !1266, i32 15} ; [ DW_TAG_lexical_block ]
!1311 = metadata !{i32 786443, metadata !1302, i32 73, i32 33, metadata !1266, i32 14} ; [ DW_TAG_lexical_block ]
!1312 = metadata !{i32 76, i32 20, metadata !1310, metadata !1305}
!1313 = metadata !{i32 77, i32 3, metadata !1314, metadata !1305}
!1314 = metadata !{i32 786443, metadata !1310, i32 76, i32 24, metadata !1266, i32 16} ; [ DW_TAG_lexical_block ]
!1315 = metadata !{i32 786688, metadata !1311, metadata !"result", metadata !1266, i32 75, metadata !1270, i32 0, metadata !1305} ; [ DW_TAG_auto_variable ]
!1316 = metadata !{i32 786688, metadata !1311, metadata !"i", metadata !1266, i32 74, metadata !1270, i32 0, metadata !1305} ; [ DW_TAG_auto_variable ]
!1317 = metadata !{i32 786688, metadata !1300, metadata !"deSize", metadata !1266, i32 64, metadata !1270, i32 0, metadata !1284} ; [ DW_TAG_auto_variable ]
!1318 = metadata !{i32 67, i32 3, metadata !1306, metadata !1284}
!1319 = metadata !{i32 95, i32 14, metadata !1285, null}
!1320 = metadata !{i32 786688, metadata !1300, metadata !"i", metadata !1266, i32 63, metadata !1270, i32 0, metadata !1284} ; [ DW_TAG_auto_variable ]
!1321 = metadata !{i32 786689, metadata !1302, metadata !"index", metadata !1266, i32 33554505, metadata !1270, i32 0, metadata !1322} ; [ DW_TAG_arg_variable ]
!1322 = metadata !{i32 97, i32 14, metadata !1323, null}
!1323 = metadata !{i32 786443, metadata !1324, i32 96, i32 25, metadata !1266, i32 19} ; [ DW_TAG_lexical_block ]
!1324 = metadata !{i32 786443, metadata !1285, i32 96, i32 2, metadata !1266, i32 18} ; [ DW_TAG_lexical_block ]
!1325 = metadata !{i32 73, i32 27, metadata !1302, metadata !1322}
!1326 = metadata !{i32 786688, metadata !1285, metadata !"k", metadata !1266, i32 95, metadata !1270, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1327 = metadata !{i32 96, i32 6, metadata !1324, null}
!1328 = metadata !{i32 174, i32 1, metadata !1285, null}
!1329 = metadata !{i32 76, i32 6, metadata !1310, metadata !1322}
!1330 = metadata !{i32 76, i32 20, metadata !1310, metadata !1322}
!1331 = metadata !{i32 77, i32 3, metadata !1314, metadata !1322}
!1332 = metadata !{i32 786688, metadata !1311, metadata !"result", metadata !1266, i32 75, metadata !1270, i32 0, metadata !1322} ; [ DW_TAG_auto_variable ]
!1333 = metadata !{i32 786688, metadata !1311, metadata !"i", metadata !1266, i32 74, metadata !1270, i32 0, metadata !1322} ; [ DW_TAG_auto_variable ]
!1334 = metadata !{i32 786688, metadata !1323, metadata !"left", metadata !1266, i32 97, metadata !1270, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1335 = metadata !{i32 786688, metadata !1323, metadata !"right", metadata !1266, i32 98, metadata !1270, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1336 = metadata !{i32 98, i32 14, metadata !1323, null}
!1337 = metadata !{i32 786688, metadata !1323, metadata !"leaves", metadata !1266, i32 99, metadata !1270, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1338 = metadata !{i32 99, i32 16, metadata !1323, null}
!1339 = metadata !{i32 100, i32 3, metadata !1340, null}
!1340 = metadata !{i32 786443, metadata !1323, i32 100, i32 3, metadata !1266, i32 20} ; [ DW_TAG_lexical_block ]
!1341 = metadata !{i32 104, i32 66, metadata !1342, null}
!1342 = metadata !{i32 786443, metadata !1343, i32 102, i32 27, metadata !1266, i32 23} ; [ DW_TAG_lexical_block ]
!1343 = metadata !{i32 786443, metadata !1344, i32 102, i32 4, metadata !1266, i32 22} ; [ DW_TAG_lexical_block ]
!1344 = metadata !{i32 786443, metadata !1340, i32 100, i32 36, metadata !1266, i32 21} ; [ DW_TAG_lexical_block ]
!1345 = metadata !{i32 113, i32 68, metadata !1342, null}
!1346 = metadata !{i32 120, i32 22, metadata !1342, null}
!1347 = metadata !{i32 121, i32 5, metadata !1342, null}
!1348 = metadata !{i32 102, i32 8, metadata !1343, null}
!1349 = metadata !{i32 102, i32 23, metadata !1343, null}
!1350 = metadata !{i32 122, i32 5, metadata !1342, null}
!1351 = metadata !{i32 123, i32 5, metadata !1342, null}
!1352 = metadata !{i32 124, i32 5, metadata !1342, null}
!1353 = metadata !{i32 786688, metadata !1342, metadata !"lefta", metadata !1266, i32 103, metadata !1269, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1354 = metadata !{i32 106, i32 66, metadata !1342, null}
!1355 = metadata !{i32 786688, metadata !1342, metadata !"leftc", metadata !1266, i32 105, metadata !1269, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1356 = metadata !{i32 108, i32 66, metadata !1342, null}
!1357 = metadata !{i32 786688, metadata !1342, metadata !"leftg", metadata !1266, i32 107, metadata !1269, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1358 = metadata !{i32 110, i32 66, metadata !1342, null}
!1359 = metadata !{i32 786688, metadata !1342, metadata !"leftt", metadata !1266, i32 109, metadata !1269, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1360 = metadata !{i32 786688, metadata !1342, metadata !"righta", metadata !1266, i32 112, metadata !1269, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1361 = metadata !{i32 115, i32 68, metadata !1342, null}
!1362 = metadata !{i32 786688, metadata !1342, metadata !"rightc", metadata !1266, i32 114, metadata !1269, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1363 = metadata !{i32 117, i32 68, metadata !1342, null}
!1364 = metadata !{i32 786688, metadata !1342, metadata !"rightg", metadata !1266, i32 116, metadata !1269, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1365 = metadata !{i32 119, i32 68, metadata !1342, null}
!1366 = metadata !{i32 786688, metadata !1342, metadata !"rightt", metadata !1266, i32 118, metadata !1269, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1367 = metadata !{i32 786688, metadata !1342, metadata !"parent", metadata !1266, i32 120, metadata !1270, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1368 = metadata !{i32 786688, metadata !1344, metadata !"y", metadata !1266, i32 101, metadata !1270, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1369 = metadata !{i32 128, i32 4, metadata !1344, null}
!1370 = metadata !{i32 129, i32 4, metadata !1344, null}
!1371 = metadata !{i32 100, i32 20, metadata !1340, null}
