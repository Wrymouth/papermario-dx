.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_E0020468
/* 334328 E0020468 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 33432C E002046C AFB20018 */  sw        $s2, 0x18($sp)
/* 334330 E0020470 0080902D */  daddu     $s2, $a0, $zero
/* 334334 E0020474 AFBF001C */  sw        $ra, 0x1c($sp)
/* 334338 E0020478 AFB10014 */  sw        $s1, 0x14($sp)
/* 33433C E002047C AFB00010 */  sw        $s0, 0x10($sp)
/* 334340 E0020480 8E51000C */  lw        $s1, 0xc($s2)
/* 334344 E0020484 8E220030 */  lw        $v0, 0x30($s1)
/* 334348 E0020488 8E230034 */  lw        $v1, 0x34($s1)
/* 33434C E002048C 00021080 */  sll       $v0, $v0, 2
/* 334350 E0020490 3C01E002 */  lui       $at, 0xe002
/* 334354 E0020494 00220821 */  addu      $at, $at, $v0
/* 334358 E0020498 8C220D80 */  lw        $v0, 0xd80($at)
/* 33435C E002049C 8E250000 */  lw        $a1, ($s1)
/* 334360 E00204A0 00431021 */  addu      $v0, $v0, $v1
/* 334364 E00204A4 80440000 */  lb        $a0, ($v0)
/* 334368 E00204A8 24630001 */  addiu     $v1, $v1, 1
/* 33436C E00204AC AE230034 */  sw        $v1, 0x34($s1)
/* 334370 E00204B0 3C03E002 */  lui       $v1, 0xe002
/* 334374 E00204B4 24630D80 */  addiu     $v1, $v1, 0xd80
/* 334378 E00204B8 0481000E */  bgez      $a0, .LE00204F4
/* 33437C E00204BC AE240038 */   sw       $a0, 0x38($s1)
/* 334380 E00204C0 2402FFFF */  addiu     $v0, $zero, -1
/* 334384 E00204C4 10820013 */  beq       $a0, $v0, .LE0020514
/* 334388 E00204C8 00041023 */   negu     $v0, $a0
/* 33438C E00204CC 2442FFF6 */  addiu     $v0, $v0, -0xa
/* 334390 E00204D0 AE220030 */  sw        $v0, 0x30($s1)
/* 334394 E00204D4 00021080 */  sll       $v0, $v0, 2
/* 334398 E00204D8 00431021 */  addu      $v0, $v0, $v1
/* 33439C E00204DC AE200034 */  sw        $zero, 0x34($s1)
/* 3343A0 E00204E0 8C420000 */  lw        $v0, ($v0)
/* 3343A4 E00204E4 80430000 */  lb        $v1, ($v0)
/* 3343A8 E00204E8 24020001 */  addiu     $v0, $zero, 1
/* 3343AC E00204EC AE220034 */  sw        $v0, 0x34($s1)
/* 3343B0 E00204F0 AE230038 */  sw        $v1, 0x38($s1)
.LE00204F4:
/* 3343B4 E00204F4 8E23002C */  lw        $v1, 0x2c($s1)
/* 3343B8 E00204F8 28622710 */  slti      $v0, $v1, 0x2710
/* 3343BC E00204FC 10400002 */  beqz      $v0, .LE0020508
/* 3343C0 E0020500 2462FFFF */   addiu    $v0, $v1, -1
/* 3343C4 E0020504 AE22002C */  sw        $v0, 0x2c($s1)
.LE0020508:
/* 3343C8 E0020508 8E22002C */  lw        $v0, 0x2c($s1)
/* 3343CC E002050C 04410005 */  bgez      $v0, .LE0020524
/* 3343D0 E0020510 00000000 */   nop      
.LE0020514:
/* 3343D4 E0020514 0C080128 */  jal       func_E02004A0
/* 3343D8 E0020518 0240202D */   daddu    $a0, $s2, $zero
/* 3343DC E002051C 0800815D */  j         .LE0020574
/* 3343E0 E0020520 00000000 */   nop      
.LE0020524:
/* 3343E4 E0020524 8E22003C */  lw        $v0, 0x3c($s1)
/* 3343E8 E0020528 10400012 */  beqz      $v0, .LE0020574
/* 3343EC E002052C 24020001 */   addiu    $v0, $zero, 1
/* 3343F0 E0020530 14A2000E */  bne       $a1, $v0, .LE002056C
/* 3343F4 E0020534 0220202D */   daddu    $a0, $s1, $zero
/* 3343F8 E0020538 8E420008 */  lw        $v0, 8($s2)
/* 3343FC E002053C 1840000D */  blez      $v0, .LE0020574
/* 334400 E0020540 0000802D */   daddu    $s0, $zero, $zero
.LE0020544:
/* 334404 E0020544 0220202D */  daddu     $a0, $s1, $zero
/* 334408 E0020548 0C008000 */  jal       func_E0020000
/* 33440C E002054C 0200282D */   daddu    $a1, $s0, $zero
/* 334410 E0020550 26100001 */  addiu     $s0, $s0, 1
/* 334414 E0020554 8E420008 */  lw        $v0, 8($s2)
/* 334418 E0020558 0202102A */  slt       $v0, $s0, $v0
/* 33441C E002055C 1440FFF9 */  bnez      $v0, .LE0020544
/* 334420 E0020560 26310040 */   addiu    $s1, $s1, 0x40
/* 334424 E0020564 0800815D */  j         .LE0020574
/* 334428 E0020568 00000000 */   nop      
.LE002056C:
/* 33442C E002056C 0C008000 */  jal       func_E0020000
/* 334430 E0020570 24050001 */   addiu    $a1, $zero, 1
.LE0020574:
/* 334434 E0020574 8FBF001C */  lw        $ra, 0x1c($sp)
/* 334438 E0020578 8FB20018 */  lw        $s2, 0x18($sp)
/* 33443C E002057C 8FB10014 */  lw        $s1, 0x14($sp)
/* 334440 E0020580 8FB00010 */  lw        $s0, 0x10($sp)
/* 334444 E0020584 03E00008 */  jr        $ra
/* 334448 E0020588 27BD0020 */   addiu    $sp, $sp, 0x20
