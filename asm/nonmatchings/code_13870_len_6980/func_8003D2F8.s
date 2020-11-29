.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8003D2F8
/* 186F8 8003D2F8 27BDFFC8 */  addiu     $sp, $sp, -0x38
/* 186FC 8003D2FC AFB00028 */  sw        $s0, 0x28($sp)
/* 18700 8003D300 0080802D */  daddu     $s0, $a0, $zero
/* 18704 8003D304 AFBF002C */  sw        $ra, 0x2c($sp)
/* 18708 8003D308 F7B40030 */  sdc1      $f20, 0x30($sp)
/* 1870C 8003D30C 8E020000 */  lw        $v0, ($s0)
/* 18710 8003D310 3C030400 */  lui       $v1, 0x400
/* 18714 8003D314 00431024 */  and       $v0, $v0, $v1
/* 18718 8003D318 10400005 */  beqz      $v0, .L8003D330
/* 1871C 8003D31C 00000000 */   nop      
/* 18720 8003D320 0C044181 */  jal       get_shadow_by_index
/* 18724 8003D324 8E040078 */   lw       $a0, 0x78($s0)
/* 18728 8003D328 0800F4CD */  j         .L8003D334
/* 1872C 8003D32C C4400014 */   lwc1     $f0, 0x14($v0)
.L8003D330:
/* 18730 8003D330 C600003C */  lwc1      $f0, 0x3c($s0)
.L8003D334:
/* 18734 8003D334 3C014150 */  lui       $at, 0x4150
/* 18738 8003D338 44811000 */  mtc1      $at, $f2
/* 1873C 8003D33C 00000000 */  nop       
/* 18740 8003D340 46020000 */  add.s     $f0, $f0, $f2
/* 18744 8003D344 E7A0001C */  swc1      $f0, 0x1c($sp)
/* 18748 8003D348 3C040003 */  lui       $a0, 3
/* 1874C 8003D34C 34848000 */  ori       $a0, $a0, 0x8000
/* 18750 8003D350 27A20024 */  addiu     $v0, $sp, 0x24
/* 18754 8003D354 27A50018 */  addiu     $a1, $sp, 0x18
/* 18758 8003D358 27A6001C */  addiu     $a2, $sp, 0x1c
/* 1875C 8003D35C 3C014180 */  lui       $at, 0x4180
/* 18760 8003D360 4481A000 */  mtc1      $at, $f20
/* 18764 8003D364 C6000038 */  lwc1      $f0, 0x38($s0)
/* 18768 8003D368 C6020040 */  lwc1      $f2, 0x40($s0)
/* 1876C 8003D36C 27A70020 */  addiu     $a3, $sp, 0x20
/* 18770 8003D370 E7B40024 */  swc1      $f20, 0x24($sp)
/* 18774 8003D374 E7A00018 */  swc1      $f0, 0x18($sp)
/* 18778 8003D378 E7A20020 */  swc1      $f2, 0x20($sp)
/* 1877C 8003D37C 0C0372DF */  jal       func_800DCB7C
/* 18780 8003D380 AFA20010 */   sw       $v0, 0x10($sp)
/* 18784 8003D384 10400008 */  beqz      $v0, .L8003D3A8
/* 18788 8003D388 0000102D */   daddu    $v0, $zero, $zero
/* 1878C 8003D38C C7A00024 */  lwc1      $f0, 0x24($sp)
/* 18790 8003D390 4614003E */  c.le.s    $f0, $f20
/* 18794 8003D394 00000000 */  nop       
/* 18798 8003D398 45000003 */  bc1f      .L8003D3A8
/* 1879C 8003D39C 00000000 */   nop      
/* 187A0 8003D3A0 3C028011 */  lui       $v0, %hi(D_8010C978)
/* 187A4 8003D3A4 8C42C978 */  lw        $v0, %lo(D_8010C978)($v0)
.L8003D3A8:
/* 187A8 8003D3A8 8FBF002C */  lw        $ra, 0x2c($sp)
/* 187AC 8003D3AC 8FB00028 */  lw        $s0, 0x28($sp)
/* 187B0 8003D3B0 D7B40030 */  ldc1      $f20, 0x30($sp)
/* 187B4 8003D3B4 03E00008 */  jr        $ra
/* 187B8 8003D3B8 27BD0038 */   addiu    $sp, $sp, 0x38
