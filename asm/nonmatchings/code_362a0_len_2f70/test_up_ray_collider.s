.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel test_up_ray_collider
/* 386DC 8005D2DC 27BDFFA8 */  addiu     $sp, $sp, -0x58
/* 386E0 8005D2E0 F7B80040 */  sdc1      $f24, 0x40($sp)
/* 386E4 8005D2E4 4486C000 */  mtc1      $a2, $f24
/* 386E8 8005D2E8 F7BA0048 */  sdc1      $f26, 0x48($sp)
/* 386EC 8005D2EC 4487D000 */  mtc1      $a3, $f26
/* 386F0 8005D2F0 C7AC0070 */  lwc1      $f12, 0x70($sp)
/* 386F4 8005D2F4 3C0140C9 */  lui       $at, 0x40c9
/* 386F8 8005D2F8 34210FD0 */  ori       $at, $at, 0xfd0
/* 386FC 8005D2FC 44810000 */  mtc1      $at, $f0
/* 38700 8005D300 F7BC0050 */  sdc1      $f28, 0x50($sp)
/* 38704 8005D304 3C01BF80 */  lui       $at, 0xbf80
/* 38708 8005D308 4481E000 */  mtc1      $at, $f28
/* 3870C 8005D30C AFB1001C */  sw        $s1, 0x1c($sp)
/* 38710 8005D310 0080882D */  daddu     $s1, $a0, $zero
/* 38714 8005D314 AFB00018 */  sw        $s0, 0x18($sp)
/* 38718 8005D318 00A0802D */  daddu     $s0, $a1, $zero
/* 3871C 8005D31C F7B40030 */  sdc1      $f20, 0x30($sp)
/* 38720 8005D320 C7B40068 */  lwc1      $f20, 0x68($sp)
/* 38724 8005D324 27A50010 */  addiu     $a1, $sp, 0x10
/* 38728 8005D328 F7B60038 */  sdc1      $f22, 0x38($sp)
/* 3872C 8005D32C C7B6006C */  lwc1      $f22, 0x6c($sp)
/* 38730 8005D330 46006302 */  mul.s     $f12, $f12, $f0
/* 38734 8005D334 00000000 */  nop       
/* 38738 8005D338 3C0143B4 */  lui       $at, 0x43b4
/* 3873C 8005D33C 44810000 */  mtc1      $at, $f0
/* 38740 8005D340 27A60014 */  addiu     $a2, $sp, 0x14
/* 38744 8005D344 AFBF0028 */  sw        $ra, 0x28($sp)
/* 38748 8005D348 AFB30024 */  sw        $s3, 0x24($sp)
/* 3874C 8005D34C AFB20020 */  sw        $s2, 0x20($sp)
/* 38750 8005D350 0C00A82D */  jal       sin_cos_rad
/* 38754 8005D354 46006303 */   div.s    $f12, $f12, $f0
/* 38758 8005D358 3C13800B */  lui       $s3, %hi(D_800B42E0)
/* 3875C 8005D35C 267342E0 */  addiu     $s3, $s3, %lo(D_800B42E0)
/* 38760 8005D360 001010C0 */  sll       $v0, $s0, 3
/* 38764 8005D364 00501023 */  subu      $v0, $v0, $s0
/* 38768 8005D368 00021080 */  sll       $v0, $v0, 2
/* 3876C 8005D36C 8E630004 */  lw        $v1, 4($s3)
/* 38770 8005D370 C7A00010 */  lwc1      $f0, 0x10($sp)
/* 38774 8005D374 00629021 */  addu      $s2, $v1, $v0
/* 38778 8005D378 8E420000 */  lw        $v0, ($s2)
/* 3877C 8005D37C 3C01800A */  lui       $at, %hi(D_800A4240)
/* 38780 8005D380 AC204240 */  sw        $zero, %lo(D_800A4240)($at)
/* 38784 8005D384 3C01800A */  lui       $at, %hi(D_800A4230)
/* 38788 8005D388 E4384230 */  swc1      $f24, %lo(D_800A4230)($at)
/* 3878C 8005D38C 3C01800A */  lui       $at, %hi(D_800A4234)
/* 38790 8005D390 E43A4234 */  swc1      $f26, %lo(D_800A4234)($at)
/* 38794 8005D394 3C01800A */  lui       $at, %hi(D_800A4238)
/* 38798 8005D398 E4344238 */  swc1      $f20, %lo(D_800A4238)($at)
/* 3879C 8005D39C 3C01800A */  lui       $at, %hi(D_800A4254)
/* 387A0 8005D3A0 E4364254 */  swc1      $f22, %lo(D_800A4254)($at)
/* 387A4 8005D3A4 3C01800A */  lui       $at, %hi(D_800A423C)
/* 387A8 8005D3A8 E420423C */  swc1      $f0, %lo(D_800A423C)($at)
/* 387AC 8005D3AC C7A00014 */  lwc1      $f0, 0x14($sp)
/* 387B0 8005D3B0 00511024 */  and       $v0, $v0, $s1
/* 387B4 8005D3B4 46000007 */  neg.s     $f0, $f0
/* 387B8 8005D3B8 3C01800A */  lui       $at, %hi(D_800A4244)
/* 387BC 8005D3BC E4204244 */  swc1      $f0, %lo(D_800A4244)($at)
/* 387C0 8005D3C0 14400015 */  bnez      $v0, .L8005D418
/* 387C4 8005D3C4 4600E006 */   mov.s    $f0, $f28
/* 387C8 8005D3C8 8642000A */  lh        $v0, 0xa($s2)
/* 387CC 8005D3CC 10400012 */  beqz      $v0, .L8005D418
/* 387D0 8005D3D0 00000000 */   nop      
/* 387D4 8005D3D4 8E51000C */  lw        $s1, 0xc($s2)
/* 387D8 8005D3D8 1840000F */  blez      $v0, .L8005D418
/* 387DC 8005D3DC 0000802D */   daddu    $s0, $zero, $zero
/* 387E0 8005D3E0 0220202D */  daddu     $a0, $s1, $zero
.L8005D3E4:
/* 387E4 8005D3E4 8E650000 */  lw        $a1, ($s3)
/* 387E8 8005D3E8 0C0171E9 */  jal       test_up_ray_triangle
/* 387EC 8005D3EC 26310040 */   addiu    $s1, $s1, 0x40
/* 387F0 8005D3F0 10400003 */  beqz      $v0, .L8005D400
/* 387F4 8005D3F4 00000000 */   nop      
/* 387F8 8005D3F8 3C01800A */  lui       $at, %hi(D_800A4254)
/* 387FC 8005D3FC C43C4254 */  lwc1      $f28, %lo(D_800A4254)($at)
.L8005D400:
/* 38800 8005D400 8642000A */  lh        $v0, 0xa($s2)
/* 38804 8005D404 26100001 */  addiu     $s0, $s0, 1
/* 38808 8005D408 0202102A */  slt       $v0, $s0, $v0
/* 3880C 8005D40C 1440FFF5 */  bnez      $v0, .L8005D3E4
/* 38810 8005D410 0220202D */   daddu    $a0, $s1, $zero
/* 38814 8005D414 4600E006 */  mov.s     $f0, $f28
.L8005D418:
/* 38818 8005D418 8FBF0028 */  lw        $ra, 0x28($sp)
/* 3881C 8005D41C 8FB30024 */  lw        $s3, 0x24($sp)
/* 38820 8005D420 8FB20020 */  lw        $s2, 0x20($sp)
/* 38824 8005D424 8FB1001C */  lw        $s1, 0x1c($sp)
/* 38828 8005D428 8FB00018 */  lw        $s0, 0x18($sp)
/* 3882C 8005D42C D7BC0050 */  ldc1      $f28, 0x50($sp)
/* 38830 8005D430 D7BA0048 */  ldc1      $f26, 0x48($sp)
/* 38834 8005D434 D7B80040 */  ldc1      $f24, 0x40($sp)
/* 38838 8005D438 D7B60038 */  ldc1      $f22, 0x38($sp)
/* 3883C 8005D43C D7B40030 */  ldc1      $f20, 0x30($sp)
/* 38840 8005D440 03E00008 */  jr        $ra
/* 38844 8005D444 27BD0058 */   addiu    $sp, $sp, 0x58
