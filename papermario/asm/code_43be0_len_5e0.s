
.section .text800687E0, "ax"

osPfsReadWriteFile:
/* 043BE0 800687E0 27BDFEA0 */  addiu $sp, $sp, -0x160
/* 043BE4 800687E4 AFB60158 */  sw    $s6, 0x158($sp)
/* 043BE8 800687E8 8FB60170 */  lw    $s6, 0x170($sp)
/* 043BEC 800687EC AFB00140 */  sw    $s0, 0x140($sp)
/* 043BF0 800687F0 00808021 */  addu  $s0, $a0, $zero
/* 043BF4 800687F4 AFB50154 */  sw    $s5, 0x154($sp)
/* 043BF8 800687F8 00A0A821 */  addu  $s5, $a1, $zero
/* 043BFC 800687FC AFB10144 */  sw    $s1, 0x144($sp)
/* 043C00 80068800 00E08821 */  addu  $s1, $a3, $zero
/* 043C04 80068804 AFBF015C */  sw    $ra, 0x15c($sp)
/* 043C08 80068808 AFB40150 */  sw    $s4, 0x150($sp)
/* 043C0C 8006880C AFB3014C */  sw    $s3, 0x14c($sp)
/* 043C10 80068810 AFB20148 */  sw    $s2, 0x148($sp)
/* 043C14 80068814 8E020050 */  lw    $v0, 0x50($s0)
/* 043C18 80068818 00151FC2 */  srl   $v1, $s5, 0x1f
/* 043C1C 8006881C 02A2102A */  slt   $v0, $s5, $v0
/* 043C20 80068820 38420001 */  xori  $v0, $v0, 1
/* 043C24 80068824 00431025 */  or    $v0, $v0, $v1
/* 043C28 80068828 1440003F */  bnez  $v0, .L80068928
/* 043C2C 8006882C 00C0A021 */   addu  $s4, $a2, $zero
/* 043C30 80068830 1AC0003D */  blez  $s6, .L80068928
/* 043C34 80068834 32C2001F */   andi  $v0, $s6, 0x1f
/* 043C38 80068838 544000EF */  bnezl $v0, .L80068BF8
/* 043C3C 8006883C 24020005 */   addiu $v0, $zero, 5
/* 043C40 80068840 06200039 */  bltz  $s1, .L80068928
/* 043C44 80068844 3222001F */   andi  $v0, $s1, 0x1f
/* 043C48 80068848 144000EB */  bnez  $v0, .L80068BF8
/* 043C4C 8006884C 24020005 */   addiu $v0, $zero, 5
/* 043C50 80068850 8E020000 */  lw    $v0, ($s0)
/* 043C54 80068854 30420001 */  andi  $v0, $v0, 1
/* 043C58 80068858 104000E7 */  beqz  $v0, .L80068BF8
/* 043C5C 8006885C 24020005 */   addiu $v0, $zero, 5
/* 043C60 80068860 0C01A775 */  jal   osCheckId
/* 043C64 80068864 02002021 */   addu  $a0, $s0, $zero
/* 043C68 80068868 24030002 */  addiu $v1, $zero, 2
/* 043C6C 8006886C 104300E2 */  beq   $v0, $v1, .L80068BF8
/* 043C70 80068870 24020002 */   addiu $v0, $zero, 2
/* 043C74 80068874 92020065 */  lbu   $v0, 0x65($s0)
/* 043C78 80068878 10400006 */  beqz  $v0, .L80068894
/* 043C7C 8006887C 02002021 */   addu  $a0, $s0, $zero
/* 043C80 80068880 0C01A5B4 */  jal   osPfsSelectBank
/* 043C84 80068884 00002821 */   addu  $a1, $zero, $zero
/* 043C88 80068888 00401821 */  addu  $v1, $v0, $zero
/* 043C8C 8006888C 146000DA */  bnez  $v1, .L80068BF8
/* 043C90 80068890 00000000 */   nop   
.L80068894:
/* 043C94 80068894 8E040004 */  lw    $a0, 4($s0)
/* 043C98 80068898 8E06005C */  lw    $a2, 0x5c($s0)
/* 043C9C 8006889C 8E050008 */  lw    $a1, 8($s0)
/* 043CA0 800688A0 27A70018 */  addiu $a3, $sp, 0x18
/* 043CA4 800688A4 00D53021 */  addu  $a2, $a2, $s5
/* 043CA8 800688A8 0C01A874 */  jal   osContRamRead
/* 043CAC 800688AC 30C6FFFF */   andi  $a2, $a2, 0xffff
/* 043CB0 800688B0 00401821 */  addu  $v1, $v0, $zero
/* 043CB4 800688B4 146000D0 */  bnez  $v1, .L80068BF8
/* 043CB8 800688B8 00000000 */   nop   
/* 043CBC 800688BC 97A2001C */  lhu   $v0, 0x1c($sp)
/* 043CC0 800688C0 104000CD */  beqz  $v0, .L80068BF8
/* 043CC4 800688C4 24020005 */   addiu $v0, $zero, 5
/* 043CC8 800688C8 8FA20018 */  lw    $v0, 0x18($sp)
/* 043CCC 800688CC 104000CA */  beqz  $v0, .L80068BF8
/* 043CD0 800688D0 24020005 */   addiu $v0, $zero, 5
/* 043CD4 800688D4 97A2001E */  lhu   $v0, 0x1e($sp)
/* 043CD8 800688D8 8E030060 */  lw    $v1, 0x60($s0)
/* 043CDC 800688DC 0043102A */  slt   $v0, $v0, $v1
/* 043CE0 800688E0 1440000D */  bnez  $v0, .L80068918
/* 043CE4 800688E4 00000000 */   nop   
/* 043CE8 800688E8 93A2001E */  lbu   $v0, 0x1e($sp)
/* 043CEC 800688EC 92030064 */  lbu   $v1, 0x64($s0)
/* 043CF0 800688F0 0043102B */  sltu  $v0, $v0, $v1
/* 043CF4 800688F4 10400008 */  beqz  $v0, .L80068918
/* 043CF8 800688F8 00000000 */   nop   
/* 043CFC 800688FC 93A2001F */  lbu   $v0, 0x1f($sp)
/* 043D00 80068900 2C430001 */  sltiu $v1, $v0, 1
/* 043D04 80068904 2C420080 */  sltiu $v0, $v0, 0x80
/* 043D08 80068908 38420001 */  xori  $v0, $v0, 1
/* 043D0C 8006890C 00621825 */  or    $v1, $v1, $v0
/* 043D10 80068910 50600007 */  beql  $v1, $zero, .L80068930
/* 043D14 80068914 328200FF */   andi  $v0, $s4, 0xff
.L80068918:
/* 043D18 80068918 97A4001E */  lhu   $a0, 0x1e($sp)
/* 043D1C 8006891C 24030001 */  addiu $v1, $zero, 1
/* 043D20 80068920 148300B5 */  bne   $a0, $v1, .L80068BF8
/* 043D24 80068924 24020003 */   addiu $v0, $zero, 3
.L80068928:
/* 043D28 80068928 0801A2FE */  j     func_80068BF8
/* 043D2C 8006892C 24020005 */   addiu $v0, $zero, 5

.L80068930:
/* 043D30 80068930 14400007 */  bnez  $v0, .L80068950
/* 043D34 80068934 240200FF */   addiu $v0, $zero, 0xff
/* 043D38 80068938 93A20020 */  lbu   $v0, 0x20($sp)
/* 043D3C 8006893C 30420002 */  andi  $v0, $v0, 2
/* 043D40 80068940 14400003 */  bnez  $v0, .L80068950
/* 043D44 80068944 240200FF */   addiu $v0, $zero, 0xff
/* 043D48 80068948 0801A2FE */  j     func_80068BF8
/* 043D4C 8006894C 24020006 */   addiu $v0, $zero, 6

.L80068950:
/* 043D50 80068950 02203821 */  addu  $a3, $s1, $zero
/* 043D54 80068954 04E10002 */  bgez  $a3, .L80068960
/* 043D58 80068958 A3A20138 */   sb    $v0, 0x138($sp)
/* 043D5C 8006895C 24E7001F */  addiu $a3, $a3, 0x1f
.L80068960:
/* 043D60 80068960 97A2001E */  lhu   $v0, 0x1e($sp)
/* 043D64 80068964 00078943 */  sra   $s1, $a3, 5
/* 043D68 80068968 A7A2013A */  sh    $v0, 0x13a($sp)
/* 043D6C 8006896C 2A220008 */  slti  $v0, $s1, 8
/* 043D70 80068970 1440002C */  bnez  $v0, .L80068A24
/* 043D74 80068974 02C01021 */   addu  $v0, $s6, $zero
/* 043D78 80068978 27B20038 */  addiu $s2, $sp, 0x38
/* 043D7C 8006897C 24130001 */  addiu $s3, $zero, 1
.L80068980:
/* 043D80 80068980 93A3013A */  lbu   $v1, 0x13a($sp)
/* 043D84 80068984 93A20138 */  lbu   $v0, 0x138($sp)
/* 043D88 80068988 306700FF */  andi  $a3, $v1, 0xff
/* 043D8C 8006898C 10E20007 */  beq   $a3, $v0, .L800689AC
/* 043D90 80068990 02002021 */   addu  $a0, $s0, $zero
/* 043D94 80068994 A3A30138 */  sb    $v1, 0x138($sp)
/* 043D98 80068998 02402821 */  addu  $a1, $s2, $zero
/* 043D9C 8006899C 0C01A7A3 */  jal   osPfsRWInode
/* 043DA0 800689A0 00003021 */   addu  $a2, $zero, $zero
/* 043DA4 800689A4 1440001A */  bnez  $v0, .L80068A10
/* 043DA8 800689A8 00401821 */   addu  $v1, $v0, $zero
.L800689AC:
/* 043DAC 800689AC 93A2013B */  lbu   $v0, 0x13b($sp)
/* 043DB0 800689B0 00021040 */  sll   $v0, $v0, 1
/* 043DB4 800689B4 00521021 */  addu  $v0, $v0, $s2
/* 043DB8 800689B8 94430000 */  lhu   $v1, ($v0)
/* 043DBC 800689BC A7A3013A */  sh    $v1, 0x13a($sp)
/* 043DC0 800689C0 8E020060 */  lw    $v0, 0x60($s0)
/* 043DC4 800689C4 0062182A */  slt   $v1, $v1, $v0
/* 043DC8 800689C8 1460000D */  bnez  $v1, .L80068A00
/* 043DCC 800689CC 00000000 */   nop   
/* 043DD0 800689D0 93A2013A */  lbu   $v0, 0x13a($sp)
/* 043DD4 800689D4 92030064 */  lbu   $v1, 0x64($s0)
/* 043DD8 800689D8 0043102B */  sltu  $v0, $v0, $v1
/* 043DDC 800689DC 10400008 */  beqz  $v0, .L80068A00
/* 043DE0 800689E0 00000000 */   nop   
/* 043DE4 800689E4 93A2013B */  lbu   $v0, 0x13b($sp)
/* 043DE8 800689E8 2C430001 */  sltiu $v1, $v0, 1
/* 043DEC 800689EC 2C420080 */  sltiu $v0, $v0, 0x80
/* 043DF0 800689F0 38420001 */  xori  $v0, $v0, 1
/* 043DF4 800689F4 00621825 */  or    $v1, $v1, $v0
/* 043DF8 800689F8 50600005 */  beql  $v1, $zero, .L80068A10
/* 043DFC 800689FC 00001821 */   addu  $v1, $zero, $zero
.L80068A00:
/* 043E00 80068A00 97A2013A */  lhu   $v0, 0x13a($sp)
/* 043E04 80068A04 14530002 */  bne   $v0, $s3, .L80068A10
/* 043E08 80068A08 24030003 */   addiu $v1, $zero, 3
/* 043E0C 80068A0C 24030005 */  addiu $v1, $zero, 5
.L80068A10:
/* 043E10 80068A10 14600074 */  bnez  $v1, .L80068BE4
/* 043E14 80068A14 2631FFF8 */   addiu $s1, $s1, -8
/* 043E18 80068A18 2A220008 */  slti  $v0, $s1, 8
/* 043E1C 80068A1C 1040FFD8 */  beqz  $v0, .L80068980
/* 043E20 80068A20 02C01021 */   addu  $v0, $s6, $zero
.L80068A24:
/* 043E24 80068A24 04420001 */  bltzl $v0, .L80068A2C
/* 043E28 80068A28 2442001F */   addiu $v0, $v0, 0x1f
.L80068A2C:
/* 043E2C 80068A2C 00029943 */  sra   $s3, $v0, 5
/* 043E30 80068A30 8FB20174 */  lw    $s2, 0x174($sp)
/* 043E34 80068A34 5A60004E */  blezl $s3, .L80068B70
/* 043E38 80068A38 328300FF */   andi  $v1, $s4, 0xff
/* 043E3C 80068A3C 24160001 */  addiu $s6, $zero, 1
.L80068A40:
/* 043E40 80068A40 24020008 */  addiu $v0, $zero, 8
/* 043E44 80068A44 16220028 */  bne   $s1, $v0, .L80068AE8
/* 043E48 80068A48 00000000 */   nop   
/* 043E4C 80068A4C 93A3013A */  lbu   $v1, 0x13a($sp)
/* 043E50 80068A50 93A20138 */  lbu   $v0, 0x138($sp)
/* 043E54 80068A54 306700FF */  andi  $a3, $v1, 0xff
/* 043E58 80068A58 10E20008 */  beq   $a3, $v0, .L80068A7C
/* 043E5C 80068A5C 27B10038 */   addiu $s1, $sp, 0x38
/* 043E60 80068A60 A3A30138 */  sb    $v1, 0x138($sp)
/* 043E64 80068A64 02002021 */  addu  $a0, $s0, $zero
/* 043E68 80068A68 02202821 */  addu  $a1, $s1, $zero
/* 043E6C 80068A6C 0C01A7A3 */  jal   osPfsRWInode
/* 043E70 80068A70 00003021 */   addu  $a2, $zero, $zero
/* 043E74 80068A74 1440001A */  bnez  $v0, .L80068AE0
/* 043E78 80068A78 00401821 */   addu  $v1, $v0, $zero
.L80068A7C:
/* 043E7C 80068A7C 93A2013B */  lbu   $v0, 0x13b($sp)
/* 043E80 80068A80 00021040 */  sll   $v0, $v0, 1
/* 043E84 80068A84 00511021 */  addu  $v0, $v0, $s1
/* 043E88 80068A88 94430000 */  lhu   $v1, ($v0)
/* 043E8C 80068A8C A7A3013A */  sh    $v1, 0x13a($sp)
/* 043E90 80068A90 8E020060 */  lw    $v0, 0x60($s0)
/* 043E94 80068A94 0062182A */  slt   $v1, $v1, $v0
/* 043E98 80068A98 1460000D */  bnez  $v1, .L80068AD0
/* 043E9C 80068A9C 00000000 */   nop   
/* 043EA0 80068AA0 93A2013A */  lbu   $v0, 0x13a($sp)
/* 043EA4 80068AA4 92030064 */  lbu   $v1, 0x64($s0)
/* 043EA8 80068AA8 0043102B */  sltu  $v0, $v0, $v1
/* 043EAC 80068AAC 10400008 */  beqz  $v0, .L80068AD0
/* 043EB0 80068AB0 00000000 */   nop   
/* 043EB4 80068AB4 93A2013B */  lbu   $v0, 0x13b($sp)
/* 043EB8 80068AB8 2C430001 */  sltiu $v1, $v0, 1
/* 043EBC 80068ABC 2C420080 */  sltiu $v0, $v0, 0x80
/* 043EC0 80068AC0 38420001 */  xori  $v0, $v0, 1
/* 043EC4 80068AC4 00621825 */  or    $v1, $v1, $v0
/* 043EC8 80068AC8 50600005 */  beql  $v1, $zero, .L80068AE0
/* 043ECC 80068ACC 00001821 */   addu  $v1, $zero, $zero
.L80068AD0:
/* 043ED0 80068AD0 97A2013A */  lhu   $v0, 0x13a($sp)
/* 043ED4 80068AD4 14560002 */  bne   $v0, $s6, .L80068AE0
/* 043ED8 80068AD8 24030003 */   addiu $v1, $zero, 3
/* 043EDC 80068ADC 24030005 */  addiu $v1, $zero, 5
.L80068AE0:
/* 043EE0 80068AE0 14600040 */  bnez  $v1, .L80068BE4
/* 043EE4 80068AE4 00008821 */   addu  $s1, $zero, $zero
.L80068AE8:
/* 043EE8 80068AE8 92020065 */  lbu   $v0, 0x65($s0)
/* 043EEC 80068AEC 93A5013A */  lbu   $a1, 0x13a($sp)
/* 043EF0 80068AF0 10450006 */  beq   $v0, $a1, .L80068B0C
/* 043EF4 80068AF4 00000000 */   nop   
/* 043EF8 80068AF8 0C01A5B4 */  jal   osPfsSelectBank
/* 043EFC 80068AFC 02002021 */   addu  $a0, $s0, $zero
/* 043F00 80068B00 00401821 */  addu  $v1, $v0, $zero
/* 043F04 80068B04 1460003C */  bnez  $v1, .L80068BF8
/* 043F08 80068B08 00601021 */   addu  $v0, $v1, $zero
.L80068B0C:
/* 043F0C 80068B0C 93A2013B */  lbu   $v0, 0x13b($sp)
/* 043F10 80068B10 000210C0 */  sll   $v0, $v0, 3
/* 043F14 80068B14 00513021 */  addu  $a2, $v0, $s1
/* 043F18 80068B18 328200FF */  andi  $v0, $s4, 0xff
/* 043F1C 80068B1C 54400008 */  bnezl $v0, .L80068B40
/* 043F20 80068B20 AFA00010 */   sw    $zero, 0x10($sp)
/* 043F24 80068B24 8E040004 */  lw    $a0, 4($s0)
/* 043F28 80068B28 8E050008 */  lw    $a1, 8($s0)
/* 043F2C 80068B2C 30C6FFFF */  andi  $a2, $a2, 0xffff
/* 043F30 80068B30 0C01A874 */  jal   osContRamRead
/* 043F34 80068B34 02403821 */   addu  $a3, $s2, $zero
/* 043F38 80068B38 0801A2D6 */  j     func_80068B58
/* 043F3C 80068B3C 00401821 */   addu  $v1, $v0, $zero

.L80068B40:
/* 043F40 80068B40 8E040004 */  lw    $a0, 4($s0)
/* 043F44 80068B44 8E050008 */  lw    $a1, 8($s0)
/* 043F48 80068B48 30C6FFFF */  andi  $a2, $a2, 0xffff
/* 043F4C 80068B4C 0C01A8F0 */  jal   osContRamWrite
/* 043F50 80068B50 02403821 */   addu  $a3, $s2, $zero
/* 043F54 80068B54 00401821 */  addu  $v1, $v0, $zero
func_80068B58:
/* 043F58 80068B58 14600022 */  bnez  $v1, .L80068BE4
/* 043F5C 80068B5C 26520020 */   addiu $s2, $s2, 0x20
/* 043F60 80068B60 2673FFFF */  addiu $s3, $s3, -1
/* 043F64 80068B64 1E60FFB6 */  bgtz  $s3, .L80068A40
/* 043F68 80068B68 26310001 */   addiu $s1, $s1, 1
/* 043F6C 80068B6C 328300FF */  andi  $v1, $s4, 0xff
.L80068B70:
/* 043F70 80068B70 24020001 */  addiu $v0, $zero, 1
/* 043F74 80068B74 1462001D */  bne   $v1, $v0, .L80068BEC
/* 043F78 80068B78 00000000 */   nop   
/* 043F7C 80068B7C 93A30020 */  lbu   $v1, 0x20($sp)
/* 043F80 80068B80 30620002 */  andi  $v0, $v1, 2
/* 043F84 80068B84 14400019 */  bnez  $v0, .L80068BEC
/* 043F88 80068B88 34620002 */   ori   $v0, $v1, 2
/* 043F8C 80068B8C A3A20020 */  sb    $v0, 0x20($sp)
/* 043F90 80068B90 92020065 */  lbu   $v0, 0x65($s0)
/* 043F94 80068B94 10400006 */  beqz  $v0, .L80068BB0
/* 043F98 80068B98 02002021 */   addu  $a0, $s0, $zero
/* 043F9C 80068B9C 0C01A5B4 */  jal   osPfsSelectBank
/* 043FA0 80068BA0 00002821 */   addu  $a1, $zero, $zero
/* 043FA4 80068BA4 00401821 */  addu  $v1, $v0, $zero
/* 043FA8 80068BA8 14600013 */  bnez  $v1, .L80068BF8
/* 043FAC 80068BAC 00000000 */   nop   
.L80068BB0:
/* 043FB0 80068BB0 8E06005C */  lw    $a2, 0x5c($s0)
/* 043FB4 80068BB4 AFA00010 */  sw    $zero, 0x10($sp)
/* 043FB8 80068BB8 8E040004 */  lw    $a0, 4($s0)
/* 043FBC 80068BBC 8E050008 */  lw    $a1, 8($s0)
/* 043FC0 80068BC0 27A70018 */  addiu $a3, $sp, 0x18
/* 043FC4 80068BC4 00D53021 */  addu  $a2, $a2, $s5
/* 043FC8 80068BC8 0C01A8F0 */  jal   osContRamWrite
/* 043FCC 80068BCC 30C6FFFF */   andi  $a2, $a2, 0xffff
/* 043FD0 80068BD0 00401821 */  addu  $v1, $v0, $zero
/* 043FD4 80068BD4 10600005 */  beqz  $v1, .L80068BEC
/* 043FD8 80068BD8 00000000 */   nop   
/* 043FDC 80068BDC 0801A2FE */  j     func_80068BF8
/* 043FE0 80068BE0 00000000 */   nop   

.L80068BE4:
/* 043FE4 80068BE4 0801A2FE */  j     func_80068BF8
/* 043FE8 80068BE8 00601021 */   addu  $v0, $v1, $zero

.L80068BEC:
/* 043FEC 80068BEC 8E040004 */  lw    $a0, 4($s0)
/* 043FF0 80068BF0 0C01A530 */  jal   osPfsGetStatus
/* 043FF4 80068BF4 8E050008 */   lw    $a1, 8($s0)
func_80068BF8:
.L80068BF8:
/* 043FF8 80068BF8 8FBF015C */  lw    $ra, 0x15c($sp)
/* 043FFC 80068BFC 8FB60158 */  lw    $s6, 0x158($sp)
/* 044000 80068C00 8FB50154 */  lw    $s5, 0x154($sp)
/* 044004 80068C04 8FB40150 */  lw    $s4, 0x150($sp)
/* 044008 80068C08 8FB3014C */  lw    $s3, 0x14c($sp)
/* 04400C 80068C0C 8FB20148 */  lw    $s2, 0x148($sp)
/* 044010 80068C10 8FB10144 */  lw    $s1, 0x144($sp)
/* 044014 80068C14 8FB00140 */  lw    $s0, 0x140($sp)
/* 044018 80068C18 03E00008 */  jr    $ra
/* 04401C 80068C1C 27BD0160 */   addiu $sp, $sp, 0x160

osPfsFileState:
/* 044020 80068C20 27BDFEB0 */  addiu $sp, $sp, -0x150
/* 044024 80068C24 AFB10134 */  sw    $s1, 0x134($sp)
/* 044028 80068C28 00808821 */  addu  $s1, $a0, $zero
/* 04402C 80068C2C AFB00130 */  sw    $s0, 0x130($sp)
/* 044030 80068C30 00A08021 */  addu  $s0, $a1, $zero
/* 044034 80068C34 AFBF0148 */  sw    $ra, 0x148($sp)
/* 044038 80068C38 AFB50144 */  sw    $s5, 0x144($sp)
/* 04403C 80068C3C AFB40140 */  sw    $s4, 0x140($sp)
/* 044040 80068C40 AFB3013C */  sw    $s3, 0x13c($sp)
/* 044044 80068C44 AFB20138 */  sw    $s2, 0x138($sp)
/* 044048 80068C48 8E220050 */  lw    $v0, 0x50($s1)
/* 04404C 80068C4C 00101FC2 */  srl   $v1, $s0, 0x1f
/* 044050 80068C50 0202102A */  slt   $v0, $s0, $v0
/* 044054 80068C54 38420001 */  xori  $v0, $v0, 1
/* 044058 80068C58 00431025 */  or    $v0, $v0, $v1
/* 04405C 80068C5C 1440001F */  bnez  $v0, .L80068CDC
/* 044060 80068C60 00C0A021 */   addu  $s4, $a2, $zero
/* 044064 80068C64 8E220000 */  lw    $v0, ($s1)
/* 044068 80068C68 30420001 */  andi  $v0, $v0, 1
/* 04406C 80068C6C 10400048 */  beqz  $v0, .L80068D90
/* 044070 80068C70 24020005 */   addiu $v0, $zero, 5
/* 044074 80068C74 0C01A775 */  jal   osCheckId
/* 044078 80068C78 02202021 */   addu  $a0, $s1, $zero
/* 04407C 80068C7C 14400044 */  bnez  $v0, .L80068D90
/* 044080 80068C80 00000000 */   nop   
/* 044084 80068C84 92220065 */  lbu   $v0, 0x65($s1)
/* 044088 80068C88 10400005 */  beqz  $v0, .L80068CA0
/* 04408C 80068C8C 02202021 */   addu  $a0, $s1, $zero
/* 044090 80068C90 0C01A5B4 */  jal   osPfsSelectBank
/* 044094 80068C94 00002821 */   addu  $a1, $zero, $zero
/* 044098 80068C98 1440003D */  bnez  $v0, .L80068D90
/* 04409C 80068C9C 00000000 */   nop   
.L80068CA0:
/* 0440A0 80068CA0 8E240004 */  lw    $a0, 4($s1)
/* 0440A4 80068CA4 8E26005C */  lw    $a2, 0x5c($s1)
/* 0440A8 80068CA8 8E250008 */  lw    $a1, 8($s1)
/* 0440AC 80068CAC 27A70110 */  addiu $a3, $sp, 0x110
/* 0440B0 80068CB0 00D03021 */  addu  $a2, $a2, $s0
/* 0440B4 80068CB4 0C01A874 */  jal   osContRamRead
/* 0440B8 80068CB8 30C6FFFF */   andi  $a2, $a2, 0xffff
/* 0440BC 80068CBC 14400034 */  bnez  $v0, .L80068D90
/* 0440C0 80068CC0 00000000 */   nop   
/* 0440C4 80068CC4 97A20114 */  lhu   $v0, 0x114($sp)
/* 0440C8 80068CC8 10400031 */  beqz  $v0, .L80068D90
/* 0440CC 80068CCC 24020005 */   addiu $v0, $zero, 5
/* 0440D0 80068CD0 8FA20110 */  lw    $v0, 0x110($sp)
/* 0440D4 80068CD4 14400003 */  bnez  $v0, .L80068CE4
/* 0440D8 80068CD8 00009821 */   addu  $s3, $zero, $zero
.L80068CDC:
/* 0440DC 80068CDC 0801A364 */  j     func_80068D90
/* 0440E0 80068CE0 24020005 */   addiu $v0, $zero, 5

.L80068CE4:
/* 0440E4 80068CE4 97B00116 */  lhu   $s0, 0x116($sp)
/* 0440E8 80068CE8 241200FF */  addiu $s2, $zero, 0xff
/* 0440EC 80068CEC 27B50010 */  addiu $s5, $sp, 0x10
func_80068CF0:
/* 0440F0 80068CF0 8E220060 */  lw    $v0, 0x60($s1)
/* 0440F4 80068CF4 3203FFFF */  andi  $v1, $s0, 0xffff
/* 0440F8 80068CF8 0062102A */  slt   $v0, $v1, $v0
/* 0440FC 80068CFC 14400010 */  bnez  $v0, .L80068D40
/* 044100 80068D00 00031202 */   srl   $v0, $v1, 8
/* 044104 80068D04 304700FF */  andi  $a3, $v0, 0xff
/* 044108 80068D08 10F20007 */  beq   $a3, $s2, .L80068D28
/* 04410C 80068D0C 02202021 */   addu  $a0, $s1, $zero
/* 044110 80068D10 00409021 */  addu  $s2, $v0, $zero
/* 044114 80068D14 27A50010 */  addiu $a1, $sp, 0x10
/* 044118 80068D18 0C01A7A3 */  jal   osPfsRWInode
/* 04411C 80068D1C 00003021 */   addu  $a2, $zero, $zero
/* 044120 80068D20 1440001B */  bnez  $v0, .L80068D90
/* 044124 80068D24 00000000 */   nop   
.L80068D28:
/* 044128 80068D28 320200FF */  andi  $v0, $s0, 0xff
/* 04412C 80068D2C 00021040 */  sll   $v0, $v0, 1
/* 044130 80068D30 00551021 */  addu  $v0, $v0, $s5
/* 044134 80068D34 94500000 */  lhu   $s0, ($v0)
/* 044138 80068D38 0801A33C */  j     func_80068CF0
/* 04413C 80068D3C 26730001 */   addiu $s3, $s3, 1

.L80068D40:
/* 044140 80068D40 24020001 */  addiu $v0, $zero, 1
/* 044144 80068D44 14620012 */  bne   $v1, $v0, .L80068D90
/* 044148 80068D48 24020003 */   addiu $v0, $zero, 3
/* 04414C 80068D4C 00131200 */  sll   $v0, $s3, 8
/* 044150 80068D50 AE820000 */  sw    $v0, ($s4)
/* 044154 80068D54 97A20114 */  lhu   $v0, 0x114($sp)
/* 044158 80068D58 27A40120 */  addiu $a0, $sp, 0x120
/* 04415C 80068D5C A6820008 */  sh    $v0, 8($s4)
/* 044160 80068D60 8FA20110 */  lw    $v0, 0x110($sp)
/* 044164 80068D64 2685000E */  addiu $a1, $s4, 0xe
/* 044168 80068D68 24060010 */  addiu $a2, $zero, 0x10
/* 04416C 80068D6C 0C019194 */  jal   bcopy
/* 044170 80068D70 AE820004 */   sw    $v0, 4($s4)
/* 044174 80068D74 27A4011C */  addiu $a0, $sp, 0x11c
/* 044178 80068D78 2685000A */  addiu $a1, $s4, 0xa
/* 04417C 80068D7C 0C019194 */  jal   bcopy
/* 044180 80068D80 24060004 */   addiu $a2, $zero, 4
/* 044184 80068D84 8E240004 */  lw    $a0, 4($s1)
/* 044188 80068D88 0C01A530 */  jal   osPfsGetStatus
/* 04418C 80068D8C 8E250008 */   lw    $a1, 8($s1)
func_80068D90:
.L80068D90:
/* 044190 80068D90 8FBF0148 */  lw    $ra, 0x148($sp)
/* 044194 80068D94 8FB50144 */  lw    $s5, 0x144($sp)
/* 044198 80068D98 8FB40140 */  lw    $s4, 0x140($sp)
/* 04419C 80068D9C 8FB3013C */  lw    $s3, 0x13c($sp)
/* 0441A0 80068DA0 8FB20138 */  lw    $s2, 0x138($sp)
/* 0441A4 80068DA4 8FB10134 */  lw    $s1, 0x134($sp)
/* 0441A8 80068DA8 8FB00130 */  lw    $s0, 0x130($sp)
/* 0441AC 80068DAC 03E00008 */  jr    $ra
/* 0441B0 80068DB0 27BD0150 */   addiu $sp, $sp, 0x150

/* 0441B4 80068DB4 00000000 */  nop   
/* 0441B8 80068DB8 00000000 */  nop   
/* 0441BC 80068DBC 00000000 */  nop   