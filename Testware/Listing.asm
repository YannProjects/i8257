                    di                                      ;[0000] f3
                    ld      sp,$4ff0                        ;[0001] 31 f0 4f
                    call    $007f                           ;[0004] cd 7f 00
                    jp      $0068                           ;[0007] c3 68 00
                    nop                                     ;[000a] 00
                    nop                                     ;[000b] 00
                    nop                                     ;[000c] 00
                    nop                                     ;[000d] 00
                    nop                                     ;[000e] 00
                    nop                                     ;[000f] 00
                    nop                                     ;[0010] 00
                    nop                                     ;[0011] 00
                    nop                                     ;[0012] 00
                    nop                                     ;[0013] 00
                    nop                                     ;[0014] 00
                    nop                                     ;[0015] 00
                    nop                                     ;[0016] 00
                    nop                                     ;[0017] 00
                    nop                                     ;[0018] 00
                    nop                                     ;[0019] 00
                    nop                                     ;[001a] 00
                    nop                                     ;[001b] 00
                    nop                                     ;[001c] 00
                    nop                                     ;[001d] 00
                    nop                                     ;[001e] 00
                    nop                                     ;[001f] 00
                    nop                                     ;[0020] 00
                    nop                                     ;[0021] 00
                    nop                                     ;[0022] 00
                    nop                                     ;[0023] 00
                    nop                                     ;[0024] 00
                    nop                                     ;[0025] 00
                    nop                                     ;[0026] 00
                    nop                                     ;[0027] 00
                    nop                                     ;[0028] 00
                    nop                                     ;[0029] 00
                    nop                                     ;[002a] 00
                    nop                                     ;[002b] 00
                    nop                                     ;[002c] 00
                    nop                                     ;[002d] 00
                    nop                                     ;[002e] 00
                    nop                                     ;[002f] 00
                    nop                                     ;[0030] 00
                    nop                                     ;[0031] 00
                    nop                                     ;[0032] 00
                    nop                                     ;[0033] 00
                    nop                                     ;[0034] 00
                    nop                                     ;[0035] 00
                    nop                                     ;[0036] 00
                    nop                                     ;[0037] 00
                    di                                      ;[0038] f3
                    push    af                              ;[0039] f5
                    push    bc                              ;[003a] c5
                    push    de                              ;[003b] d5
                    push    hl                              ;[003c] e5
                    ld      hl,($486a)                      ;[003d] 2a 6a 48
                    inc     hl                              ;[0040] 23
                    ld      ($486a),hl                      ;[0041] 22 6a 48
                    ld      a,h                             ;[0044] 7c
                    or      l                               ;[0045] b5
                    jr      nz,$004f                        ;[0046] 20 07
                    ld      hl,($486c)                      ;[0048] 2a 6c 48
                    inc     hl                              ;[004b] 23
                    ld      ($486c),hl                      ;[004c] 22 6c 48
                    xor     a                               ;[004f] af
                    ld      hl,$50c0                        ;[0050] 21 c0 50
                    ld      (hl),a                          ;[0053] 77
                    pop     hl                              ;[0054] e1
                    pop     de                              ;[0055] d1
                    pop     bc                              ;[0056] c1
                    pop     af                              ;[0057] f1
                    ei                                      ;[0058] fb
                    reti                                    ;[0059] ed 4d

                    nop                                     ;[005b] 00
                    nop                                     ;[005c] 00
                    nop                                     ;[005d] 00
                    nop                                     ;[005e] 00
                    nop                                     ;[005f] 00
                    nop                                     ;[0060] 00
                    nop                                     ;[0061] 00
                    nop                                     ;[0062] 00
                    nop                                     ;[0063] 00
                    nop                                     ;[0064] 00
                    nop                                     ;[0065] 00
                    retn                                    ;[0066] ed 45

                    ld      a,$ff                           ;[0068] 3e ff
                    out     ($00),a                         ;[006a] d3 00
                    ld      a,$01                           ;[006c] 3e 01
                    ld      ($5000),a                       ;[006e] 32 00 50
                    xor     a                               ;[0071] af
                    ld      hl,$50c0                        ;[0072] 21 c0 50
                    ld      (hl),a                          ;[0075] 77
                    im      1                               ;[0076] ed 56
                    ei                                      ;[0078] fb
                    call    $14dd                           ;[0079] cd dd 14
                    jr      $007c                           ;[007c] 18 fe
                    jp      (hl)                            ;[007e] e9
                    xor     a                               ;[007f] af
                    ld      hl,$4800                        ;[0080] 21 00 48
                    ld      bc,$032e                        ;[0083] 01 2e 03
                    ld      de,$4801                        ;[0086] 11 01 48
                    ld      (hl),a                          ;[0089] 77
                    ldir                                    ;[008a] ed b0
                    ld      ($4869),a                       ;[008c] 32 69 48
                    ld      hl,$4803                        ;[008f] 21 03 48
                    ld      (hl),$13                        ;[0092] 36 13
                    ld      hl,$480d                        ;[0094] 21 0d 48
                    ld      (hl),$15                        ;[0097] 36 15
                    ld      hl,$4817                        ;[0099] 21 17 48
                    ld      (hl),$15                        ;[009c] 36 15
                    ld      hl,$15f6                        ;[009e] 21 f6 15
                    ld      de,$4b2e                        ;[00a1] 11 2e 4b
                    ld      bc,$0001                        ;[00a4] 01 01 00
                    call    $15e9                           ;[00a7] cd e9 15
                    ld      hl,$4000                        ;[00aa] 21 00 40
                    ld      ($4865),hl                      ;[00ad] 22 65 48
                    ret                                     ;[00b0] c9

                    ret                                     ;[00b1] c9

                    ld      a,$01                           ;[00b2] 3e 01
                    ld      ($4b2d),a                       ;[00b4] 32 2d 4b
                    ld      de,$8000                        ;[00b7] 11 00 80
                    ld      hl,$4870                        ;[00ba] 21 70 48
                    ld      a,l                             ;[00bd] 7d
                    ld      (de),a                          ;[00be] 12
                    ld      hl,$8000                        ;[00bf] 21 00 80
                    push    hl                              ;[00c2] e5
                    ld      hl,$4870                        ;[00c3] 21 70 48
                    ld      l,h                             ;[00c6] 6c
                    pop     de                              ;[00c7] d1
                    ld      a,l                             ;[00c8] 7d
                    ld      (de),a                          ;[00c9] 12
                    ld      hl,$8001                        ;[00ca] 21 01 80
                    ld      (hl),$04                        ;[00cd] 36 04
                    ld      hl,$8001                        ;[00cf] 21 01 80
                    ld      (hl),$40                        ;[00d2] 36 40
                    ld      hl,$8000                        ;[00d4] 21 00 80
                    ld      l,(hl)                          ;[00d7] 6e
                    ld      h,$00                           ;[00d8] 26 00
                    push    hl                              ;[00da] e5
                    ld      hl,$4870                        ;[00db] 21 70 48
                    ld      h,$00                           ;[00de] 26 00
                    pop     de                              ;[00e0] d1
                    call    $15d0                           ;[00e1] cd d0 15
                    jp      nc,$00ec                        ;[00e4] d2 ec 00
                    ld      a,$01                           ;[00e7] 3e 01
                    ld      ($4b2c),a                       ;[00e9] 32 2c 4b
                    ld      hl,$8000                        ;[00ec] 21 00 80
                    ld      l,(hl)                          ;[00ef] 6e
                    ld      h,$00                           ;[00f0] 26 00
                    push    hl                              ;[00f2] e5
                    ld      hl,$4870                        ;[00f3] 21 70 48
                    ld      l,h                             ;[00f6] 6c
                    ld      h,$00                           ;[00f7] 26 00
                    pop     de                              ;[00f9] d1
                    call    $15d0                           ;[00fa] cd d0 15
                    jp      nc,$0105                        ;[00fd] d2 05 01
                    ld      a,$02                           ;[0100] 3e 02
                    ld      ($4b2c),a                       ;[0102] 32 2c 4b
                    ld      hl,$8001                        ;[0105] 21 01 80
                    ld      a,(hl)                          ;[0108] 7e
                    cp      $04                             ;[0109] fe 04
                    jp      z,$0113                         ;[010b] ca 13 01
                    ld      a,$03                           ;[010e] 3e 03
                    ld      ($4b2c),a                       ;[0110] 32 2c 4b
                    ld      hl,$8001                        ;[0113] 21 01 80
                    ld      a,(hl)                          ;[0116] 7e
                    cp      $40                             ;[0117] fe 40
                    jp      z,$0121                         ;[0119] ca 21 01
                    ld      a,$04                           ;[011c] 3e 04
                    ld      ($4b2c),a                       ;[011e] 32 2c 4b
                    ld      hl,$8008                        ;[0121] 21 08 80
                    ld      (hl),$41                        ;[0124] 36 41
                    ld      hl,$8008                        ;[0126] 21 08 80
                    ld      a,(hl)                          ;[0129] 7e
                    and     a                               ;[012a] a7
                    ret     z                               ;[012b] c8
                    ld      hl,$0005                        ;[012c] 21 05 00
                    ld      a,l                             ;[012f] 7d
                    ld      ($4b2c),a                       ;[0130] 32 2c 4b
                    ret                                     ;[0133] c9

                    push    bc                              ;[0134] c5
                    push    bc                              ;[0135] c5
                    dec     sp                              ;[0136] 3b
                    ld      a,$02                           ;[0137] 3e 02
                    ld      ($4b2d),a                       ;[0139] 32 2d 4b
                    ld      hl,$0001                        ;[013c] 21 01 00
                    add     hl,sp                           ;[013f] 39
                    push    hl                              ;[0140] e5
                    ld      hl,$4870                        ;[0141] 21 70 48
                    ld      a,$b8                           ;[0144] 3e b8
                    add     h                               ;[0146] 84
                    ld      h,a                             ;[0147] 67
                    pop     de                              ;[0148] d1
                    call    $15e3                           ;[0149] cd e3 15
                    ld      hl,$0003                        ;[014c] 21 03 00
                    add     hl,sp                           ;[014f] 39
                    xor     a                               ;[0150] af
                    ld      (hl),a                          ;[0151] 77
                    inc     hl                              ;[0152] 23
                    ld      (hl),a                          ;[0153] 77
                    jp      $0161                           ;[0154] c3 61 01
                    ld      hl,$0003                        ;[0157] 21 03 00
                    add     hl,sp                           ;[015a] 39
                    inc     (hl)                            ;[015b] 34
                    ld      a,(hl)                          ;[015c] 7e
                    inc     hl                              ;[015d] 23
                    jr      nz,$0161                        ;[015e] 20 01
                    inc     (hl)                            ;[0160] 34
                    ld      hl,$0003                        ;[0161] 21 03 00
                    add     hl,sp                           ;[0164] 39
                    call    $15db                           ;[0165] cd db 15
                    ld      de,$0005                        ;[0168] 11 05 00
                    and     a                               ;[016b] a7
                    sbc     hl,de                           ;[016c] ed 52
                    jp      nc,$0181                        ;[016e] d2 81 01
                    ld      de,$4870                        ;[0171] 11 70 48
                    ld      hl,$0003                        ;[0174] 21 03 00
                    add     hl,sp                           ;[0177] 39
                    call    $15db                           ;[0178] cd db 15
                    add     hl,de                           ;[017b] 19
                    ld      (hl),$02                        ;[017c] 36 02
                    jp      $0157                           ;[017e] c3 57 01
                    ld      hl,$0003                        ;[0181] 21 03 00
                    add     hl,sp                           ;[0184] 39
                    xor     a                               ;[0185] af
                    ld      (hl),a                          ;[0186] 77
                    inc     hl                              ;[0187] 23
                    ld      (hl),a                          ;[0188] 77
                    jp      $0196                           ;[0189] c3 96 01
                    ld      hl,$0003                        ;[018c] 21 03 00
                    add     hl,sp                           ;[018f] 39
                    inc     (hl)                            ;[0190] 34
                    ld      a,(hl)                          ;[0191] 7e
                    inc     hl                              ;[0192] 23
                    jr      nz,$0196                        ;[0193] 20 01
                    inc     (hl)                            ;[0195] 34
                    ld      hl,$0003                        ;[0196] 21 03 00
                    add     hl,sp                           ;[0199] 39
                    call    $15db                           ;[019a] cd db 15
                    ld      de,$0005                        ;[019d] 11 05 00
                    and     a                               ;[01a0] a7
                    sbc     hl,de                           ;[01a1] ed 52
                    jp      nc,$01bf                        ;[01a3] d2 bf 01
                    ld      hl,$0001                        ;[01a6] 21 01 00
                    add     hl,sp                           ;[01a9] 39
                    call    $15db                           ;[01aa] cd db 15
                    ld      a,$40                           ;[01ad] 3e 40
                    add     h                               ;[01af] 84
                    ld      h,a                             ;[01b0] 67
                    ex      de,hl                           ;[01b1] eb
                    ld      hl,$0003                        ;[01b2] 21 03 00
                    add     hl,sp                           ;[01b5] 39
                    call    $15db                           ;[01b6] cd db 15
                    add     hl,de                           ;[01b9] 19
                    ld      (hl),$00                        ;[01ba] 36 00
                    jp      $018c                           ;[01bc] c3 8c 01
                    ld      de,$8000                        ;[01bf] 11 00 80
                    ld      hl,$4870                        ;[01c2] 21 70 48
                    ld      a,l                             ;[01c5] 7d
                    ld      (de),a                          ;[01c6] 12
                    ld      hl,$8000                        ;[01c7] 21 00 80
                    push    hl                              ;[01ca] e5
                    ld      hl,$4870                        ;[01cb] 21 70 48
                    ld      l,h                             ;[01ce] 6c
                    pop     de                              ;[01cf] d1
                    ld      a,l                             ;[01d0] 7d
                    ld      (de),a                          ;[01d1] 12
                    ld      hl,$8001                        ;[01d2] 21 01 80
                    ld      (hl),$04                        ;[01d5] 36 04
                    ld      hl,$8001                        ;[01d7] 21 01 80
                    ld      (hl),$40                        ;[01da] 36 40
                    ld      hl,$8008                        ;[01dc] 21 08 80
                    ld      (hl),$41                        ;[01df] 36 41
                    ld      hl,$7000                        ;[01e1] 21 00 70
                    ld      (hl),$00                        ;[01e4] 36 00
                    pop     hl                              ;[01e6] e1
                    push    hl                              ;[01e7] e5
                    ld      h,$00                           ;[01e8] 26 00
                    ld      a,$01                           ;[01ea] 3e 01
                    and     l                               ;[01ec] a5
                    ld      l,a                             ;[01ed] 6f
                    jr      nz,$01f1                        ;[01ee] 20 01
                    scf                                     ;[01f0] 37
                    jp      nc,$0202                        ;[01f1] d2 02 02
                    ld      hl,$0000                        ;[01f4] 21 00 00
                    add     hl,sp                           ;[01f7] 39
                    push    hl                              ;[01f8] e5
                    ld      hl,$8008                        ;[01f9] 21 08 80
                    ld      a,(hl)                          ;[01fc] 7e
                    pop     de                              ;[01fd] d1
                    ld      (de),a                          ;[01fe] 12
                    jp      $01e6                           ;[01ff] c3 e6 01
                    ld      hl,$7004                        ;[0202] 21 04 70
                    ld      (hl),$00                        ;[0205] 36 00
                    ld      hl,$0000                        ;[0207] 21 00 00
                    add     hl,sp                           ;[020a] 39
                    push    hl                              ;[020b] e5
                    ld      hl,$8008                        ;[020c] 21 08 80
                    ld      a,(hl)                          ;[020f] 7e
                    pop     de                              ;[0210] d1
                    ld      (de),a                          ;[0211] 12
                    pop     hl                              ;[0212] e1
                    push    hl                              ;[0213] e5
                    ld      h,$00                           ;[0214] 26 00
                    ld      a,l                             ;[0216] 7d
                    and     $01                             ;[0217] e6 01
                    jp      z,$0221                         ;[0219] ca 21 02
                    ld      a,$06                           ;[021c] 3e 06
                    ld      ($4b2c),a                       ;[021e] 32 2c 4b
                    ld      hl,$0003                        ;[0221] 21 03 00
                    add     hl,sp                           ;[0224] 39
                    xor     a                               ;[0225] af
                    ld      (hl),a                          ;[0226] 77
                    inc     hl                              ;[0227] 23
                    ld      (hl),a                          ;[0228] 77
                    jp      $0236                           ;[0229] c3 36 02
                    ld      hl,$0003                        ;[022c] 21 03 00
                    add     hl,sp                           ;[022f] 39
                    inc     (hl)                            ;[0230] 34
                    ld      a,(hl)                          ;[0231] 7e
                    inc     hl                              ;[0232] 23
                    jr      nz,$0236                        ;[0233] 20 01
                    inc     (hl)                            ;[0235] 34
                    ld      hl,$0003                        ;[0236] 21 03 00
                    add     hl,sp                           ;[0239] 39
                    call    $15db                           ;[023a] cd db 15
                    ld      de,$0005                        ;[023d] 11 05 00
                    and     a                               ;[0240] a7
                    sbc     hl,de                           ;[0241] ed 52
                    jp      nc,$027b                        ;[0243] d2 7b 02
                    ld      hl,$0001                        ;[0246] 21 01 00
                    add     hl,sp                           ;[0249] 39
                    call    $15db                           ;[024a] cd db 15
                    ld      a,$40                           ;[024d] 3e 40
                    add     h                               ;[024f] 84
                    ld      h,a                             ;[0250] 67
                    ex      de,hl                           ;[0251] eb
                    ld      hl,$0003                        ;[0252] 21 03 00
                    add     hl,sp                           ;[0255] 39
                    call    $15db                           ;[0256] cd db 15
                    add     hl,de                           ;[0259] 19
                    ld      l,(hl)                          ;[025a] 6e
                    ld      h,$00                           ;[025b] 26 00
                    push    hl                              ;[025d] e5
                    ld      de,$4870                        ;[025e] 11 70 48
                    ld      hl,$0005                        ;[0261] 21 05 00
                    add     hl,sp                           ;[0264] 39
                    call    $15db                           ;[0265] cd db 15
                    add     hl,de                           ;[0268] 19
                    ld      l,(hl)                          ;[0269] 6e
                    ld      h,$00                           ;[026a] 26 00
                    pop     de                              ;[026c] d1
                    call    $15d0                           ;[026d] cd d0 15
                    jp      nc,$022c                        ;[0270] d2 2c 02
                    ld      a,$07                           ;[0273] 3e 07
                    ld      ($4b2c),a                       ;[0275] 32 2c 4b
                    jp      $022c                           ;[0278] c3 2c 02
                    inc     sp                              ;[027b] 33
                    pop     bc                              ;[027c] c1
                    pop     bc                              ;[027d] c1
                    ret                                     ;[027e] c9

                    push    bc                              ;[027f] c5
                    push    bc                              ;[0280] c5
                    dec     sp                              ;[0281] 3b
                    ld      a,$15                           ;[0282] 3e 15
                    ld      ($4b2d),a                       ;[0284] 32 2d 4b
                    ld      hl,$0001                        ;[0287] 21 01 00
                    add     hl,sp                           ;[028a] 39
                    push    hl                              ;[028b] e5
                    ld      hl,$4870                        ;[028c] 21 70 48
                    ld      a,$b8                           ;[028f] 3e b8
                    add     h                               ;[0291] 84
                    ld      h,a                             ;[0292] 67
                    pop     de                              ;[0293] d1
                    call    $15e3                           ;[0294] cd e3 15
                    ld      hl,$0003                        ;[0297] 21 03 00
                    add     hl,sp                           ;[029a] 39
                    xor     a                               ;[029b] af
                    ld      (hl),a                          ;[029c] 77
                    inc     hl                              ;[029d] 23
                    ld      (hl),a                          ;[029e] 77
                    jp      $02ac                           ;[029f] c3 ac 02
                    ld      hl,$0003                        ;[02a2] 21 03 00
                    add     hl,sp                           ;[02a5] 39
                    inc     (hl)                            ;[02a6] 34
                    ld      a,(hl)                          ;[02a7] 7e
                    inc     hl                              ;[02a8] 23
                    jr      nz,$02ac                        ;[02a9] 20 01
                    inc     (hl)                            ;[02ab] 34
                    ld      hl,$0003                        ;[02ac] 21 03 00
                    add     hl,sp                           ;[02af] 39
                    call    $15db                           ;[02b0] cd db 15
                    ld      de,$0014                        ;[02b3] 11 14 00
                    and     a                               ;[02b6] a7
                    sbc     hl,de                           ;[02b7] ed 52
                    jp      nc,$02cc                        ;[02b9] d2 cc 02
                    ld      de,$4870                        ;[02bc] 11 70 48
                    ld      hl,$0003                        ;[02bf] 21 03 00
                    add     hl,sp                           ;[02c2] 39
                    call    $15db                           ;[02c3] cd db 15
                    add     hl,de                           ;[02c6] 19
                    ld      (hl),$02                        ;[02c7] 36 02
                    jp      $02a2                           ;[02c9] c3 a2 02
                    ld      hl,$0003                        ;[02cc] 21 03 00
                    add     hl,sp                           ;[02cf] 39
                    xor     a                               ;[02d0] af
                    ld      (hl),a                          ;[02d1] 77
                    inc     hl                              ;[02d2] 23
                    ld      (hl),a                          ;[02d3] 77
                    jp      $02e1                           ;[02d4] c3 e1 02
                    ld      hl,$0003                        ;[02d7] 21 03 00
                    add     hl,sp                           ;[02da] 39
                    inc     (hl)                            ;[02db] 34
                    ld      a,(hl)                          ;[02dc] 7e
                    inc     hl                              ;[02dd] 23
                    jr      nz,$02e1                        ;[02de] 20 01
                    inc     (hl)                            ;[02e0] 34
                    ld      hl,$0003                        ;[02e1] 21 03 00
                    add     hl,sp                           ;[02e4] 39
                    call    $15db                           ;[02e5] cd db 15
                    ld      de,$0014                        ;[02e8] 11 14 00
                    and     a                               ;[02eb] a7
                    sbc     hl,de                           ;[02ec] ed 52
                    jp      nc,$030a                        ;[02ee] d2 0a 03
                    ld      hl,$0001                        ;[02f1] 21 01 00
                    add     hl,sp                           ;[02f4] 39
                    call    $15db                           ;[02f5] cd db 15
                    ld      a,$40                           ;[02f8] 3e 40
                    add     h                               ;[02fa] 84
                    ld      h,a                             ;[02fb] 67
                    ex      de,hl                           ;[02fc] eb
                    ld      hl,$0003                        ;[02fd] 21 03 00
                    add     hl,sp                           ;[0300] 39
                    call    $15db                           ;[0301] cd db 15
                    add     hl,de                           ;[0304] 19
                    ld      (hl),$00                        ;[0305] 36 00
                    jp      $02d7                           ;[0307] c3 d7 02
                    ld      de,$8000                        ;[030a] 11 00 80
                    ld      hl,$4870                        ;[030d] 21 70 48
                    ld      a,l                             ;[0310] 7d
                    ld      (de),a                          ;[0311] 12
                    ld      hl,$8000                        ;[0312] 21 00 80
                    push    hl                              ;[0315] e5
                    ld      hl,$4870                        ;[0316] 21 70 48
                    ld      l,h                             ;[0319] 6c
                    pop     de                              ;[031a] d1
                    ld      a,l                             ;[031b] 7d
                    ld      (de),a                          ;[031c] 12
                    ld      hl,$8001                        ;[031d] 21 01 80
                    ld      (hl),$13                        ;[0320] 36 13
                    ld      hl,$8001                        ;[0322] 21 01 80
                    ld      (hl),$40                        ;[0325] 36 40
                    ld      hl,$8008                        ;[0327] 21 08 80
                    ld      (hl),$41                        ;[032a] 36 41
                    ld      hl,$7000                        ;[032c] 21 00 70
                    ld      (hl),$00                        ;[032f] 36 00
                    ld      hl,$0000                        ;[0331] 21 00 00
                    add     hl,sp                           ;[0334] 39
                    push    hl                              ;[0335] e5
                    ld      hl,$8008                        ;[0336] 21 08 80
                    ld      a,(hl)                          ;[0339] 7e
                    pop     de                              ;[033a] d1
                    ld      (de),a                          ;[033b] 12
                    pop     hl                              ;[033c] e1
                    push    hl                              ;[033d] e5
                    ld      h,$00                           ;[033e] 26 00
                    ld      a,$01                           ;[0340] 3e 01
                    and     l                               ;[0342] a5
                    ld      l,a                             ;[0343] 6f
                    jr      nz,$0347                        ;[0344] 20 01
                    scf                                     ;[0346] 37
                    jp      nc,$0358                        ;[0347] d2 58 03
                    ld      hl,$0000                        ;[034a] 21 00 00
                    add     hl,sp                           ;[034d] 39
                    push    hl                              ;[034e] e5
                    ld      hl,$8008                        ;[034f] 21 08 80
                    ld      a,(hl)                          ;[0352] 7e
                    pop     de                              ;[0353] d1
                    ld      (de),a                          ;[0354] 12
                    jp      $033c                           ;[0355] c3 3c 03
                    ld      hl,$7004                        ;[0358] 21 04 70
                    ld      (hl),$00                        ;[035b] 36 00
                    ld      hl,$0000                        ;[035d] 21 00 00
                    add     hl,sp                           ;[0360] 39
                    push    hl                              ;[0361] e5
                    ld      hl,$8008                        ;[0362] 21 08 80
                    ld      a,(hl)                          ;[0365] 7e
                    pop     de                              ;[0366] d1
                    ld      (de),a                          ;[0367] 12
                    pop     hl                              ;[0368] e1
                    push    hl                              ;[0369] e5
                    ld      h,$00                           ;[036a] 26 00
                    ld      a,l                             ;[036c] 7d
                    and     $01                             ;[036d] e6 01
                    jp      z,$0377                         ;[036f] ca 77 03
                    ld      a,$06                           ;[0372] 3e 06
                    ld      ($4b2c),a                       ;[0374] 32 2c 4b
                    ld      hl,$0003                        ;[0377] 21 03 00
                    add     hl,sp                           ;[037a] 39
                    xor     a                               ;[037b] af
                    ld      (hl),a                          ;[037c] 77
                    inc     hl                              ;[037d] 23
                    ld      (hl),a                          ;[037e] 77
                    jp      $038c                           ;[037f] c3 8c 03
                    ld      hl,$0003                        ;[0382] 21 03 00
                    add     hl,sp                           ;[0385] 39
                    inc     (hl)                            ;[0386] 34
                    ld      a,(hl)                          ;[0387] 7e
                    inc     hl                              ;[0388] 23
                    jr      nz,$038c                        ;[0389] 20 01
                    inc     (hl)                            ;[038b] 34
                    ld      hl,$0003                        ;[038c] 21 03 00
                    add     hl,sp                           ;[038f] 39
                    call    $15db                           ;[0390] cd db 15
                    ld      de,$0005                        ;[0393] 11 05 00
                    and     a                               ;[0396] a7
                    sbc     hl,de                           ;[0397] ed 52
                    jp      nc,$03d1                        ;[0399] d2 d1 03
                    ld      hl,$0001                        ;[039c] 21 01 00
                    add     hl,sp                           ;[039f] 39
                    call    $15db                           ;[03a0] cd db 15
                    ld      a,$40                           ;[03a3] 3e 40
                    add     h                               ;[03a5] 84
                    ld      h,a                             ;[03a6] 67
                    ex      de,hl                           ;[03a7] eb
                    ld      hl,$0003                        ;[03a8] 21 03 00
                    add     hl,sp                           ;[03ab] 39
                    call    $15db                           ;[03ac] cd db 15
                    add     hl,de                           ;[03af] 19
                    ld      l,(hl)                          ;[03b0] 6e
                    ld      h,$00                           ;[03b1] 26 00
                    push    hl                              ;[03b3] e5
                    ld      de,$4870                        ;[03b4] 11 70 48
                    ld      hl,$0005                        ;[03b7] 21 05 00
                    add     hl,sp                           ;[03ba] 39
                    call    $15db                           ;[03bb] cd db 15
                    add     hl,de                           ;[03be] 19
                    ld      l,(hl)                          ;[03bf] 6e
                    ld      h,$00                           ;[03c0] 26 00
                    pop     de                              ;[03c2] d1
                    call    $15d0                           ;[03c3] cd d0 15
                    jp      nc,$0382                        ;[03c6] d2 82 03
                    ld      a,$07                           ;[03c9] 3e 07
                    ld      ($4b2c),a                       ;[03cb] 32 2c 4b
                    jp      $0382                           ;[03ce] c3 82 03
                    ld      hl,$0003                        ;[03d1] 21 03 00
                    add     hl,sp                           ;[03d4] 39
                    xor     a                               ;[03d5] af
                    ld      (hl),a                          ;[03d6] 77
                    inc     hl                              ;[03d7] 23
                    ld      (hl),a                          ;[03d8] 77
                    jp      $03e6                           ;[03d9] c3 e6 03
                    ld      hl,$0003                        ;[03dc] 21 03 00
                    add     hl,sp                           ;[03df] 39
                    inc     (hl)                            ;[03e0] 34
                    ld      a,(hl)                          ;[03e1] 7e
                    inc     hl                              ;[03e2] 23
                    jr      nz,$03e6                        ;[03e3] 20 01
                    inc     (hl)                            ;[03e5] 34
                    ld      hl,$0003                        ;[03e6] 21 03 00
                    add     hl,sp                           ;[03e9] 39
                    call    $15db                           ;[03ea] cd db 15
                    ld      de,$0014                        ;[03ed] 11 14 00
                    and     a                               ;[03f0] a7
                    sbc     hl,de                           ;[03f1] ed 52
                    jp      nc,$040f                        ;[03f3] d2 0f 04
                    ld      hl,$0001                        ;[03f6] 21 01 00
                    add     hl,sp                           ;[03f9] 39
                    call    $15db                           ;[03fa] cd db 15
                    ld      a,$40                           ;[03fd] 3e 40
                    add     h                               ;[03ff] 84
                    ld      h,a                             ;[0400] 67
                    ex      de,hl                           ;[0401] eb
                    ld      hl,$0003                        ;[0402] 21 03 00
                    add     hl,sp                           ;[0405] 39
                    call    $15db                           ;[0406] cd db 15
                    add     hl,de                           ;[0409] 19
                    ld      (hl),$00                        ;[040a] 36 00
                    jp      $03dc                           ;[040c] c3 dc 03
                    ld      de,$8000                        ;[040f] 11 00 80
                    ld      hl,$4870                        ;[0412] 21 70 48
                    ld      a,l                             ;[0415] 7d
                    ld      (de),a                          ;[0416] 12
                    ld      hl,$8000                        ;[0417] 21 00 80
                    push    hl                              ;[041a] e5
                    ld      hl,$4870                        ;[041b] 21 70 48
                    ld      l,h                             ;[041e] 6c
                    pop     de                              ;[041f] d1
                    ld      a,l                             ;[0420] 7d
                    ld      (de),a                          ;[0421] 12
                    ld      hl,$8001                        ;[0422] 21 01 80
                    ld      (hl),$13                        ;[0425] 36 13
                    ld      hl,$8001                        ;[0427] 21 01 80
                    ld      (hl),$40                        ;[042a] 36 40
                    ld      hl,$8008                        ;[042c] 21 08 80
                    ld      (hl),$41                        ;[042f] 36 41
                    ld      hl,$7000                        ;[0431] 21 00 70
                    ld      (hl),$00                        ;[0434] 36 00
                    ld      hl,$0000                        ;[0436] 21 00 00
                    add     hl,sp                           ;[0439] 39
                    push    hl                              ;[043a] e5
                    ld      hl,$8008                        ;[043b] 21 08 80
                    ld      a,(hl)                          ;[043e] 7e
                    pop     de                              ;[043f] d1
                    ld      (de),a                          ;[0440] 12
                    pop     hl                              ;[0441] e1
                    push    hl                              ;[0442] e5
                    ld      h,$00                           ;[0443] 26 00
                    ld      a,$01                           ;[0445] 3e 01
                    and     l                               ;[0447] a5
                    ld      l,a                             ;[0448] 6f
                    jr      nz,$044c                        ;[0449] 20 01
                    scf                                     ;[044b] 37
                    jp      nc,$045d                        ;[044c] d2 5d 04
                    ld      hl,$0000                        ;[044f] 21 00 00
                    add     hl,sp                           ;[0452] 39
                    push    hl                              ;[0453] e5
                    ld      hl,$8008                        ;[0454] 21 08 80
                    ld      a,(hl)                          ;[0457] 7e
                    pop     de                              ;[0458] d1
                    ld      (de),a                          ;[0459] 12
                    jp      $0441                           ;[045a] c3 41 04
                    ld      hl,$7004                        ;[045d] 21 04 70
                    ld      (hl),$00                        ;[0460] 36 00
                    ld      hl,$0000                        ;[0462] 21 00 00
                    add     hl,sp                           ;[0465] 39
                    push    hl                              ;[0466] e5
                    ld      hl,$8008                        ;[0467] 21 08 80
                    ld      a,(hl)                          ;[046a] 7e
                    pop     de                              ;[046b] d1
                    ld      (de),a                          ;[046c] 12
                    pop     hl                              ;[046d] e1
                    push    hl                              ;[046e] e5
                    ld      h,$00                           ;[046f] 26 00
                    ld      a,l                             ;[0471] 7d
                    and     $01                             ;[0472] e6 01
                    jp      z,$047c                         ;[0474] ca 7c 04
                    ld      a,$08                           ;[0477] 3e 08
                    ld      ($4b2c),a                       ;[0479] 32 2c 4b
                    ld      hl,$0003                        ;[047c] 21 03 00
                    add     hl,sp                           ;[047f] 39
                    xor     a                               ;[0480] af
                    ld      (hl),a                          ;[0481] 77
                    inc     hl                              ;[0482] 23
                    ld      (hl),a                          ;[0483] 77
                    jp      $0491                           ;[0484] c3 91 04
                    ld      hl,$0003                        ;[0487] 21 03 00
                    add     hl,sp                           ;[048a] 39
                    inc     (hl)                            ;[048b] 34
                    ld      a,(hl)                          ;[048c] 7e
                    inc     hl                              ;[048d] 23
                    jr      nz,$0491                        ;[048e] 20 01
                    inc     (hl)                            ;[0490] 34
                    ld      hl,$0003                        ;[0491] 21 03 00
                    add     hl,sp                           ;[0494] 39
                    call    $15db                           ;[0495] cd db 15
                    ld      de,$0005                        ;[0498] 11 05 00
                    and     a                               ;[049b] a7
                    sbc     hl,de                           ;[049c] ed 52
                    jp      nc,$04d6                        ;[049e] d2 d6 04
                    ld      hl,$0001                        ;[04a1] 21 01 00
                    add     hl,sp                           ;[04a4] 39
                    call    $15db                           ;[04a5] cd db 15
                    ld      a,$40                           ;[04a8] 3e 40
                    add     h                               ;[04aa] 84
                    ld      h,a                             ;[04ab] 67
                    ex      de,hl                           ;[04ac] eb
                    ld      hl,$0003                        ;[04ad] 21 03 00
                    add     hl,sp                           ;[04b0] 39
                    call    $15db                           ;[04b1] cd db 15
                    add     hl,de                           ;[04b4] 19
                    ld      l,(hl)                          ;[04b5] 6e
                    ld      h,$00                           ;[04b6] 26 00
                    push    hl                              ;[04b8] e5
                    ld      de,$4870                        ;[04b9] 11 70 48
                    ld      hl,$0005                        ;[04bc] 21 05 00
                    add     hl,sp                           ;[04bf] 39
                    call    $15db                           ;[04c0] cd db 15
                    add     hl,de                           ;[04c3] 19
                    ld      l,(hl)                          ;[04c4] 6e
                    ld      h,$00                           ;[04c5] 26 00
                    pop     de                              ;[04c7] d1
                    call    $15d0                           ;[04c8] cd d0 15
                    jp      nc,$0487                        ;[04cb] d2 87 04
                    ld      a,$09                           ;[04ce] 3e 09
                    ld      ($4b2c),a                       ;[04d0] 32 2c 4b
                    jp      $0487                           ;[04d3] c3 87 04
                    inc     sp                              ;[04d6] 33
                    pop     bc                              ;[04d7] c1
                    pop     bc                              ;[04d8] c1
                    ret                                     ;[04d9] c9

                    push    bc                              ;[04da] c5
                    push    bc                              ;[04db] c5
                    dec     sp                              ;[04dc] 3b
                    ld      a,$03                           ;[04dd] 3e 03
                    ld      ($4b2d),a                       ;[04df] 32 2d 4b
                    ld      hl,$0001                        ;[04e2] 21 01 00
                    add     hl,sp                           ;[04e5] 39
                    push    hl                              ;[04e6] e5
                    ld      hl,$4870                        ;[04e7] 21 70 48
                    ld      a,$b8                           ;[04ea] 3e b8
                    add     h                               ;[04ec] 84
                    ld      h,a                             ;[04ed] 67
                    pop     de                              ;[04ee] d1
                    call    $15e3                           ;[04ef] cd e3 15
                    ld      hl,$0003                        ;[04f2] 21 03 00
                    add     hl,sp                           ;[04f5] 39
                    xor     a                               ;[04f6] af
                    ld      (hl),a                          ;[04f7] 77
                    inc     hl                              ;[04f8] 23
                    ld      (hl),a                          ;[04f9] 77
                    jp      $0507                           ;[04fa] c3 07 05
                    ld      hl,$0003                        ;[04fd] 21 03 00
                    add     hl,sp                           ;[0500] 39
                    inc     (hl)                            ;[0501] 34
                    ld      a,(hl)                          ;[0502] 7e
                    inc     hl                              ;[0503] 23
                    jr      nz,$0507                        ;[0504] 20 01
                    inc     (hl)                            ;[0506] 34
                    ld      hl,$0003                        ;[0507] 21 03 00
                    add     hl,sp                           ;[050a] 39
                    call    $15db                           ;[050b] cd db 15
                    ld      de,$0005                        ;[050e] 11 05 00
                    and     a                               ;[0511] a7
                    sbc     hl,de                           ;[0512] ed 52
                    jp      nc,$0527                        ;[0514] d2 27 05
                    ld      de,$4870                        ;[0517] 11 70 48
                    ld      hl,$0003                        ;[051a] 21 03 00
                    add     hl,sp                           ;[051d] 39
                    call    $15db                           ;[051e] cd db 15
                    add     hl,de                           ;[0521] 19
                    ld      (hl),$00                        ;[0522] 36 00
                    jp      $04fd                           ;[0524] c3 fd 04
                    ld      hl,$0003                        ;[0527] 21 03 00
                    add     hl,sp                           ;[052a] 39
                    xor     a                               ;[052b] af
                    ld      (hl),a                          ;[052c] 77
                    inc     hl                              ;[052d] 23
                    ld      (hl),a                          ;[052e] 77
                    jp      $053c                           ;[052f] c3 3c 05
                    ld      hl,$0003                        ;[0532] 21 03 00
                    add     hl,sp                           ;[0535] 39
                    inc     (hl)                            ;[0536] 34
                    ld      a,(hl)                          ;[0537] 7e
                    inc     hl                              ;[0538] 23
                    jr      nz,$053c                        ;[0539] 20 01
                    inc     (hl)                            ;[053b] 34
                    ld      hl,$0003                        ;[053c] 21 03 00
                    add     hl,sp                           ;[053f] 39
                    call    $15db                           ;[0540] cd db 15
                    ld      de,$0005                        ;[0543] 11 05 00
                    and     a                               ;[0546] a7
                    sbc     hl,de                           ;[0547] ed 52
                    jp      nc,$0565                        ;[0549] d2 65 05
                    ld      hl,$0001                        ;[054c] 21 01 00
                    add     hl,sp                           ;[054f] 39
                    call    $15db                           ;[0550] cd db 15
                    ld      a,$40                           ;[0553] 3e 40
                    add     h                               ;[0555] 84
                    ld      h,a                             ;[0556] 67
                    ex      de,hl                           ;[0557] eb
                    ld      hl,$0003                        ;[0558] 21 03 00
                    add     hl,sp                           ;[055b] 39
                    call    $15db                           ;[055c] cd db 15
                    add     hl,de                           ;[055f] 19
                    ld      (hl),$03                        ;[0560] 36 03
                    jp      $0532                           ;[0562] c3 32 05
                    ld      de,$8000                        ;[0565] 11 00 80
                    ld      hl,$4870                        ;[0568] 21 70 48
                    ld      a,l                             ;[056b] 7d
                    ld      (de),a                          ;[056c] 12
                    ld      hl,$8000                        ;[056d] 21 00 80
                    push    hl                              ;[0570] e5
                    ld      hl,$4870                        ;[0571] 21 70 48
                    ld      l,h                             ;[0574] 6c
                    pop     de                              ;[0575] d1
                    ld      a,l                             ;[0576] 7d
                    ld      (de),a                          ;[0577] 12
                    ld      hl,$8001                        ;[0578] 21 01 80
                    ld      (hl),$04                        ;[057b] 36 04
                    ld      hl,$8001                        ;[057d] 21 01 80
                    ld      (hl),$80                        ;[0580] 36 80
                    ld      hl,$8008                        ;[0582] 21 08 80
                    ld      (hl),$41                        ;[0585] 36 41
                    ld      hl,$7000                        ;[0587] 21 00 70
                    ld      (hl),$00                        ;[058a] 36 00
                    pop     hl                              ;[058c] e1
                    push    hl                              ;[058d] e5
                    ld      h,$00                           ;[058e] 26 00
                    ld      a,$01                           ;[0590] 3e 01
                    and     l                               ;[0592] a5
                    ld      l,a                             ;[0593] 6f
                    jr      nz,$0597                        ;[0594] 20 01
                    scf                                     ;[0596] 37
                    jp      nc,$05a8                        ;[0597] d2 a8 05
                    ld      hl,$0000                        ;[059a] 21 00 00
                    add     hl,sp                           ;[059d] 39
                    push    hl                              ;[059e] e5
                    ld      hl,$8008                        ;[059f] 21 08 80
                    ld      a,(hl)                          ;[05a2] 7e
                    pop     de                              ;[05a3] d1
                    ld      (de),a                          ;[05a4] 12
                    jp      $058c                           ;[05a5] c3 8c 05
                    ld      hl,$7004                        ;[05a8] 21 04 70
                    ld      (hl),$00                        ;[05ab] 36 00
                    ld      hl,$0000                        ;[05ad] 21 00 00
                    add     hl,sp                           ;[05b0] 39
                    push    hl                              ;[05b1] e5
                    ld      hl,$8008                        ;[05b2] 21 08 80
                    ld      a,(hl)                          ;[05b5] 7e
                    pop     de                              ;[05b6] d1
                    ld      (de),a                          ;[05b7] 12
                    pop     hl                              ;[05b8] e1
                    push    hl                              ;[05b9] e5
                    ld      h,$00                           ;[05ba] 26 00
                    ld      a,l                             ;[05bc] 7d
                    and     $01                             ;[05bd] e6 01
                    jp      z,$05c7                         ;[05bf] ca c7 05
                    ld      a,$08                           ;[05c2] 3e 08
                    ld      ($4b2c),a                       ;[05c4] 32 2c 4b
                    ld      hl,$0003                        ;[05c7] 21 03 00
                    add     hl,sp                           ;[05ca] 39
                    xor     a                               ;[05cb] af
                    ld      (hl),a                          ;[05cc] 77
                    inc     hl                              ;[05cd] 23
                    ld      (hl),a                          ;[05ce] 77
                    jp      $05dc                           ;[05cf] c3 dc 05
                    ld      hl,$0003                        ;[05d2] 21 03 00
                    add     hl,sp                           ;[05d5] 39
                    inc     (hl)                            ;[05d6] 34
                    ld      a,(hl)                          ;[05d7] 7e
                    inc     hl                              ;[05d8] 23
                    jr      nz,$05dc                        ;[05d9] 20 01
                    inc     (hl)                            ;[05db] 34
                    ld      hl,$0003                        ;[05dc] 21 03 00
                    add     hl,sp                           ;[05df] 39
                    call    $15db                           ;[05e0] cd db 15
                    ld      de,$0005                        ;[05e3] 11 05 00
                    and     a                               ;[05e6] a7
                    sbc     hl,de                           ;[05e7] ed 52
                    jp      nc,$0621                        ;[05e9] d2 21 06
                    ld      de,$4870                        ;[05ec] 11 70 48
                    ld      hl,$0003                        ;[05ef] 21 03 00
                    add     hl,sp                           ;[05f2] 39
                    call    $15db                           ;[05f3] cd db 15
                    add     hl,de                           ;[05f6] 19
                    ld      l,(hl)                          ;[05f7] 6e
                    ld      h,$00                           ;[05f8] 26 00
                    push    hl                              ;[05fa] e5
                    ld      hl,$0003                        ;[05fb] 21 03 00
                    add     hl,sp                           ;[05fe] 39
                    call    $15db                           ;[05ff] cd db 15
                    ld      a,$40                           ;[0602] 3e 40
                    add     h                               ;[0604] 84
                    ld      h,a                             ;[0605] 67
                    ex      de,hl                           ;[0606] eb
                    ld      hl,$0005                        ;[0607] 21 05 00
                    add     hl,sp                           ;[060a] 39
                    call    $15db                           ;[060b] cd db 15
                    add     hl,de                           ;[060e] 19
                    ld      l,(hl)                          ;[060f] 6e
                    ld      h,$00                           ;[0610] 26 00
                    pop     de                              ;[0612] d1
                    call    $15d0                           ;[0613] cd d0 15
                    jp      nc,$05d2                        ;[0616] d2 d2 05
                    ld      a,$09                           ;[0619] 3e 09
                    ld      ($4b2c),a                       ;[061b] 32 2c 4b
                    jp      $05d2                           ;[061e] c3 d2 05
                    inc     sp                              ;[0621] 33
                    pop     bc                              ;[0622] c1
                    pop     bc                              ;[0623] c1
                    ret                                     ;[0624] c9

                    ld      hl,$fff1                        ;[0625] 21 f1 ff
                    add     hl,sp                           ;[0628] 39
                    ld      sp,hl                           ;[0629] f9
                    ld      a,$04                           ;[062a] 3e 04
                    ld      ($4b2d),a                       ;[062c] 32 2d 4b
                    ld      hl,$0009                        ;[062f] 21 09 00
                    add     hl,sp                           ;[0632] 39
                    push    hl                              ;[0633] e5
                    ld      hl,$4870                        ;[0634] 21 70 48
                    ld      a,$b8                           ;[0637] 3e b8
                    add     h                               ;[0639] 84
                    ld      h,a                             ;[063a] 67
                    pop     de                              ;[063b] d1
                    call    $15e3                           ;[063c] cd e3 15
                    ld      hl,$000d                        ;[063f] 21 0d 00
                    add     hl,sp                           ;[0642] 39
                    xor     a                               ;[0643] af
                    ld      (hl),a                          ;[0644] 77
                    inc     hl                              ;[0645] 23
                    ld      (hl),a                          ;[0646] 77
                    jp      $0654                           ;[0647] c3 54 06
                    ld      hl,$000d                        ;[064a] 21 0d 00
                    add     hl,sp                           ;[064d] 39
                    inc     (hl)                            ;[064e] 34
                    ld      a,(hl)                          ;[064f] 7e
                    inc     hl                              ;[0650] 23
                    jr      nz,$0654                        ;[0651] 20 01
                    inc     (hl)                            ;[0653] 34
                    ld      hl,$000d                        ;[0654] 21 0d 00
                    add     hl,sp                           ;[0657] 39
                    call    $15db                           ;[0658] cd db 15
                    ld      de,$02bc                        ;[065b] 11 bc 02
                    and     a                               ;[065e] a7
                    sbc     hl,de                           ;[065f] ed 52
                    jp      nc,$0674                        ;[0661] d2 74 06
                    ld      de,$4870                        ;[0664] 11 70 48
                    ld      hl,$000d                        ;[0667] 21 0d 00
                    add     hl,sp                           ;[066a] 39
                    call    $15db                           ;[066b] cd db 15
                    add     hl,de                           ;[066e] 19
                    ld      (hl),$04                        ;[066f] 36 04
                    jp      $064a                           ;[0671] c3 4a 06
                    ld      hl,$000d                        ;[0674] 21 0d 00
                    add     hl,sp                           ;[0677] 39
                    xor     a                               ;[0678] af
                    ld      (hl),a                          ;[0679] 77
                    inc     hl                              ;[067a] 23
                    ld      (hl),a                          ;[067b] 77
                    jp      $0689                           ;[067c] c3 89 06
                    ld      hl,$000d                        ;[067f] 21 0d 00
                    add     hl,sp                           ;[0682] 39
                    inc     (hl)                            ;[0683] 34
                    ld      a,(hl)                          ;[0684] 7e
                    inc     hl                              ;[0685] 23
                    jr      nz,$0689                        ;[0686] 20 01
                    inc     (hl)                            ;[0688] 34
                    ld      hl,$000d                        ;[0689] 21 0d 00
                    add     hl,sp                           ;[068c] 39
                    call    $15db                           ;[068d] cd db 15
                    ld      de,$02bc                        ;[0690] 11 bc 02
                    and     a                               ;[0693] a7
                    sbc     hl,de                           ;[0694] ed 52
                    jp      nc,$06b2                        ;[0696] d2 b2 06
                    ld      hl,$0009                        ;[0699] 21 09 00
                    add     hl,sp                           ;[069c] 39
                    call    $15db                           ;[069d] cd db 15
                    ld      a,$40                           ;[06a0] 3e 40
                    add     h                               ;[06a2] 84
                    ld      h,a                             ;[06a3] 67
                    ex      de,hl                           ;[06a4] eb
                    ld      hl,$000d                        ;[06a5] 21 0d 00
                    add     hl,sp                           ;[06a8] 39
                    call    $15db                           ;[06a9] cd db 15
                    add     hl,de                           ;[06ac] 19
                    ld      (hl),$00                        ;[06ad] 36 00
                    jp      $067f                           ;[06af] c3 7f 06
                    ld      de,$8000                        ;[06b2] 11 00 80
                    ld      hl,$4870                        ;[06b5] 21 70 48
                    ld      a,l                             ;[06b8] 7d
                    ld      (de),a                          ;[06b9] 12
                    ld      hl,$8000                        ;[06ba] 21 00 80
                    push    hl                              ;[06bd] e5
                    ld      hl,$4870                        ;[06be] 21 70 48
                    ld      l,h                             ;[06c1] 6c
                    pop     de                              ;[06c2] d1
                    ld      a,l                             ;[06c3] 7d
                    ld      (de),a                          ;[06c4] 12
                    ld      hl,$8001                        ;[06c5] 21 01 80
                    ld      (hl),$bb                        ;[06c8] 36 bb
                    ld      hl,$8001                        ;[06ca] 21 01 80
                    ld      (hl),$42                        ;[06cd] 36 42
                    ld      hl,$8008                        ;[06cf] 21 08 80
                    ld      (hl),$41                        ;[06d2] 36 41
                    ld      hl,$7000                        ;[06d4] 21 00 70
                    ld      (hl),$00                        ;[06d7] 36 00
                    ld      hl,$000b                        ;[06d9] 21 0b 00
                    add     hl,sp                           ;[06dc] 39
                    xor     a                               ;[06dd] af
                    ld      (hl),a                          ;[06de] 77
                    inc     hl                              ;[06df] 23
                    ld      (hl),a                          ;[06e0] 77
                    jp      $06ee                           ;[06e1] c3 ee 06
                    ld      hl,$000b                        ;[06e4] 21 0b 00
                    add     hl,sp                           ;[06e7] 39
                    inc     (hl)                            ;[06e8] 34
                    ld      a,(hl)                          ;[06e9] 7e
                    inc     hl                              ;[06ea] 23
                    jr      nz,$06ee                        ;[06eb] 20 01
                    inc     (hl)                            ;[06ed] 34
                    ld      hl,$000b                        ;[06ee] 21 0b 00
                    add     hl,sp                           ;[06f1] 39
                    call    $15db                           ;[06f2] cd db 15
                    ld      de,$0005                        ;[06f5] 11 05 00
                    and     a                               ;[06f8] a7
                    sbc     hl,de                           ;[06f9] ed 52
                    jp      c,$06e4                         ;[06fb] da e4 06
                    ld      hl,$7004                        ;[06fe] 21 04 70
                    ld      (hl),$00                        ;[0701] 36 00
                    ld      hl,$0005                        ;[0703] 21 05 00
                    add     hl,sp                           ;[0706] 39
                    ld      de,$8000                        ;[0707] 11 00 80
                    ld      a,(de)                          ;[070a] 1a
                    ld      (hl),a                          ;[070b] 77
                    inc     hl                              ;[070c] 23
                    ld      (hl),$00                        ;[070d] 36 00
                    ld      hl,$0007                        ;[070f] 21 07 00
                    add     hl,sp                           ;[0712] 39
                    ld      de,$8000                        ;[0713] 11 00 80
                    ld      a,(de)                          ;[0716] 1a
                    ld      (hl),a                          ;[0717] 77
                    inc     hl                              ;[0718] 23
                    ld      (hl),$00                        ;[0719] 36 00
                    ld      hl,$0001                        ;[071b] 21 01 00
                    add     hl,sp                           ;[071e] 39
                    ld      de,$8001                        ;[071f] 11 01 80
                    ld      a,(de)                          ;[0722] 1a
                    ld      (hl),a                          ;[0723] 77
                    inc     hl                              ;[0724] 23
                    ld      (hl),$00                        ;[0725] 36 00
                    ld      hl,$0003                        ;[0727] 21 03 00
                    add     hl,sp                           ;[072a] 39
                    ld      de,$8001                        ;[072b] 11 01 80
                    ld      a,(de)                          ;[072e] 1a
                    ld      (hl),a                          ;[072f] 77
                    inc     hl                              ;[0730] 23
                    ld      (hl),$00                        ;[0731] 36 00
                    ld      hl,$0007                        ;[0733] 21 07 00
                    add     hl,sp                           ;[0736] 39
                    call    $15db                           ;[0737] cd db 15
                    ld      de,$0049                        ;[073a] 11 49 00
                    and     a                               ;[073d] a7
                    sbc     hl,de                           ;[073e] ed 52
                    scf                                     ;[0740] 37
                    jr      nz,$0744                        ;[0741] 20 01
                    ccf                                     ;[0743] 3f
                    jp      c,$0783                         ;[0744] da 83 07
                    ld      hl,$0005                        ;[0747] 21 05 00
                    add     hl,sp                           ;[074a] 39
                    call    $15db                           ;[074b] cd db 15
                    ld      de,$0038                        ;[074e] 11 38 00
                    and     a                               ;[0751] a7
                    sbc     hl,de                           ;[0752] ed 52
                    scf                                     ;[0754] 37
                    jr      nz,$0758                        ;[0755] 20 01
                    ccf                                     ;[0757] 3f
                    jp      c,$0783                         ;[0758] da 83 07
                    ld      hl,$0003                        ;[075b] 21 03 00
                    add     hl,sp                           ;[075e] 39
                    call    $15db                           ;[075f] cd db 15
                    ld      de,$0041                        ;[0762] 11 41 00
                    and     a                               ;[0765] a7
                    sbc     hl,de                           ;[0766] ed 52
                    scf                                     ;[0768] 37
                    jr      nz,$076c                        ;[0769] 20 01
                    ccf                                     ;[076b] 3f
                    jp      c,$0783                         ;[076c] da 83 07
                    ld      hl,$0001                        ;[076f] 21 01 00
                    add     hl,sp                           ;[0772] 39
                    call    $15db                           ;[0773] cd db 15
                    ld      de,$00f3                        ;[0776] 11 f3 00
                    and     a                               ;[0779] a7
                    sbc     hl,de                           ;[077a] ed 52
                    scf                                     ;[077c] 37
                    jr      nz,$0780                        ;[077d] 20 01
                    ccf                                     ;[077f] 3f
                    jp      nc,$0788                        ;[0780] d2 88 07
                    ld      a,$0a                           ;[0783] 3e 0a
                    ld      ($4b2c),a                       ;[0785] 32 2c 4b
                    ld      hl,$000b                        ;[0788] 21 0b 00
                    add     hl,sp                           ;[078b] 39
                    xor     a                               ;[078c] af
                    ld      (hl),a                          ;[078d] 77
                    inc     hl                              ;[078e] 23
                    ld      (hl),a                          ;[078f] 77
                    jp      $079d                           ;[0790] c3 9d 07
                    ld      hl,$000b                        ;[0793] 21 0b 00
                    add     hl,sp                           ;[0796] 39
                    inc     (hl)                            ;[0797] 34
                    ld      a,(hl)                          ;[0798] 7e
                    inc     hl                              ;[0799] 23
                    jr      nz,$079d                        ;[079a] 20 01
                    inc     (hl)                            ;[079c] 34
                    ld      hl,$000b                        ;[079d] 21 0b 00
                    add     hl,sp                           ;[07a0] 39
                    call    $15db                           ;[07a1] cd db 15
                    ld      de,$0005                        ;[07a4] 11 05 00
                    and     a                               ;[07a7] a7
                    sbc     hl,de                           ;[07a8] ed 52
                    jp      c,$0793                         ;[07aa] da 93 07
                    ld      hl,$7000                        ;[07ad] 21 00 70
                    ld      (hl),$00                        ;[07b0] 36 00
                    ld      hl,$0000                        ;[07b2] 21 00 00
                    add     hl,sp                           ;[07b5] 39
                    push    hl                              ;[07b6] e5
                    ld      hl,$8008                        ;[07b7] 21 08 80
                    ld      a,(hl)                          ;[07ba] 7e
                    pop     de                              ;[07bb] d1
                    ld      (de),a                          ;[07bc] 12
                    pop     hl                              ;[07bd] e1
                    push    hl                              ;[07be] e5
                    ld      h,$00                           ;[07bf] 26 00
                    ld      a,$01                           ;[07c1] 3e 01
                    and     l                               ;[07c3] a5
                    ld      l,a                             ;[07c4] 6f
                    jr      nz,$07c8                        ;[07c5] 20 01
                    scf                                     ;[07c7] 37
                    jp      nc,$07d9                        ;[07c8] d2 d9 07
                    ld      hl,$0000                        ;[07cb] 21 00 00
                    add     hl,sp                           ;[07ce] 39
                    push    hl                              ;[07cf] e5
                    ld      hl,$8008                        ;[07d0] 21 08 80
                    ld      a,(hl)                          ;[07d3] 7e
                    pop     de                              ;[07d4] d1
                    ld      (de),a                          ;[07d5] 12
                    jp      $07bd                           ;[07d6] c3 bd 07
                    ld      hl,$7004                        ;[07d9] 21 04 70
                    ld      (hl),$00                        ;[07dc] 36 00
                    ld      hl,$0000                        ;[07de] 21 00 00
                    add     hl,sp                           ;[07e1] 39
                    push    hl                              ;[07e2] e5
                    ld      hl,$8008                        ;[07e3] 21 08 80
                    ld      a,(hl)                          ;[07e6] 7e
                    pop     de                              ;[07e7] d1
                    ld      (de),a                          ;[07e8] 12
                    pop     hl                              ;[07e9] e1
                    push    hl                              ;[07ea] e5
                    ld      h,$00                           ;[07eb] 26 00
                    ld      a,l                             ;[07ed] 7d
                    and     $01                             ;[07ee] e6 01
                    jp      z,$07f8                         ;[07f0] ca f8 07
                    ld      a,$0b                           ;[07f3] 3e 0b
                    ld      ($4b2c),a                       ;[07f5] 32 2c 4b
                    ld      hl,$000d                        ;[07f8] 21 0d 00
                    add     hl,sp                           ;[07fb] 39
                    xor     a                               ;[07fc] af
                    ld      (hl),a                          ;[07fd] 77
                    inc     hl                              ;[07fe] 23
                    ld      (hl),a                          ;[07ff] 77
                    jp      $080d                           ;[0800] c3 0d 08
                    ld      hl,$000d                        ;[0803] 21 0d 00
                    add     hl,sp                           ;[0806] 39
                    inc     (hl)                            ;[0807] 34
                    ld      a,(hl)                          ;[0808] 7e
                    inc     hl                              ;[0809] 23
                    jr      nz,$080d                        ;[080a] 20 01
                    inc     (hl)                            ;[080c] 34
                    ld      hl,$000d                        ;[080d] 21 0d 00
                    add     hl,sp                           ;[0810] 39
                    call    $15db                           ;[0811] cd db 15
                    ld      de,$02bc                        ;[0814] 11 bc 02
                    and     a                               ;[0817] a7
                    sbc     hl,de                           ;[0818] ed 52
                    jp      nc,$0852                        ;[081a] d2 52 08
                    ld      hl,$0009                        ;[081d] 21 09 00
                    add     hl,sp                           ;[0820] 39
                    call    $15db                           ;[0821] cd db 15
                    ld      a,$40                           ;[0824] 3e 40
                    add     h                               ;[0826] 84
                    ld      h,a                             ;[0827] 67
                    ex      de,hl                           ;[0828] eb
                    ld      hl,$000d                        ;[0829] 21 0d 00
                    add     hl,sp                           ;[082c] 39
                    call    $15db                           ;[082d] cd db 15
                    add     hl,de                           ;[0830] 19
                    ld      l,(hl)                          ;[0831] 6e
                    ld      h,$00                           ;[0832] 26 00
                    push    hl                              ;[0834] e5
                    ld      de,$4870                        ;[0835] 11 70 48
                    ld      hl,$000f                        ;[0838] 21 0f 00
                    add     hl,sp                           ;[083b] 39
                    call    $15db                           ;[083c] cd db 15
                    add     hl,de                           ;[083f] 19
                    ld      l,(hl)                          ;[0840] 6e
                    ld      h,$00                           ;[0841] 26 00
                    pop     de                              ;[0843] d1
                    call    $15d0                           ;[0844] cd d0 15
                    jp      nc,$0803                        ;[0847] d2 03 08
                    ld      a,$0c                           ;[084a] 3e 0c
                    ld      ($4b2c),a                       ;[084c] 32 2c 4b
                    jp      $0803                           ;[084f] c3 03 08
                    ld      hl,$000f                        ;[0852] 21 0f 00
                    add     hl,sp                           ;[0855] 39
                    ld      sp,hl                           ;[0856] f9
                    ret                                     ;[0857] c9

                    push    bc                              ;[0858] c5
                    push    bc                              ;[0859] c5
                    dec     sp                              ;[085a] 3b
                    ld      a,$05                           ;[085b] 3e 05
                    ld      ($4b2d),a                       ;[085d] 32 2d 4b
                    ld      hl,$0001                        ;[0860] 21 01 00
                    add     hl,sp                           ;[0863] 39
                    push    hl                              ;[0864] e5
                    ld      hl,$4870                        ;[0865] 21 70 48
                    ld      a,$b8                           ;[0868] 3e b8
                    add     h                               ;[086a] 84
                    ld      h,a                             ;[086b] 67
                    pop     de                              ;[086c] d1
                    call    $15e3                           ;[086d] cd e3 15
                    ld      hl,$0003                        ;[0870] 21 03 00
                    add     hl,sp                           ;[0873] 39
                    xor     a                               ;[0874] af
                    ld      (hl),a                          ;[0875] 77
                    inc     hl                              ;[0876] 23
                    ld      (hl),a                          ;[0877] 77
                    jp      $0885                           ;[0878] c3 85 08
                    ld      hl,$0003                        ;[087b] 21 03 00
                    add     hl,sp                           ;[087e] 39
                    inc     (hl)                            ;[087f] 34
                    ld      a,(hl)                          ;[0880] 7e
                    inc     hl                              ;[0881] 23
                    jr      nz,$0885                        ;[0882] 20 01
                    inc     (hl)                            ;[0884] 34
                    ld      hl,$0003                        ;[0885] 21 03 00
                    add     hl,sp                           ;[0888] 39
                    call    $15db                           ;[0889] cd db 15
                    ld      de,$0014                        ;[088c] 11 14 00
                    and     a                               ;[088f] a7
                    sbc     hl,de                           ;[0890] ed 52
                    jp      nc,$08a5                        ;[0892] d2 a5 08
                    ld      de,$4870                        ;[0895] 11 70 48
                    ld      hl,$0003                        ;[0898] 21 03 00
                    add     hl,sp                           ;[089b] 39
                    call    $15db                           ;[089c] cd db 15
                    add     hl,de                           ;[089f] 19
                    ld      (hl),$05                        ;[08a0] 36 05
                    jp      $087b                           ;[08a2] c3 7b 08
                    ld      hl,$0003                        ;[08a5] 21 03 00
                    add     hl,sp                           ;[08a8] 39
                    xor     a                               ;[08a9] af
                    ld      (hl),a                          ;[08aa] 77
                    inc     hl                              ;[08ab] 23
                    ld      (hl),a                          ;[08ac] 77
                    jp      $08ba                           ;[08ad] c3 ba 08
                    ld      hl,$0003                        ;[08b0] 21 03 00
                    add     hl,sp                           ;[08b3] 39
                    inc     (hl)                            ;[08b4] 34
                    ld      a,(hl)                          ;[08b5] 7e
                    inc     hl                              ;[08b6] 23
                    jr      nz,$08ba                        ;[08b7] 20 01
                    inc     (hl)                            ;[08b9] 34
                    ld      hl,$0003                        ;[08ba] 21 03 00
                    add     hl,sp                           ;[08bd] 39
                    call    $15db                           ;[08be] cd db 15
                    ld      de,$0014                        ;[08c1] 11 14 00
                    and     a                               ;[08c4] a7
                    sbc     hl,de                           ;[08c5] ed 52
                    jp      nc,$08e3                        ;[08c7] d2 e3 08
                    ld      hl,$0001                        ;[08ca] 21 01 00
                    add     hl,sp                           ;[08cd] 39
                    call    $15db                           ;[08ce] cd db 15
                    ld      a,$40                           ;[08d1] 3e 40
                    add     h                               ;[08d3] 84
                    ld      h,a                             ;[08d4] 67
                    ex      de,hl                           ;[08d5] eb
                    ld      hl,$0003                        ;[08d6] 21 03 00
                    add     hl,sp                           ;[08d9] 39
                    call    $15db                           ;[08da] cd db 15
                    add     hl,de                           ;[08dd] 19
                    ld      (hl),$00                        ;[08de] 36 00
                    jp      $08b0                           ;[08e0] c3 b0 08
                    ld      de,$8002                        ;[08e3] 11 02 80
                    ld      hl,$4870                        ;[08e6] 21 70 48
                    ld      a,l                             ;[08e9] 7d
                    ld      (de),a                          ;[08ea] 12
                    ld      hl,$8002                        ;[08eb] 21 02 80
                    push    hl                              ;[08ee] e5
                    ld      hl,$4870                        ;[08ef] 21 70 48
                    ld      l,h                             ;[08f2] 6c
                    pop     de                              ;[08f3] d1
                    ld      a,l                             ;[08f4] 7d
                    ld      (de),a                          ;[08f5] 12
                    ld      hl,$8003                        ;[08f6] 21 03 80
                    ld      (hl),$13                        ;[08f9] 36 13
                    ld      hl,$8003                        ;[08fb] 21 03 80
                    ld      (hl),$40                        ;[08fe] 36 40
                    ld      hl,$8008                        ;[0900] 21 08 80
                    ld      (hl),$42                        ;[0903] 36 42
                    ld      hl,$7001                        ;[0905] 21 01 70
                    ld      (hl),$00                        ;[0908] 36 00
                    pop     hl                              ;[090a] e1
                    push    hl                              ;[090b] e5
                    ld      h,$00                           ;[090c] 26 00
                    ld      a,$02                           ;[090e] 3e 02
                    and     l                               ;[0910] a5
                    ld      l,a                             ;[0911] 6f
                    jr      nz,$0915                        ;[0912] 20 01
                    scf                                     ;[0914] 37
                    jp      nc,$0926                        ;[0915] d2 26 09
                    ld      hl,$0000                        ;[0918] 21 00 00
                    add     hl,sp                           ;[091b] 39
                    push    hl                              ;[091c] e5
                    ld      hl,$8008                        ;[091d] 21 08 80
                    ld      a,(hl)                          ;[0920] 7e
                    pop     de                              ;[0921] d1
                    ld      (de),a                          ;[0922] 12
                    jp      $090a                           ;[0923] c3 0a 09
                    ld      hl,$7005                        ;[0926] 21 05 70
                    ld      (hl),$00                        ;[0929] 36 00
                    ld      hl,$0000                        ;[092b] 21 00 00
                    add     hl,sp                           ;[092e] 39
                    push    hl                              ;[092f] e5
                    ld      hl,$8008                        ;[0930] 21 08 80
                    ld      a,(hl)                          ;[0933] 7e
                    pop     de                              ;[0934] d1
                    ld      (de),a                          ;[0935] 12
                    pop     hl                              ;[0936] e1
                    push    hl                              ;[0937] e5
                    ld      h,$00                           ;[0938] 26 00
                    ld      a,l                             ;[093a] 7d
                    and     $01                             ;[093b] e6 01
                    jp      z,$0945                         ;[093d] ca 45 09
                    ld      a,$0d                           ;[0940] 3e 0d
                    ld      ($4b2c),a                       ;[0942] 32 2c 4b
                    ld      hl,$0003                        ;[0945] 21 03 00
                    add     hl,sp                           ;[0948] 39
                    xor     a                               ;[0949] af
                    ld      (hl),a                          ;[094a] 77
                    inc     hl                              ;[094b] 23
                    ld      (hl),a                          ;[094c] 77
                    jp      $095a                           ;[094d] c3 5a 09
                    ld      hl,$0003                        ;[0950] 21 03 00
                    add     hl,sp                           ;[0953] 39
                    inc     (hl)                            ;[0954] 34
                    ld      a,(hl)                          ;[0955] 7e
                    inc     hl                              ;[0956] 23
                    jr      nz,$095a                        ;[0957] 20 01
                    inc     (hl)                            ;[0959] 34
                    ld      hl,$0003                        ;[095a] 21 03 00
                    add     hl,sp                           ;[095d] 39
                    call    $15db                           ;[095e] cd db 15
                    ld      de,$02bc                        ;[0961] 11 bc 02
                    and     a                               ;[0964] a7
                    sbc     hl,de                           ;[0965] ed 52
                    jp      nc,$099f                        ;[0967] d2 9f 09
                    ld      hl,$0001                        ;[096a] 21 01 00
                    add     hl,sp                           ;[096d] 39
                    call    $15db                           ;[096e] cd db 15
                    ld      a,$40                           ;[0971] 3e 40
                    add     h                               ;[0973] 84
                    ld      h,a                             ;[0974] 67
                    ex      de,hl                           ;[0975] eb
                    ld      hl,$0003                        ;[0976] 21 03 00
                    add     hl,sp                           ;[0979] 39
                    call    $15db                           ;[097a] cd db 15
                    add     hl,de                           ;[097d] 19
                    ld      l,(hl)                          ;[097e] 6e
                    ld      h,$00                           ;[097f] 26 00
                    push    hl                              ;[0981] e5
                    ld      de,$4870                        ;[0982] 11 70 48
                    ld      hl,$0005                        ;[0985] 21 05 00
                    add     hl,sp                           ;[0988] 39
                    call    $15db                           ;[0989] cd db 15
                    add     hl,de                           ;[098c] 19
                    ld      l,(hl)                          ;[098d] 6e
                    ld      h,$00                           ;[098e] 26 00
                    pop     de                              ;[0990] d1
                    call    $15d0                           ;[0991] cd d0 15
                    jp      nc,$0950                        ;[0994] d2 50 09
                    ld      a,$0e                           ;[0997] 3e 0e
                    ld      ($4b2c),a                       ;[0999] 32 2c 4b
                    jp      $0950                           ;[099c] c3 50 09
                    inc     sp                              ;[099f] 33
                    pop     bc                              ;[09a0] c1
                    pop     bc                              ;[09a1] c1
                    ret                                     ;[09a2] c9

                    push    bc                              ;[09a3] c5
                    push    bc                              ;[09a4] c5
                    dec     sp                              ;[09a5] 3b
                    ld      a,$06                           ;[09a6] 3e 06
                    ld      ($4b2d),a                       ;[09a8] 32 2d 4b
                    ld      hl,$0001                        ;[09ab] 21 01 00
                    add     hl,sp                           ;[09ae] 39
                    push    hl                              ;[09af] e5
                    ld      hl,$4870                        ;[09b0] 21 70 48
                    ld      a,$b8                           ;[09b3] 3e b8
                    add     h                               ;[09b5] 84
                    ld      h,a                             ;[09b6] 67
                    pop     de                              ;[09b7] d1
                    call    $15e3                           ;[09b8] cd e3 15
                    ld      hl,$0003                        ;[09bb] 21 03 00
                    add     hl,sp                           ;[09be] 39
                    xor     a                               ;[09bf] af
                    ld      (hl),a                          ;[09c0] 77
                    inc     hl                              ;[09c1] 23
                    ld      (hl),a                          ;[09c2] 77
                    jp      $09d0                           ;[09c3] c3 d0 09
                    ld      hl,$0003                        ;[09c6] 21 03 00
                    add     hl,sp                           ;[09c9] 39
                    inc     (hl)                            ;[09ca] 34
                    ld      a,(hl)                          ;[09cb] 7e
                    inc     hl                              ;[09cc] 23
                    jr      nz,$09d0                        ;[09cd] 20 01
                    inc     (hl)                            ;[09cf] 34
                    ld      hl,$0003                        ;[09d0] 21 03 00
                    add     hl,sp                           ;[09d3] 39
                    call    $15db                           ;[09d4] cd db 15
                    ld      de,$0014                        ;[09d7] 11 14 00
                    and     a                               ;[09da] a7
                    sbc     hl,de                           ;[09db] ed 52
                    jp      nc,$09f0                        ;[09dd] d2 f0 09
                    ld      de,$4870                        ;[09e0] 11 70 48
                    ld      hl,$0003                        ;[09e3] 21 03 00
                    add     hl,sp                           ;[09e6] 39
                    call    $15db                           ;[09e7] cd db 15
                    add     hl,de                           ;[09ea] 19
                    ld      (hl),$06                        ;[09eb] 36 06
                    jp      $09c6                           ;[09ed] c3 c6 09
                    ld      hl,$0003                        ;[09f0] 21 03 00
                    add     hl,sp                           ;[09f3] 39
                    xor     a                               ;[09f4] af
                    ld      (hl),a                          ;[09f5] 77
                    inc     hl                              ;[09f6] 23
                    ld      (hl),a                          ;[09f7] 77
                    jp      $0a05                           ;[09f8] c3 05 0a
                    ld      hl,$0003                        ;[09fb] 21 03 00
                    add     hl,sp                           ;[09fe] 39
                    inc     (hl)                            ;[09ff] 34
                    ld      a,(hl)                          ;[0a00] 7e
                    inc     hl                              ;[0a01] 23
                    jr      nz,$0a05                        ;[0a02] 20 01
                    inc     (hl)                            ;[0a04] 34
                    ld      hl,$0003                        ;[0a05] 21 03 00
                    add     hl,sp                           ;[0a08] 39
                    call    $15db                           ;[0a09] cd db 15
                    ld      de,$0014                        ;[0a0c] 11 14 00
                    and     a                               ;[0a0f] a7
                    sbc     hl,de                           ;[0a10] ed 52
                    jp      nc,$0a2e                        ;[0a12] d2 2e 0a
                    ld      hl,$0001                        ;[0a15] 21 01 00
                    add     hl,sp                           ;[0a18] 39
                    call    $15db                           ;[0a19] cd db 15
                    ld      a,$40                           ;[0a1c] 3e 40
                    add     h                               ;[0a1e] 84
                    ld      h,a                             ;[0a1f] 67
                    ex      de,hl                           ;[0a20] eb
                    ld      hl,$0003                        ;[0a21] 21 03 00
                    add     hl,sp                           ;[0a24] 39
                    call    $15db                           ;[0a25] cd db 15
                    add     hl,de                           ;[0a28] 19
                    ld      (hl),$00                        ;[0a29] 36 00
                    jp      $09fb                           ;[0a2b] c3 fb 09
                    ld      de,$8002                        ;[0a2e] 11 02 80
                    ld      hl,$4870                        ;[0a31] 21 70 48
                    ld      a,l                             ;[0a34] 7d
                    ld      (de),a                          ;[0a35] 12
                    ld      hl,$8002                        ;[0a36] 21 02 80
                    push    hl                              ;[0a39] e5
                    ld      hl,$4870                        ;[0a3a] 21 70 48
                    ld      l,h                             ;[0a3d] 6c
                    pop     de                              ;[0a3e] d1
                    ld      a,l                             ;[0a3f] 7d
                    ld      (de),a                          ;[0a40] 12
                    ld      hl,$8003                        ;[0a41] 21 03 80
                    ld      (hl),$13                        ;[0a44] 36 13
                    ld      hl,$8003                        ;[0a46] 21 03 80
                    ld      (hl),$40                        ;[0a49] 36 40
                    ld      hl,$8008                        ;[0a4b] 21 08 80
                    ld      (hl),$43                        ;[0a4e] 36 43
                    ld      hl,$7001                        ;[0a50] 21 01 70
                    ld      (hl),$00                        ;[0a53] 36 00
                    pop     hl                              ;[0a55] e1
                    push    hl                              ;[0a56] e5
                    ld      h,$00                           ;[0a57] 26 00
                    ld      a,$02                           ;[0a59] 3e 02
                    and     l                               ;[0a5b] a5
                    ld      l,a                             ;[0a5c] 6f
                    jr      nz,$0a60                        ;[0a5d] 20 01
                    scf                                     ;[0a5f] 37
                    jp      nc,$0a71                        ;[0a60] d2 71 0a
                    ld      hl,$0000                        ;[0a63] 21 00 00
                    add     hl,sp                           ;[0a66] 39
                    push    hl                              ;[0a67] e5
                    ld      hl,$8008                        ;[0a68] 21 08 80
                    ld      a,(hl)                          ;[0a6b] 7e
                    pop     de                              ;[0a6c] d1
                    ld      (de),a                          ;[0a6d] 12
                    jp      $0a55                           ;[0a6e] c3 55 0a
                    ld      hl,$7005                        ;[0a71] 21 05 70
                    ld      (hl),$00                        ;[0a74] 36 00
                    ld      hl,$0000                        ;[0a76] 21 00 00
                    add     hl,sp                           ;[0a79] 39
                    push    hl                              ;[0a7a] e5
                    ld      hl,$8008                        ;[0a7b] 21 08 80
                    ld      a,(hl)                          ;[0a7e] 7e
                    pop     de                              ;[0a7f] d1
                    ld      (de),a                          ;[0a80] 12
                    pop     hl                              ;[0a81] e1
                    push    hl                              ;[0a82] e5
                    ld      h,$00                           ;[0a83] 26 00
                    ld      a,l                             ;[0a85] 7d
                    and     $01                             ;[0a86] e6 01
                    jp      z,$0a90                         ;[0a88] ca 90 0a
                    ld      a,$0d                           ;[0a8b] 3e 0d
                    ld      ($4b2c),a                       ;[0a8d] 32 2c 4b
                    ld      hl,$0003                        ;[0a90] 21 03 00
                    add     hl,sp                           ;[0a93] 39
                    xor     a                               ;[0a94] af
                    ld      (hl),a                          ;[0a95] 77
                    inc     hl                              ;[0a96] 23
                    ld      (hl),a                          ;[0a97] 77
                    jp      $0aa5                           ;[0a98] c3 a5 0a
                    ld      hl,$0003                        ;[0a9b] 21 03 00
                    add     hl,sp                           ;[0a9e] 39
                    inc     (hl)                            ;[0a9f] 34
                    ld      a,(hl)                          ;[0aa0] 7e
                    inc     hl                              ;[0aa1] 23
                    jr      nz,$0aa5                        ;[0aa2] 20 01
                    inc     (hl)                            ;[0aa4] 34
                    ld      hl,$0003                        ;[0aa5] 21 03 00
                    add     hl,sp                           ;[0aa8] 39
                    call    $15db                           ;[0aa9] cd db 15
                    ld      de,$02bc                        ;[0aac] 11 bc 02
                    and     a                               ;[0aaf] a7
                    sbc     hl,de                           ;[0ab0] ed 52
                    jp      nc,$0aea                        ;[0ab2] d2 ea 0a
                    ld      hl,$0001                        ;[0ab5] 21 01 00
                    add     hl,sp                           ;[0ab8] 39
                    call    $15db                           ;[0ab9] cd db 15
                    ld      a,$40                           ;[0abc] 3e 40
                    add     h                               ;[0abe] 84
                    ld      h,a                             ;[0abf] 67
                    ex      de,hl                           ;[0ac0] eb
                    ld      hl,$0003                        ;[0ac1] 21 03 00
                    add     hl,sp                           ;[0ac4] 39
                    call    $15db                           ;[0ac5] cd db 15
                    add     hl,de                           ;[0ac8] 19
                    ld      l,(hl)                          ;[0ac9] 6e
                    ld      h,$00                           ;[0aca] 26 00
                    push    hl                              ;[0acc] e5
                    ld      de,$4870                        ;[0acd] 11 70 48
                    ld      hl,$0005                        ;[0ad0] 21 05 00
                    add     hl,sp                           ;[0ad3] 39
                    call    $15db                           ;[0ad4] cd db 15
                    add     hl,de                           ;[0ad7] 19
                    ld      l,(hl)                          ;[0ad8] 6e
                    ld      h,$00                           ;[0ad9] 26 00
                    pop     de                              ;[0adb] d1
                    call    $15d0                           ;[0adc] cd d0 15
                    jp      nc,$0a9b                        ;[0adf] d2 9b 0a
                    ld      a,$0e                           ;[0ae2] 3e 0e
                    ld      ($4b2c),a                       ;[0ae4] 32 2c 4b
                    jp      $0a9b                           ;[0ae7] c3 9b 0a
                    inc     sp                              ;[0aea] 33
                    pop     bc                              ;[0aeb] c1
                    pop     bc                              ;[0aec] c1
                    ret                                     ;[0aed] c9

                    push    bc                              ;[0aee] c5
                    push    bc                              ;[0aef] c5
                    dec     sp                              ;[0af0] 3b
                    ld      a,$07                           ;[0af1] 3e 07
                    ld      ($4b2d),a                       ;[0af3] 32 2d 4b
                    ld      hl,$0001                        ;[0af6] 21 01 00
                    add     hl,sp                           ;[0af9] 39
                    push    hl                              ;[0afa] e5
                    ld      hl,$4870                        ;[0afb] 21 70 48
                    ld      a,$b8                           ;[0afe] 3e b8
                    add     h                               ;[0b00] 84
                    ld      h,a                             ;[0b01] 67
                    pop     de                              ;[0b02] d1
                    call    $15e3                           ;[0b03] cd e3 15
                    ld      hl,$0003                        ;[0b06] 21 03 00
                    add     hl,sp                           ;[0b09] 39
                    xor     a                               ;[0b0a] af
                    ld      (hl),a                          ;[0b0b] 77
                    inc     hl                              ;[0b0c] 23
                    ld      (hl),a                          ;[0b0d] 77
                    jp      $0b1b                           ;[0b0e] c3 1b 0b
                    ld      hl,$0003                        ;[0b11] 21 03 00
                    add     hl,sp                           ;[0b14] 39
                    inc     (hl)                            ;[0b15] 34
                    ld      a,(hl)                          ;[0b16] 7e
                    inc     hl                              ;[0b17] 23
                    jr      nz,$0b1b                        ;[0b18] 20 01
                    inc     (hl)                            ;[0b1a] 34
                    ld      hl,$0003                        ;[0b1b] 21 03 00
                    add     hl,sp                           ;[0b1e] 39
                    call    $15db                           ;[0b1f] cd db 15
                    ld      de,$0014                        ;[0b22] 11 14 00
                    and     a                               ;[0b25] a7
                    sbc     hl,de                           ;[0b26] ed 52
                    jp      nc,$0b4e                        ;[0b28] d2 4e 0b
                    ld      de,$4870                        ;[0b2b] 11 70 48
                    ld      hl,$0003                        ;[0b2e] 21 03 00
                    add     hl,sp                           ;[0b31] 39
                    call    $15db                           ;[0b32] cd db 15
                    add     hl,de                           ;[0b35] 19
                    ld      (hl),$07                        ;[0b36] 36 07
                    ld      hl,$4870                        ;[0b38] 21 70 48
                    push    hl                              ;[0b3b] e5
                    ld      hl,$0005                        ;[0b3c] 21 05 00
                    add     hl,sp                           ;[0b3f] 39
                    ld      c,(hl)                          ;[0b40] 4e
                    inc     hl                              ;[0b41] 23
                    ld      b,(hl)                          ;[0b42] 46
                    ld      hl,$0014                        ;[0b43] 21 14 00
                    add     hl,bc                           ;[0b46] 09
                    pop     de                              ;[0b47] d1
                    add     hl,de                           ;[0b48] 19
                    ld      (hl),$08                        ;[0b49] 36 08
                    jp      $0b11                           ;[0b4b] c3 11 0b
                    ld      hl,$0003                        ;[0b4e] 21 03 00
                    add     hl,sp                           ;[0b51] 39
                    xor     a                               ;[0b52] af
                    ld      (hl),a                          ;[0b53] 77
                    inc     hl                              ;[0b54] 23
                    ld      (hl),a                          ;[0b55] 77
                    jp      $0b63                           ;[0b56] c3 63 0b
                    ld      hl,$0003                        ;[0b59] 21 03 00
                    add     hl,sp                           ;[0b5c] 39
                    inc     (hl)                            ;[0b5d] 34
                    ld      a,(hl)                          ;[0b5e] 7e
                    inc     hl                              ;[0b5f] 23
                    jr      nz,$0b63                        ;[0b60] 20 01
                    inc     (hl)                            ;[0b62] 34
                    ld      hl,$0003                        ;[0b63] 21 03 00
                    add     hl,sp                           ;[0b66] 39
                    call    $15db                           ;[0b67] cd db 15
                    ld      de,$0014                        ;[0b6a] 11 14 00
                    and     a                               ;[0b6d] a7
                    sbc     hl,de                           ;[0b6e] ed 52
                    jp      nc,$0ba6                        ;[0b70] d2 a6 0b
                    ld      hl,$0001                        ;[0b73] 21 01 00
                    add     hl,sp                           ;[0b76] 39
                    call    $15db                           ;[0b77] cd db 15
                    ld      a,$40                           ;[0b7a] 3e 40
                    add     h                               ;[0b7c] 84
                    ld      h,a                             ;[0b7d] 67
                    ex      de,hl                           ;[0b7e] eb
                    ld      hl,$0003                        ;[0b7f] 21 03 00
                    add     hl,sp                           ;[0b82] 39
                    call    $15db                           ;[0b83] cd db 15
                    add     hl,de                           ;[0b86] 19
                    ld      (hl),$00                        ;[0b87] 36 00
                    ld      hl,$0001                        ;[0b89] 21 01 00
                    add     hl,sp                           ;[0b8c] 39
                    call    $15db                           ;[0b8d] cd db 15
                    ld      a,$40                           ;[0b90] 3e 40
                    add     h                               ;[0b92] 84
                    ld      h,a                             ;[0b93] 67
                    ex      de,hl                           ;[0b94] eb
                    ld      hl,$0003                        ;[0b95] 21 03 00
                    add     hl,sp                           ;[0b98] 39
                    call    $15db                           ;[0b99] cd db 15
                    add     hl,de                           ;[0b9c] 19
                    ld      bc,$0014                        ;[0b9d] 01 14 00
                    add     hl,bc                           ;[0ba0] 09
                    ld      (hl),$00                        ;[0ba1] 36 00
                    jp      $0b59                           ;[0ba3] c3 59 0b
                    ld      hl,$8008                        ;[0ba6] 21 08 80
                    ld      (hl),$00                        ;[0ba9] 36 00
                    ld      de,$8000                        ;[0bab] 11 00 80
                    ld      hl,$4870                        ;[0bae] 21 70 48
                    ld      a,l                             ;[0bb1] 7d
                    ld      (de),a                          ;[0bb2] 12
                    ld      hl,$8000                        ;[0bb3] 21 00 80
                    push    hl                              ;[0bb6] e5
                    ld      hl,$4870                        ;[0bb7] 21 70 48
                    ld      l,h                             ;[0bba] 6c
                    pop     de                              ;[0bbb] d1
                    ld      a,l                             ;[0bbc] 7d
                    ld      (de),a                          ;[0bbd] 12
                    ld      hl,$8001                        ;[0bbe] 21 01 80
                    ld      (hl),$13                        ;[0bc1] 36 13
                    ld      hl,$8001                        ;[0bc3] 21 01 80
                    ld      (hl),$40                        ;[0bc6] 36 40
                    ld      de,$8002                        ;[0bc8] 11 02 80
                    ld      hl,$4884                        ;[0bcb] 21 84 48
                    ld      a,l                             ;[0bce] 7d
                    ld      (de),a                          ;[0bcf] 12
                    ld      hl,$8002                        ;[0bd0] 21 02 80
                    push    hl                              ;[0bd3] e5
                    ld      hl,$4884                        ;[0bd4] 21 84 48
                    ld      l,h                             ;[0bd7] 6c
                    pop     de                              ;[0bd8] d1
                    ld      a,l                             ;[0bd9] 7d
                    ld      (de),a                          ;[0bda] 12
                    ld      hl,$8003                        ;[0bdb] 21 03 80
                    ld      (hl),$13                        ;[0bde] 36 13
                    ld      hl,$8003                        ;[0be0] 21 03 80
                    ld      (hl),$40                        ;[0be3] 36 40
                    ld      hl,$7000                        ;[0be5] 21 00 70
                    ld      (hl),$00                        ;[0be8] 36 00
                    ld      hl,$7001                        ;[0bea] 21 01 70
                    ld      (hl),$00                        ;[0bed] 36 00
                    ld      hl,$8008                        ;[0bef] 21 08 80
                    ld      (hl),$43                        ;[0bf2] 36 43
                    pop     hl                              ;[0bf4] e1
                    push    hl                              ;[0bf5] e5
                    ld      h,$00                           ;[0bf6] 26 00
                    ld      a,$03                           ;[0bf8] 3e 03
                    and     l                               ;[0bfa] a5
                    ld      l,a                             ;[0bfb] 6f
                    ld      a,l                             ;[0bfc] 7d
                    cp      $03                             ;[0bfd] fe 03
                    jp      z,$0c10                         ;[0bff] ca 10 0c
                    ld      hl,$0000                        ;[0c02] 21 00 00
                    add     hl,sp                           ;[0c05] 39
                    push    hl                              ;[0c06] e5
                    ld      hl,$8008                        ;[0c07] 21 08 80
                    ld      a,(hl)                          ;[0c0a] 7e
                    pop     de                              ;[0c0b] d1
                    ld      (de),a                          ;[0c0c] 12
                    jp      $0bf4                           ;[0c0d] c3 f4 0b
                    ld      hl,$7004                        ;[0c10] 21 04 70
                    ld      (hl),$00                        ;[0c13] 36 00
                    ld      hl,$7005                        ;[0c15] 21 05 70
                    ld      (hl),$00                        ;[0c18] 36 00
                    ld      hl,$0000                        ;[0c1a] 21 00 00
                    add     hl,sp                           ;[0c1d] 39
                    push    hl                              ;[0c1e] e5
                    ld      hl,$8008                        ;[0c1f] 21 08 80
                    ld      a,(hl)                          ;[0c22] 7e
                    pop     de                              ;[0c23] d1
                    ld      (de),a                          ;[0c24] 12
                    pop     hl                              ;[0c25] e1
                    push    hl                              ;[0c26] e5
                    ld      h,$00                           ;[0c27] 26 00
                    ld      a,l                             ;[0c29] 7d
                    and     $01                             ;[0c2a] e6 01
                    jp      z,$0c34                         ;[0c2c] ca 34 0c
                    ld      a,$0f                           ;[0c2f] 3e 0f
                    ld      ($4b2c),a                       ;[0c31] 32 2c 4b
                    ld      hl,$0003                        ;[0c34] 21 03 00
                    add     hl,sp                           ;[0c37] 39
                    xor     a                               ;[0c38] af
                    ld      (hl),a                          ;[0c39] 77
                    inc     hl                              ;[0c3a] 23
                    ld      (hl),a                          ;[0c3b] 77
                    jp      $0c49                           ;[0c3c] c3 49 0c
                    ld      hl,$0003                        ;[0c3f] 21 03 00
                    add     hl,sp                           ;[0c42] 39
                    inc     (hl)                            ;[0c43] 34
                    ld      a,(hl)                          ;[0c44] 7e
                    inc     hl                              ;[0c45] 23
                    jr      nz,$0c49                        ;[0c46] 20 01
                    inc     (hl)                            ;[0c48] 34
                    ld      hl,$0003                        ;[0c49] 21 03 00
                    add     hl,sp                           ;[0c4c] 39
                    call    $15db                           ;[0c4d] cd db 15
                    ld      de,$0028                        ;[0c50] 11 28 00
                    and     a                               ;[0c53] a7
                    sbc     hl,de                           ;[0c54] ed 52
                    jp      nc,$0c8e                        ;[0c56] d2 8e 0c
                    ld      hl,$0001                        ;[0c59] 21 01 00
                    add     hl,sp                           ;[0c5c] 39
                    call    $15db                           ;[0c5d] cd db 15
                    ld      a,$40                           ;[0c60] 3e 40
                    add     h                               ;[0c62] 84
                    ld      h,a                             ;[0c63] 67
                    ex      de,hl                           ;[0c64] eb
                    ld      hl,$0003                        ;[0c65] 21 03 00
                    add     hl,sp                           ;[0c68] 39
                    call    $15db                           ;[0c69] cd db 15
                    add     hl,de                           ;[0c6c] 19
                    ld      l,(hl)                          ;[0c6d] 6e
                    ld      h,$00                           ;[0c6e] 26 00
                    push    hl                              ;[0c70] e5
                    ld      de,$4870                        ;[0c71] 11 70 48
                    ld      hl,$0005                        ;[0c74] 21 05 00
                    add     hl,sp                           ;[0c77] 39
                    call    $15db                           ;[0c78] cd db 15
                    add     hl,de                           ;[0c7b] 19
                    ld      l,(hl)                          ;[0c7c] 6e
                    ld      h,$00                           ;[0c7d] 26 00
                    pop     de                              ;[0c7f] d1
                    call    $15d0                           ;[0c80] cd d0 15
                    jp      nc,$0c3f                        ;[0c83] d2 3f 0c
                    ld      a,$10                           ;[0c86] 3e 10
                    ld      ($4b2c),a                       ;[0c88] 32 2c 4b
                    jp      $0c3f                           ;[0c8b] c3 3f 0c
                    inc     sp                              ;[0c8e] 33
                    pop     bc                              ;[0c8f] c1
                    pop     bc                              ;[0c90] c1
                    ret                                     ;[0c91] c9

                    push    bc                              ;[0c92] c5
                    push    bc                              ;[0c93] c5
                    dec     sp                              ;[0c94] 3b
                    ld      a,$08                           ;[0c95] 3e 08
                    ld      ($4b2d),a                       ;[0c97] 32 2d 4b
                    ld      hl,$0001                        ;[0c9a] 21 01 00
                    add     hl,sp                           ;[0c9d] 39
                    push    hl                              ;[0c9e] e5
                    ld      hl,$4870                        ;[0c9f] 21 70 48
                    ld      a,$b8                           ;[0ca2] 3e b8
                    add     h                               ;[0ca4] 84
                    ld      h,a                             ;[0ca5] 67
                    pop     de                              ;[0ca6] d1
                    call    $15e3                           ;[0ca7] cd e3 15
                    ld      hl,$0003                        ;[0caa] 21 03 00
                    add     hl,sp                           ;[0cad] 39
                    xor     a                               ;[0cae] af
                    ld      (hl),a                          ;[0caf] 77
                    inc     hl                              ;[0cb0] 23
                    ld      (hl),a                          ;[0cb1] 77
                    jp      $0cbf                           ;[0cb2] c3 bf 0c
                    ld      hl,$0003                        ;[0cb5] 21 03 00
                    add     hl,sp                           ;[0cb8] 39
                    inc     (hl)                            ;[0cb9] 34
                    ld      a,(hl)                          ;[0cba] 7e
                    inc     hl                              ;[0cbb] 23
                    jr      nz,$0cbf                        ;[0cbc] 20 01
                    inc     (hl)                            ;[0cbe] 34
                    ld      hl,$0003                        ;[0cbf] 21 03 00
                    add     hl,sp                           ;[0cc2] 39
                    call    $15db                           ;[0cc3] cd db 15
                    ld      de,$0014                        ;[0cc6] 11 14 00
                    and     a                               ;[0cc9] a7
                    sbc     hl,de                           ;[0cca] ed 52
                    jp      nc,$0cf2                        ;[0ccc] d2 f2 0c
                    ld      de,$4870                        ;[0ccf] 11 70 48
                    ld      hl,$0003                        ;[0cd2] 21 03 00
                    add     hl,sp                           ;[0cd5] 39
                    call    $15db                           ;[0cd6] cd db 15
                    add     hl,de                           ;[0cd9] 19
                    ld      (hl),$09                        ;[0cda] 36 09
                    ld      hl,$4870                        ;[0cdc] 21 70 48
                    push    hl                              ;[0cdf] e5
                    ld      hl,$0005                        ;[0ce0] 21 05 00
                    add     hl,sp                           ;[0ce3] 39
                    ld      c,(hl)                          ;[0ce4] 4e
                    inc     hl                              ;[0ce5] 23
                    ld      b,(hl)                          ;[0ce6] 46
                    ld      hl,$0014                        ;[0ce7] 21 14 00
                    add     hl,bc                           ;[0cea] 09
                    pop     de                              ;[0ceb] d1
                    add     hl,de                           ;[0cec] 19
                    ld      (hl),$0a                        ;[0ced] 36 0a
                    jp      $0cb5                           ;[0cef] c3 b5 0c
                    ld      hl,$0003                        ;[0cf2] 21 03 00
                    add     hl,sp                           ;[0cf5] 39
                    xor     a                               ;[0cf6] af
                    ld      (hl),a                          ;[0cf7] 77
                    inc     hl                              ;[0cf8] 23
                    ld      (hl),a                          ;[0cf9] 77
                    jp      $0d07                           ;[0cfa] c3 07 0d
                    ld      hl,$0003                        ;[0cfd] 21 03 00
                    add     hl,sp                           ;[0d00] 39
                    inc     (hl)                            ;[0d01] 34
                    ld      a,(hl)                          ;[0d02] 7e
                    inc     hl                              ;[0d03] 23
                    jr      nz,$0d07                        ;[0d04] 20 01
                    inc     (hl)                            ;[0d06] 34
                    ld      hl,$0003                        ;[0d07] 21 03 00
                    add     hl,sp                           ;[0d0a] 39
                    call    $15db                           ;[0d0b] cd db 15
                    ld      de,$0014                        ;[0d0e] 11 14 00
                    and     a                               ;[0d11] a7
                    sbc     hl,de                           ;[0d12] ed 52
                    jp      nc,$0d4a                        ;[0d14] d2 4a 0d
                    ld      hl,$0001                        ;[0d17] 21 01 00
                    add     hl,sp                           ;[0d1a] 39
                    call    $15db                           ;[0d1b] cd db 15
                    ld      a,$40                           ;[0d1e] 3e 40
                    add     h                               ;[0d20] 84
                    ld      h,a                             ;[0d21] 67
                    ex      de,hl                           ;[0d22] eb
                    ld      hl,$0003                        ;[0d23] 21 03 00
                    add     hl,sp                           ;[0d26] 39
                    call    $15db                           ;[0d27] cd db 15
                    add     hl,de                           ;[0d2a] 19
                    ld      (hl),$00                        ;[0d2b] 36 00
                    ld      hl,$0001                        ;[0d2d] 21 01 00
                    add     hl,sp                           ;[0d30] 39
                    call    $15db                           ;[0d31] cd db 15
                    ld      a,$40                           ;[0d34] 3e 40
                    add     h                               ;[0d36] 84
                    ld      h,a                             ;[0d37] 67
                    ex      de,hl                           ;[0d38] eb
                    ld      hl,$0003                        ;[0d39] 21 03 00
                    add     hl,sp                           ;[0d3c] 39
                    call    $15db                           ;[0d3d] cd db 15
                    add     hl,de                           ;[0d40] 19
                    ld      bc,$0014                        ;[0d41] 01 14 00
                    add     hl,bc                           ;[0d44] 09
                    ld      (hl),$00                        ;[0d45] 36 00
                    jp      $0cfd                           ;[0d47] c3 fd 0c
                    ld      hl,$8008                        ;[0d4a] 21 08 80
                    ld      (hl),$00                        ;[0d4d] 36 00
                    ld      de,$8000                        ;[0d4f] 11 00 80
                    ld      hl,$4870                        ;[0d52] 21 70 48
                    ld      a,l                             ;[0d55] 7d
                    ld      (de),a                          ;[0d56] 12
                    ld      hl,$8000                        ;[0d57] 21 00 80
                    push    hl                              ;[0d5a] e5
                    ld      hl,$4870                        ;[0d5b] 21 70 48
                    ld      l,h                             ;[0d5e] 6c
                    pop     de                              ;[0d5f] d1
                    ld      a,l                             ;[0d60] 7d
                    ld      (de),a                          ;[0d61] 12
                    ld      hl,$8001                        ;[0d62] 21 01 80
                    ld      (hl),$13                        ;[0d65] 36 13
                    ld      hl,$8001                        ;[0d67] 21 01 80
                    ld      (hl),$40                        ;[0d6a] 36 40
                    ld      de,$8002                        ;[0d6c] 11 02 80
                    ld      hl,$4884                        ;[0d6f] 21 84 48
                    ld      a,l                             ;[0d72] 7d
                    ld      (de),a                          ;[0d73] 12
                    ld      hl,$8002                        ;[0d74] 21 02 80
                    push    hl                              ;[0d77] e5
                    ld      hl,$4884                        ;[0d78] 21 84 48
                    ld      l,h                             ;[0d7b] 6c
                    pop     de                              ;[0d7c] d1
                    ld      a,l                             ;[0d7d] 7d
                    ld      (de),a                          ;[0d7e] 12
                    ld      hl,$8003                        ;[0d7f] 21 03 80
                    ld      (hl),$13                        ;[0d82] 36 13
                    ld      hl,$8003                        ;[0d84] 21 03 80
                    ld      (hl),$40                        ;[0d87] 36 40
                    ld      hl,$7000                        ;[0d89] 21 00 70
                    ld      (hl),$00                        ;[0d8c] 36 00
                    ld      hl,$7001                        ;[0d8e] 21 01 70
                    ld      (hl),$00                        ;[0d91] 36 00
                    ld      hl,$8008                        ;[0d93] 21 08 80
                    ld      (hl),$42                        ;[0d96] 36 42
                    pop     hl                              ;[0d98] e1
                    push    hl                              ;[0d99] e5
                    ld      h,$00                           ;[0d9a] 26 00
                    ld      a,$02                           ;[0d9c] 3e 02
                    and     l                               ;[0d9e] a5
                    ld      l,a                             ;[0d9f] 6f
                    ld      a,l                             ;[0da0] 7d
                    cp      $02                             ;[0da1] fe 02
                    jp      z,$0db4                         ;[0da3] ca b4 0d
                    ld      hl,$0000                        ;[0da6] 21 00 00
                    add     hl,sp                           ;[0da9] 39
                    push    hl                              ;[0daa] e5
                    ld      hl,$8008                        ;[0dab] 21 08 80
                    ld      a,(hl)                          ;[0dae] 7e
                    pop     de                              ;[0daf] d1
                    ld      (de),a                          ;[0db0] 12
                    jp      $0d98                           ;[0db1] c3 98 0d
                    ld      hl,$8008                        ;[0db4] 21 08 80
                    ld      (hl),$41                        ;[0db7] 36 41
                    pop     hl                              ;[0db9] e1
                    push    hl                              ;[0dba] e5
                    ld      h,$00                           ;[0dbb] 26 00
                    ld      a,$01                           ;[0dbd] 3e 01
                    and     l                               ;[0dbf] a5
                    ld      l,a                             ;[0dc0] 6f
                    ld      a,l                             ;[0dc1] 7d
                    cp      $01                             ;[0dc2] fe 01
                    jp      z,$0dd5                         ;[0dc4] ca d5 0d
                    ld      hl,$0000                        ;[0dc7] 21 00 00
                    add     hl,sp                           ;[0dca] 39
                    push    hl                              ;[0dcb] e5
                    ld      hl,$8008                        ;[0dcc] 21 08 80
                    ld      a,(hl)                          ;[0dcf] 7e
                    pop     de                              ;[0dd0] d1
                    ld      (de),a                          ;[0dd1] 12
                    jp      $0db9                           ;[0dd2] c3 b9 0d
                    ld      hl,$7004                        ;[0dd5] 21 04 70
                    ld      (hl),$00                        ;[0dd8] 36 00
                    ld      hl,$7005                        ;[0dda] 21 05 70
                    ld      (hl),$00                        ;[0ddd] 36 00
                    ld      hl,$0003                        ;[0ddf] 21 03 00
                    add     hl,sp                           ;[0de2] 39
                    xor     a                               ;[0de3] af
                    ld      (hl),a                          ;[0de4] 77
                    inc     hl                              ;[0de5] 23
                    ld      (hl),a                          ;[0de6] 77
                    jp      $0df4                           ;[0de7] c3 f4 0d
                    ld      hl,$0003                        ;[0dea] 21 03 00
                    add     hl,sp                           ;[0ded] 39
                    inc     (hl)                            ;[0dee] 34
                    ld      a,(hl)                          ;[0def] 7e
                    inc     hl                              ;[0df0] 23
                    jr      nz,$0df4                        ;[0df1] 20 01
                    inc     (hl)                            ;[0df3] 34
                    ld      hl,$0003                        ;[0df4] 21 03 00
                    add     hl,sp                           ;[0df7] 39
                    call    $15db                           ;[0df8] cd db 15
                    ld      de,$0028                        ;[0dfb] 11 28 00
                    and     a                               ;[0dfe] a7
                    sbc     hl,de                           ;[0dff] ed 52
                    jp      nc,$0e39                        ;[0e01] d2 39 0e
                    ld      hl,$0001                        ;[0e04] 21 01 00
                    add     hl,sp                           ;[0e07] 39
                    call    $15db                           ;[0e08] cd db 15
                    ld      a,$40                           ;[0e0b] 3e 40
                    add     h                               ;[0e0d] 84
                    ld      h,a                             ;[0e0e] 67
                    ex      de,hl                           ;[0e0f] eb
                    ld      hl,$0003                        ;[0e10] 21 03 00
                    add     hl,sp                           ;[0e13] 39
                    call    $15db                           ;[0e14] cd db 15
                    add     hl,de                           ;[0e17] 19
                    ld      l,(hl)                          ;[0e18] 6e
                    ld      h,$00                           ;[0e19] 26 00
                    push    hl                              ;[0e1b] e5
                    ld      de,$4870                        ;[0e1c] 11 70 48
                    ld      hl,$0005                        ;[0e1f] 21 05 00
                    add     hl,sp                           ;[0e22] 39
                    call    $15db                           ;[0e23] cd db 15
                    add     hl,de                           ;[0e26] 19
                    ld      l,(hl)                          ;[0e27] 6e
                    ld      h,$00                           ;[0e28] 26 00
                    pop     de                              ;[0e2a] d1
                    call    $15d0                           ;[0e2b] cd d0 15
                    jp      nc,$0dea                        ;[0e2e] d2 ea 0d
                    ld      a,$10                           ;[0e31] 3e 10
                    ld      ($4b2c),a                       ;[0e33] 32 2c 4b
                    jp      $0dea                           ;[0e36] c3 ea 0d
                    inc     sp                              ;[0e39] 33
                    pop     bc                              ;[0e3a] c1
                    pop     bc                              ;[0e3b] c1
                    ret                                     ;[0e3c] c9

                    push    bc                              ;[0e3d] c5
                    push    bc                              ;[0e3e] c5
                    dec     sp                              ;[0e3f] 3b
                    ld      a,$09                           ;[0e40] 3e 09
                    ld      ($4b2d),a                       ;[0e42] 32 2d 4b
                    ld      hl,$0001                        ;[0e45] 21 01 00
                    add     hl,sp                           ;[0e48] 39
                    push    hl                              ;[0e49] e5
                    ld      hl,$4870                        ;[0e4a] 21 70 48
                    ld      a,$b8                           ;[0e4d] 3e b8
                    add     h                               ;[0e4f] 84
                    ld      h,a                             ;[0e50] 67
                    pop     de                              ;[0e51] d1
                    call    $15e3                           ;[0e52] cd e3 15
                    ld      hl,$0003                        ;[0e55] 21 03 00
                    add     hl,sp                           ;[0e58] 39
                    xor     a                               ;[0e59] af
                    ld      (hl),a                          ;[0e5a] 77
                    inc     hl                              ;[0e5b] 23
                    ld      (hl),a                          ;[0e5c] 77
                    jp      $0e6a                           ;[0e5d] c3 6a 0e
                    ld      hl,$0003                        ;[0e60] 21 03 00
                    add     hl,sp                           ;[0e63] 39
                    inc     (hl)                            ;[0e64] 34
                    ld      a,(hl)                          ;[0e65] 7e
                    inc     hl                              ;[0e66] 23
                    jr      nz,$0e6a                        ;[0e67] 20 01
                    inc     (hl)                            ;[0e69] 34
                    ld      hl,$0003                        ;[0e6a] 21 03 00
                    add     hl,sp                           ;[0e6d] 39
                    call    $15db                           ;[0e6e] cd db 15
                    ld      de,$0014                        ;[0e71] 11 14 00
                    and     a                               ;[0e74] a7
                    sbc     hl,de                           ;[0e75] ed 52
                    jp      nc,$0e9d                        ;[0e77] d2 9d 0e
                    ld      de,$4870                        ;[0e7a] 11 70 48
                    ld      hl,$0003                        ;[0e7d] 21 03 00
                    add     hl,sp                           ;[0e80] 39
                    call    $15db                           ;[0e81] cd db 15
                    add     hl,de                           ;[0e84] 19
                    ld      (hl),$09                        ;[0e85] 36 09
                    ld      hl,$4870                        ;[0e87] 21 70 48
                    push    hl                              ;[0e8a] e5
                    ld      hl,$0005                        ;[0e8b] 21 05 00
                    add     hl,sp                           ;[0e8e] 39
                    ld      c,(hl)                          ;[0e8f] 4e
                    inc     hl                              ;[0e90] 23
                    ld      b,(hl)                          ;[0e91] 46
                    ld      hl,$0014                        ;[0e92] 21 14 00
                    add     hl,bc                           ;[0e95] 09
                    pop     de                              ;[0e96] d1
                    add     hl,de                           ;[0e97] 19
                    ld      (hl),$0a                        ;[0e98] 36 0a
                    jp      $0e60                           ;[0e9a] c3 60 0e
                    ld      hl,$0003                        ;[0e9d] 21 03 00
                    add     hl,sp                           ;[0ea0] 39
                    xor     a                               ;[0ea1] af
                    ld      (hl),a                          ;[0ea2] 77
                    inc     hl                              ;[0ea3] 23
                    ld      (hl),a                          ;[0ea4] 77
                    jp      $0eb2                           ;[0ea5] c3 b2 0e
                    ld      hl,$0003                        ;[0ea8] 21 03 00
                    add     hl,sp                           ;[0eab] 39
                    inc     (hl)                            ;[0eac] 34
                    ld      a,(hl)                          ;[0ead] 7e
                    inc     hl                              ;[0eae] 23
                    jr      nz,$0eb2                        ;[0eaf] 20 01
                    inc     (hl)                            ;[0eb1] 34
                    ld      hl,$0003                        ;[0eb2] 21 03 00
                    add     hl,sp                           ;[0eb5] 39
                    call    $15db                           ;[0eb6] cd db 15
                    ld      de,$0014                        ;[0eb9] 11 14 00
                    and     a                               ;[0ebc] a7
                    sbc     hl,de                           ;[0ebd] ed 52
                    jp      nc,$0ef5                        ;[0ebf] d2 f5 0e
                    ld      hl,$0001                        ;[0ec2] 21 01 00
                    add     hl,sp                           ;[0ec5] 39
                    call    $15db                           ;[0ec6] cd db 15
                    ld      a,$40                           ;[0ec9] 3e 40
                    add     h                               ;[0ecb] 84
                    ld      h,a                             ;[0ecc] 67
                    ex      de,hl                           ;[0ecd] eb
                    ld      hl,$0003                        ;[0ece] 21 03 00
                    add     hl,sp                           ;[0ed1] 39
                    call    $15db                           ;[0ed2] cd db 15
                    add     hl,de                           ;[0ed5] 19
                    ld      (hl),$00                        ;[0ed6] 36 00
                    ld      hl,$0001                        ;[0ed8] 21 01 00
                    add     hl,sp                           ;[0edb] 39
                    call    $15db                           ;[0edc] cd db 15
                    ld      a,$40                           ;[0edf] 3e 40
                    add     h                               ;[0ee1] 84
                    ld      h,a                             ;[0ee2] 67
                    ex      de,hl                           ;[0ee3] eb
                    ld      hl,$0003                        ;[0ee4] 21 03 00
                    add     hl,sp                           ;[0ee7] 39
                    call    $15db                           ;[0ee8] cd db 15
                    add     hl,de                           ;[0eeb] 19
                    ld      bc,$0014                        ;[0eec] 01 14 00
                    add     hl,bc                           ;[0eef] 09
                    ld      (hl),$00                        ;[0ef0] 36 00
                    jp      $0ea8                           ;[0ef2] c3 a8 0e
                    ld      hl,$8008                        ;[0ef5] 21 08 80
                    ld      (hl),$00                        ;[0ef8] 36 00
                    ld      de,$8000                        ;[0efa] 11 00 80
                    ld      hl,$4870                        ;[0efd] 21 70 48
                    ld      a,l                             ;[0f00] 7d
                    ld      (de),a                          ;[0f01] 12
                    ld      hl,$8000                        ;[0f02] 21 00 80
                    push    hl                              ;[0f05] e5
                    ld      hl,$4870                        ;[0f06] 21 70 48
                    ld      l,h                             ;[0f09] 6c
                    pop     de                              ;[0f0a] d1
                    ld      a,l                             ;[0f0b] 7d
                    ld      (de),a                          ;[0f0c] 12
                    ld      hl,$8001                        ;[0f0d] 21 01 80
                    ld      (hl),$13                        ;[0f10] 36 13
                    ld      hl,$8001                        ;[0f12] 21 01 80
                    ld      (hl),$40                        ;[0f15] 36 40
                    ld      de,$8002                        ;[0f17] 11 02 80
                    ld      hl,$4884                        ;[0f1a] 21 84 48
                    ld      a,l                             ;[0f1d] 7d
                    ld      (de),a                          ;[0f1e] 12
                    ld      hl,$8002                        ;[0f1f] 21 02 80
                    push    hl                              ;[0f22] e5
                    ld      hl,$4884                        ;[0f23] 21 84 48
                    ld      l,h                             ;[0f26] 6c
                    pop     de                              ;[0f27] d1
                    ld      a,l                             ;[0f28] 7d
                    ld      (de),a                          ;[0f29] 12
                    ld      hl,$8003                        ;[0f2a] 21 03 80
                    ld      (hl),$13                        ;[0f2d] 36 13
                    ld      hl,$8003                        ;[0f2f] 21 03 80
                    ld      (hl),$40                        ;[0f32] 36 40
                    ld      hl,$7000                        ;[0f34] 21 00 70
                    ld      (hl),$00                        ;[0f37] 36 00
                    ld      hl,$7001                        ;[0f39] 21 01 70
                    ld      (hl),$00                        ;[0f3c] 36 00
                    ld      hl,$8008                        ;[0f3e] 21 08 80
                    ld      (hl),$53                        ;[0f41] 36 53
                    pop     hl                              ;[0f43] e1
                    push    hl                              ;[0f44] e5
                    ld      h,$00                           ;[0f45] 26 00
                    ld      a,$03                           ;[0f47] 3e 03
                    and     l                               ;[0f49] a5
                    ld      l,a                             ;[0f4a] 6f
                    ld      a,l                             ;[0f4b] 7d
                    cp      $03                             ;[0f4c] fe 03
                    jp      z,$0f5f                         ;[0f4e] ca 5f 0f
                    ld      hl,$0000                        ;[0f51] 21 00 00
                    add     hl,sp                           ;[0f54] 39
                    push    hl                              ;[0f55] e5
                    ld      hl,$8008                        ;[0f56] 21 08 80
                    ld      a,(hl)                          ;[0f59] 7e
                    pop     de                              ;[0f5a] d1
                    ld      (de),a                          ;[0f5b] 12
                    jp      $0f43                           ;[0f5c] c3 43 0f
                    ld      hl,$7004                        ;[0f5f] 21 04 70
                    ld      (hl),$00                        ;[0f62] 36 00
                    ld      hl,$7005                        ;[0f64] 21 05 70
                    ld      (hl),$00                        ;[0f67] 36 00
                    ld      hl,$0003                        ;[0f69] 21 03 00
                    add     hl,sp                           ;[0f6c] 39
                    xor     a                               ;[0f6d] af
                    ld      (hl),a                          ;[0f6e] 77
                    inc     hl                              ;[0f6f] 23
                    ld      (hl),a                          ;[0f70] 77
                    jp      $0f7e                           ;[0f71] c3 7e 0f
                    ld      hl,$0003                        ;[0f74] 21 03 00
                    add     hl,sp                           ;[0f77] 39
                    inc     (hl)                            ;[0f78] 34
                    ld      a,(hl)                          ;[0f79] 7e
                    inc     hl                              ;[0f7a] 23
                    jr      nz,$0f7e                        ;[0f7b] 20 01
                    inc     (hl)                            ;[0f7d] 34
                    ld      hl,$0003                        ;[0f7e] 21 03 00
                    add     hl,sp                           ;[0f81] 39
                    call    $15db                           ;[0f82] cd db 15
                    ld      de,$0028                        ;[0f85] 11 28 00
                    and     a                               ;[0f88] a7
                    sbc     hl,de                           ;[0f89] ed 52
                    jp      nc,$0fc3                        ;[0f8b] d2 c3 0f
                    ld      hl,$0001                        ;[0f8e] 21 01 00
                    add     hl,sp                           ;[0f91] 39
                    call    $15db                           ;[0f92] cd db 15
                    ld      a,$40                           ;[0f95] 3e 40
                    add     h                               ;[0f97] 84
                    ld      h,a                             ;[0f98] 67
                    ex      de,hl                           ;[0f99] eb
                    ld      hl,$0003                        ;[0f9a] 21 03 00
                    add     hl,sp                           ;[0f9d] 39
                    call    $15db                           ;[0f9e] cd db 15
                    add     hl,de                           ;[0fa1] 19
                    ld      l,(hl)                          ;[0fa2] 6e
                    ld      h,$00                           ;[0fa3] 26 00
                    push    hl                              ;[0fa5] e5
                    ld      de,$4870                        ;[0fa6] 11 70 48
                    ld      hl,$0005                        ;[0fa9] 21 05 00
                    add     hl,sp                           ;[0fac] 39
                    call    $15db                           ;[0fad] cd db 15
                    add     hl,de                           ;[0fb0] 19
                    ld      l,(hl)                          ;[0fb1] 6e
                    ld      h,$00                           ;[0fb2] 26 00
                    pop     de                              ;[0fb4] d1
                    call    $15d0                           ;[0fb5] cd d0 15
                    jp      nc,$0f74                        ;[0fb8] d2 74 0f
                    ld      a,$10                           ;[0fbb] 3e 10
                    ld      ($4b2c),a                       ;[0fbd] 32 2c 4b
                    jp      $0f74                           ;[0fc0] c3 74 0f
                    inc     sp                              ;[0fc3] 33
                    pop     bc                              ;[0fc4] c1
                    pop     bc                              ;[0fc5] c1
                    ret                                     ;[0fc6] c9

                    push    bc                              ;[0fc7] c5
                    push    bc                              ;[0fc8] c5
                    dec     sp                              ;[0fc9] 3b
                    ld      a,$0a                           ;[0fca] 3e 0a
                    ld      ($4b2d),a                       ;[0fcc] 32 2d 4b
                    ld      hl,$0001                        ;[0fcf] 21 01 00
                    add     hl,sp                           ;[0fd2] 39
                    push    hl                              ;[0fd3] e5
                    ld      hl,$4870                        ;[0fd4] 21 70 48
                    ld      a,$b8                           ;[0fd7] 3e b8
                    add     h                               ;[0fd9] 84
                    ld      h,a                             ;[0fda] 67
                    pop     de                              ;[0fdb] d1
                    call    $15e3                           ;[0fdc] cd e3 15
                    ld      hl,$0003                        ;[0fdf] 21 03 00
                    add     hl,sp                           ;[0fe2] 39
                    xor     a                               ;[0fe3] af
                    ld      (hl),a                          ;[0fe4] 77
                    inc     hl                              ;[0fe5] 23
                    ld      (hl),a                          ;[0fe6] 77
                    jp      $0ff4                           ;[0fe7] c3 f4 0f
                    ld      hl,$0003                        ;[0fea] 21 03 00
                    add     hl,sp                           ;[0fed] 39
                    inc     (hl)                            ;[0fee] 34
                    ld      a,(hl)                          ;[0fef] 7e
                    inc     hl                              ;[0ff0] 23
                    jr      nz,$0ff4                        ;[0ff1] 20 01
                    inc     (hl)                            ;[0ff3] 34
                    ld      hl,$0003                        ;[0ff4] 21 03 00
                    add     hl,sp                           ;[0ff7] 39
                    call    $15db                           ;[0ff8] cd db 15
                    ld      de,$0014                        ;[0ffb] 11 14 00
                    and     a                               ;[0ffe] a7
                    sbc     hl,de                           ;[0fff] ed 52
                    jp      nc,$104d                        ;[1001] d2 4d 10
                    ld      de,$4870                        ;[1004] 11 70 48
                    ld      hl,$0003                        ;[1007] 21 03 00
                    add     hl,sp                           ;[100a] 39
                    call    $15db                           ;[100b] cd db 15
                    add     hl,de                           ;[100e] 19
                    ld      (hl),$0b                        ;[100f] 36 0b
                    ld      hl,$4870                        ;[1011] 21 70 48
                    push    hl                              ;[1014] e5
                    ld      hl,$0005                        ;[1015] 21 05 00
                    add     hl,sp                           ;[1018] 39
                    ld      c,(hl)                          ;[1019] 4e
                    inc     hl                              ;[101a] 23
                    ld      b,(hl)                          ;[101b] 46
                    ld      hl,$0014                        ;[101c] 21 14 00
                    add     hl,bc                           ;[101f] 09
                    pop     de                              ;[1020] d1
                    add     hl,de                           ;[1021] 19
                    ld      (hl),$0c                        ;[1022] 36 0c
                    ld      hl,$4870                        ;[1024] 21 70 48
                    push    hl                              ;[1027] e5
                    ld      hl,$0005                        ;[1028] 21 05 00
                    add     hl,sp                           ;[102b] 39
                    ld      c,(hl)                          ;[102c] 4e
                    inc     hl                              ;[102d] 23
                    ld      b,(hl)                          ;[102e] 46
                    ld      hl,$0028                        ;[102f] 21 28 00
                    add     hl,bc                           ;[1032] 09
                    pop     de                              ;[1033] d1
                    add     hl,de                           ;[1034] 19
                    ld      (hl),$0d                        ;[1035] 36 0d
                    ld      hl,$4870                        ;[1037] 21 70 48
                    push    hl                              ;[103a] e5
                    ld      hl,$0005                        ;[103b] 21 05 00
                    add     hl,sp                           ;[103e] 39
                    ld      c,(hl)                          ;[103f] 4e
                    inc     hl                              ;[1040] 23
                    ld      b,(hl)                          ;[1041] 46
                    ld      hl,$003c                        ;[1042] 21 3c 00
                    add     hl,bc                           ;[1045] 09
                    pop     de                              ;[1046] d1
                    add     hl,de                           ;[1047] 19
                    ld      (hl),$0e                        ;[1048] 36 0e
                    jp      $0fea                           ;[104a] c3 ea 0f
                    ld      hl,$0003                        ;[104d] 21 03 00
                    add     hl,sp                           ;[1050] 39
                    xor     a                               ;[1051] af
                    ld      (hl),a                          ;[1052] 77
                    inc     hl                              ;[1053] 23
                    ld      (hl),a                          ;[1054] 77
                    jp      $1062                           ;[1055] c3 62 10
                    ld      hl,$0003                        ;[1058] 21 03 00
                    add     hl,sp                           ;[105b] 39
                    inc     (hl)                            ;[105c] 34
                    ld      a,(hl)                          ;[105d] 7e
                    inc     hl                              ;[105e] 23
                    jr      nz,$1062                        ;[105f] 20 01
                    inc     (hl)                            ;[1061] 34
                    ld      hl,$0003                        ;[1062] 21 03 00
                    add     hl,sp                           ;[1065] 39
                    call    $15db                           ;[1066] cd db 15
                    ld      de,$0050                        ;[1069] 11 50 00
                    and     a                               ;[106c] a7
                    sbc     hl,de                           ;[106d] ed 52
                    jp      nc,$108b                        ;[106f] d2 8b 10
                    ld      hl,$0001                        ;[1072] 21 01 00
                    add     hl,sp                           ;[1075] 39
                    call    $15db                           ;[1076] cd db 15
                    ld      a,$40                           ;[1079] 3e 40
                    add     h                               ;[107b] 84
                    ld      h,a                             ;[107c] 67
                    ex      de,hl                           ;[107d] eb
                    ld      hl,$0003                        ;[107e] 21 03 00
                    add     hl,sp                           ;[1081] 39
                    call    $15db                           ;[1082] cd db 15
                    add     hl,de                           ;[1085] 19
                    ld      (hl),$00                        ;[1086] 36 00
                    jp      $1058                           ;[1088] c3 58 10
                    ld      hl,$8008                        ;[108b] 21 08 80
                    ld      (hl),$00                        ;[108e] 36 00
                    ld      de,$8000                        ;[1090] 11 00 80
                    ld      hl,$4870                        ;[1093] 21 70 48
                    ld      a,l                             ;[1096] 7d
                    ld      (de),a                          ;[1097] 12
                    ld      hl,$8000                        ;[1098] 21 00 80
                    push    hl                              ;[109b] e5
                    ld      hl,$4870                        ;[109c] 21 70 48
                    ld      l,h                             ;[109f] 6c
                    pop     de                              ;[10a0] d1
                    ld      a,l                             ;[10a1] 7d
                    ld      (de),a                          ;[10a2] 12
                    ld      hl,$8001                        ;[10a3] 21 01 80
                    ld      (hl),$13                        ;[10a6] 36 13
                    ld      hl,$8001                        ;[10a8] 21 01 80
                    ld      (hl),$40                        ;[10ab] 36 40
                    ld      de,$8002                        ;[10ad] 11 02 80
                    ld      hl,$4884                        ;[10b0] 21 84 48
                    ld      a,l                             ;[10b3] 7d
                    ld      (de),a                          ;[10b4] 12
                    ld      hl,$8002                        ;[10b5] 21 02 80
                    push    hl                              ;[10b8] e5
                    ld      hl,$4884                        ;[10b9] 21 84 48
                    ld      l,h                             ;[10bc] 6c
                    pop     de                              ;[10bd] d1
                    ld      a,l                             ;[10be] 7d
                    ld      (de),a                          ;[10bf] 12
                    ld      hl,$8003                        ;[10c0] 21 03 80
                    ld      (hl),$13                        ;[10c3] 36 13
                    ld      hl,$8003                        ;[10c5] 21 03 80
                    ld      (hl),$40                        ;[10c8] 36 40
                    ld      de,$8004                        ;[10ca] 11 04 80
                    ld      hl,$4898                        ;[10cd] 21 98 48
                    ld      a,l                             ;[10d0] 7d
                    ld      (de),a                          ;[10d1] 12
                    ld      hl,$8004                        ;[10d2] 21 04 80
                    push    hl                              ;[10d5] e5
                    ld      hl,$4898                        ;[10d6] 21 98 48
                    ld      l,h                             ;[10d9] 6c
                    pop     de                              ;[10da] d1
                    ld      a,l                             ;[10db] 7d
                    ld      (de),a                          ;[10dc] 12
                    ld      hl,$8005                        ;[10dd] 21 05 80
                    ld      (hl),$13                        ;[10e0] 36 13
                    ld      hl,$8005                        ;[10e2] 21 05 80
                    ld      (hl),$40                        ;[10e5] 36 40
                    ld      de,$8006                        ;[10e7] 11 06 80
                    ld      hl,$48ac                        ;[10ea] 21 ac 48
                    ld      a,l                             ;[10ed] 7d
                    ld      (de),a                          ;[10ee] 12
                    ld      hl,$8006                        ;[10ef] 21 06 80
                    push    hl                              ;[10f2] e5
                    ld      hl,$48ac                        ;[10f3] 21 ac 48
                    ld      l,h                             ;[10f6] 6c
                    pop     de                              ;[10f7] d1
                    ld      a,l                             ;[10f8] 7d
                    ld      (de),a                          ;[10f9] 12
                    ld      hl,$8007                        ;[10fa] 21 07 80
                    ld      (hl),$13                        ;[10fd] 36 13
                    ld      hl,$8007                        ;[10ff] 21 07 80
                    ld      (hl),$40                        ;[1102] 36 40
                    ld      hl,$7000                        ;[1104] 21 00 70
                    ld      (hl),$00                        ;[1107] 36 00
                    ld      hl,$7001                        ;[1109] 21 01 70
                    ld      (hl),$00                        ;[110c] 36 00
                    ld      hl,$7002                        ;[110e] 21 02 70
                    ld      (hl),$00                        ;[1111] 36 00
                    ld      hl,$7003                        ;[1113] 21 03 70
                    ld      (hl),$00                        ;[1116] 36 00
                    ld      hl,$8008                        ;[1118] 21 08 80
                    ld      (hl),$5f                        ;[111b] 36 5f
                    ld      hl,$0000                        ;[111d] 21 00 00
                    add     hl,sp                           ;[1120] 39
                    push    hl                              ;[1121] e5
                    ld      hl,$8008                        ;[1122] 21 08 80
                    ld      a,(hl)                          ;[1125] 7e
                    pop     de                              ;[1126] d1
                    ld      (de),a                          ;[1127] 12
                    pop     hl                              ;[1128] e1
                    push    hl                              ;[1129] e5
                    ld      h,$00                           ;[112a] 26 00
                    ld      a,$0f                           ;[112c] 3e 0f
                    and     l                               ;[112e] a5
                    ld      l,a                             ;[112f] 6f
                    ld      a,l                             ;[1130] 7d
                    cp      $0f                             ;[1131] fe 0f
                    jp      z,$1144                         ;[1133] ca 44 11
                    ld      hl,$0000                        ;[1136] 21 00 00
                    add     hl,sp                           ;[1139] 39
                    push    hl                              ;[113a] e5
                    ld      hl,$8008                        ;[113b] 21 08 80
                    ld      a,(hl)                          ;[113e] 7e
                    pop     de                              ;[113f] d1
                    ld      (de),a                          ;[1140] 12
                    jp      $1128                           ;[1141] c3 28 11
                    ld      hl,$7004                        ;[1144] 21 04 70
                    ld      (hl),$00                        ;[1147] 36 00
                    ld      hl,$7005                        ;[1149] 21 05 70
                    ld      (hl),$00                        ;[114c] 36 00
                    ld      hl,$7006                        ;[114e] 21 06 70
                    ld      (hl),$00                        ;[1151] 36 00
                    ld      hl,$7007                        ;[1153] 21 07 70
                    ld      (hl),$00                        ;[1156] 36 00
                    ld      hl,$0003                        ;[1158] 21 03 00
                    add     hl,sp                           ;[115b] 39
                    xor     a                               ;[115c] af
                    ld      (hl),a                          ;[115d] 77
                    inc     hl                              ;[115e] 23
                    ld      (hl),a                          ;[115f] 77
                    jp      $116d                           ;[1160] c3 6d 11
                    ld      hl,$0003                        ;[1163] 21 03 00
                    add     hl,sp                           ;[1166] 39
                    inc     (hl)                            ;[1167] 34
                    ld      a,(hl)                          ;[1168] 7e
                    inc     hl                              ;[1169] 23
                    jr      nz,$116d                        ;[116a] 20 01
                    inc     (hl)                            ;[116c] 34
                    ld      hl,$0003                        ;[116d] 21 03 00
                    add     hl,sp                           ;[1170] 39
                    call    $15db                           ;[1171] cd db 15
                    ld      de,$0050                        ;[1174] 11 50 00
                    and     a                               ;[1177] a7
                    sbc     hl,de                           ;[1178] ed 52
                    jp      nc,$11b2                        ;[117a] d2 b2 11
                    ld      hl,$0001                        ;[117d] 21 01 00
                    add     hl,sp                           ;[1180] 39
                    call    $15db                           ;[1181] cd db 15
                    ld      a,$40                           ;[1184] 3e 40
                    add     h                               ;[1186] 84
                    ld      h,a                             ;[1187] 67
                    ex      de,hl                           ;[1188] eb
                    ld      hl,$0003                        ;[1189] 21 03 00
                    add     hl,sp                           ;[118c] 39
                    call    $15db                           ;[118d] cd db 15
                    add     hl,de                           ;[1190] 19
                    ld      l,(hl)                          ;[1191] 6e
                    ld      h,$00                           ;[1192] 26 00
                    push    hl                              ;[1194] e5
                    ld      de,$4870                        ;[1195] 11 70 48
                    ld      hl,$0005                        ;[1198] 21 05 00
                    add     hl,sp                           ;[119b] 39
                    call    $15db                           ;[119c] cd db 15
                    add     hl,de                           ;[119f] 19
                    ld      l,(hl)                          ;[11a0] 6e
                    ld      h,$00                           ;[11a1] 26 00
                    pop     de                              ;[11a3] d1
                    call    $15d0                           ;[11a4] cd d0 15
                    jp      nc,$1163                        ;[11a7] d2 63 11
                    ld      a,$11                           ;[11aa] 3e 11
                    ld      ($4b2c),a                       ;[11ac] 32 2c 4b
                    jp      $1163                           ;[11af] c3 63 11
                    inc     sp                              ;[11b2] 33
                    pop     bc                              ;[11b3] c1
                    pop     bc                              ;[11b4] c1
                    ret                                     ;[11b5] c9

                    push    bc                              ;[11b6] c5
                    push    bc                              ;[11b7] c5
                    dec     sp                              ;[11b8] 3b
                    ld      a,$0b                           ;[11b9] 3e 0b
                    ld      ($4b2d),a                       ;[11bb] 32 2d 4b
                    ld      hl,$0001                        ;[11be] 21 01 00
                    add     hl,sp                           ;[11c1] 39
                    push    hl                              ;[11c2] e5
                    ld      hl,$4870                        ;[11c3] 21 70 48
                    ld      a,$b8                           ;[11c6] 3e b8
                    add     h                               ;[11c8] 84
                    ld      h,a                             ;[11c9] 67
                    pop     de                              ;[11ca] d1
                    call    $15e3                           ;[11cb] cd e3 15
                    ld      hl,$0003                        ;[11ce] 21 03 00
                    add     hl,sp                           ;[11d1] 39
                    xor     a                               ;[11d2] af
                    ld      (hl),a                          ;[11d3] 77
                    inc     hl                              ;[11d4] 23
                    ld      (hl),a                          ;[11d5] 77
                    jp      $11e3                           ;[11d6] c3 e3 11
                    ld      hl,$0003                        ;[11d9] 21 03 00
                    add     hl,sp                           ;[11dc] 39
                    inc     (hl)                            ;[11dd] 34
                    ld      a,(hl)                          ;[11de] 7e
                    inc     hl                              ;[11df] 23
                    jr      nz,$11e3                        ;[11e0] 20 01
                    inc     (hl)                            ;[11e2] 34
                    ld      hl,$0003                        ;[11e3] 21 03 00
                    add     hl,sp                           ;[11e6] 39
                    call    $15db                           ;[11e7] cd db 15
                    ld      de,$0014                        ;[11ea] 11 14 00
                    and     a                               ;[11ed] a7
                    sbc     hl,de                           ;[11ee] ed 52
                    jp      nc,$123c                        ;[11f0] d2 3c 12
                    ld      de,$4870                        ;[11f3] 11 70 48
                    ld      hl,$0003                        ;[11f6] 21 03 00
                    add     hl,sp                           ;[11f9] 39
                    call    $15db                           ;[11fa] cd db 15
                    add     hl,de                           ;[11fd] 19
                    ld      (hl),$0b                        ;[11fe] 36 0b
                    ld      hl,$4870                        ;[1200] 21 70 48
                    push    hl                              ;[1203] e5
                    ld      hl,$0005                        ;[1204] 21 05 00
                    add     hl,sp                           ;[1207] 39
                    ld      c,(hl)                          ;[1208] 4e
                    inc     hl                              ;[1209] 23
                    ld      b,(hl)                          ;[120a] 46
                    ld      hl,$0014                        ;[120b] 21 14 00
                    add     hl,bc                           ;[120e] 09
                    pop     de                              ;[120f] d1
                    add     hl,de                           ;[1210] 19
                    ld      (hl),$0c                        ;[1211] 36 0c
                    ld      hl,$4870                        ;[1213] 21 70 48
                    push    hl                              ;[1216] e5
                    ld      hl,$0005                        ;[1217] 21 05 00
                    add     hl,sp                           ;[121a] 39
                    ld      c,(hl)                          ;[121b] 4e
                    inc     hl                              ;[121c] 23
                    ld      b,(hl)                          ;[121d] 46
                    ld      hl,$0028                        ;[121e] 21 28 00
                    add     hl,bc                           ;[1221] 09
                    pop     de                              ;[1222] d1
                    add     hl,de                           ;[1223] 19
                    ld      (hl),$0d                        ;[1224] 36 0d
                    ld      hl,$4870                        ;[1226] 21 70 48
                    push    hl                              ;[1229] e5
                    ld      hl,$0005                        ;[122a] 21 05 00
                    add     hl,sp                           ;[122d] 39
                    ld      c,(hl)                          ;[122e] 4e
                    inc     hl                              ;[122f] 23
                    ld      b,(hl)                          ;[1230] 46
                    ld      hl,$003c                        ;[1231] 21 3c 00
                    add     hl,bc                           ;[1234] 09
                    pop     de                              ;[1235] d1
                    add     hl,de                           ;[1236] 19
                    ld      (hl),$0e                        ;[1237] 36 0e
                    jp      $11d9                           ;[1239] c3 d9 11
                    ld      hl,$0003                        ;[123c] 21 03 00
                    add     hl,sp                           ;[123f] 39
                    xor     a                               ;[1240] af
                    ld      (hl),a                          ;[1241] 77
                    inc     hl                              ;[1242] 23
                    ld      (hl),a                          ;[1243] 77
                    jp      $1251                           ;[1244] c3 51 12
                    ld      hl,$0003                        ;[1247] 21 03 00
                    add     hl,sp                           ;[124a] 39
                    inc     (hl)                            ;[124b] 34
                    ld      a,(hl)                          ;[124c] 7e
                    inc     hl                              ;[124d] 23
                    jr      nz,$1251                        ;[124e] 20 01
                    inc     (hl)                            ;[1250] 34
                    ld      hl,$0003                        ;[1251] 21 03 00
                    add     hl,sp                           ;[1254] 39
                    call    $15db                           ;[1255] cd db 15
                    ld      de,$0050                        ;[1258] 11 50 00
                    and     a                               ;[125b] a7
                    sbc     hl,de                           ;[125c] ed 52
                    jp      nc,$127a                        ;[125e] d2 7a 12
                    ld      hl,$0001                        ;[1261] 21 01 00
                    add     hl,sp                           ;[1264] 39
                    call    $15db                           ;[1265] cd db 15
                    ld      a,$40                           ;[1268] 3e 40
                    add     h                               ;[126a] 84
                    ld      h,a                             ;[126b] 67
                    ex      de,hl                           ;[126c] eb
                    ld      hl,$0003                        ;[126d] 21 03 00
                    add     hl,sp                           ;[1270] 39
                    call    $15db                           ;[1271] cd db 15
                    add     hl,de                           ;[1274] 19
                    ld      (hl),$00                        ;[1275] 36 00
                    jp      $1247                           ;[1277] c3 47 12
                    ld      hl,$8008                        ;[127a] 21 08 80
                    ld      (hl),$00                        ;[127d] 36 00
                    ld      de,$8002                        ;[127f] 11 02 80
                    ld      hl,$4884                        ;[1282] 21 84 48
                    ld      a,l                             ;[1285] 7d
                    ld      (de),a                          ;[1286] 12
                    ld      hl,$8002                        ;[1287] 21 02 80
                    push    hl                              ;[128a] e5
                    ld      hl,$4884                        ;[128b] 21 84 48
                    ld      l,h                             ;[128e] 6c
                    pop     de                              ;[128f] d1
                    ld      a,l                             ;[1290] 7d
                    ld      (de),a                          ;[1291] 12
                    ld      hl,$8003                        ;[1292] 21 03 80
                    ld      (hl),$13                        ;[1295] 36 13
                    ld      hl,$8003                        ;[1297] 21 03 80
                    ld      (hl),$40                        ;[129a] 36 40
                    ld      de,$8004                        ;[129c] 11 04 80
                    ld      hl,$4898                        ;[129f] 21 98 48
                    ld      a,l                             ;[12a2] 7d
                    ld      (de),a                          ;[12a3] 12
                    ld      hl,$8004                        ;[12a4] 21 04 80
                    push    hl                              ;[12a7] e5
                    ld      hl,$4898                        ;[12a8] 21 98 48
                    ld      l,h                             ;[12ab] 6c
                    pop     de                              ;[12ac] d1
                    ld      a,l                             ;[12ad] 7d
                    ld      (de),a                          ;[12ae] 12
                    ld      hl,$8005                        ;[12af] 21 05 80
                    ld      (hl),$13                        ;[12b2] 36 13
                    ld      hl,$8005                        ;[12b4] 21 05 80
                    ld      (hl),$40                        ;[12b7] 36 40
                    ld      de,$8006                        ;[12b9] 11 06 80
                    ld      hl,$48ac                        ;[12bc] 21 ac 48
                    ld      a,l                             ;[12bf] 7d
                    ld      (de),a                          ;[12c0] 12
                    ld      hl,$8006                        ;[12c1] 21 06 80
                    push    hl                              ;[12c4] e5
                    ld      hl,$48ac                        ;[12c5] 21 ac 48
                    ld      l,h                             ;[12c8] 6c
                    pop     de                              ;[12c9] d1
                    ld      a,l                             ;[12ca] 7d
                    ld      (de),a                          ;[12cb] 12
                    ld      hl,$8007                        ;[12cc] 21 07 80
                    ld      (hl),$13                        ;[12cf] 36 13
                    ld      hl,$8007                        ;[12d1] 21 07 80
                    ld      (hl),$40                        ;[12d4] 36 40
                    ld      hl,$7001                        ;[12d6] 21 01 70
                    ld      (hl),$00                        ;[12d9] 36 00
                    ld      hl,$7002                        ;[12db] 21 02 70
                    ld      (hl),$00                        ;[12de] 36 00
                    ld      hl,$7003                        ;[12e0] 21 03 70
                    ld      (hl),$00                        ;[12e3] 36 00
                    ld      hl,$8008                        ;[12e5] 21 08 80
                    ld      (hl),$5e                        ;[12e8] 36 5e
                    pop     hl                              ;[12ea] e1
                    push    hl                              ;[12eb] e5
                    ld      h,$00                           ;[12ec] 26 00
                    ld      a,$0e                           ;[12ee] 3e 0e
                    and     l                               ;[12f0] a5
                    ld      l,a                             ;[12f1] 6f
                    ld      a,l                             ;[12f2] 7d
                    cp      $0e                             ;[12f3] fe 0e
                    jp      z,$1306                         ;[12f5] ca 06 13
                    ld      hl,$0000                        ;[12f8] 21 00 00
                    add     hl,sp                           ;[12fb] 39
                    push    hl                              ;[12fc] e5
                    ld      hl,$8008                        ;[12fd] 21 08 80
                    ld      a,(hl)                          ;[1300] 7e
                    pop     de                              ;[1301] d1
                    ld      (de),a                          ;[1302] 12
                    jp      $12ea                           ;[1303] c3 ea 12
                    ld      hl,$7005                        ;[1306] 21 05 70
                    ld      (hl),$00                        ;[1309] 36 00
                    ld      hl,$7006                        ;[130b] 21 06 70
                    ld      (hl),$00                        ;[130e] 36 00
                    ld      hl,$7007                        ;[1310] 21 07 70
                    ld      (hl),$00                        ;[1313] 36 00
                    ld      hl,$0003                        ;[1315] 21 03 00
                    add     hl,sp                           ;[1318] 39
                    ld      (hl),$14                        ;[1319] 36 14
                    inc     hl                              ;[131b] 23
                    ld      (hl),$00                        ;[131c] 36 00
                    jp      $132b                           ;[131e] c3 2b 13
                    ld      hl,$0003                        ;[1321] 21 03 00
                    add     hl,sp                           ;[1324] 39
                    inc     (hl)                            ;[1325] 34
                    ld      a,(hl)                          ;[1326] 7e
                    inc     hl                              ;[1327] 23
                    jr      nz,$132b                        ;[1328] 20 01
                    inc     (hl)                            ;[132a] 34
                    ld      hl,$0003                        ;[132b] 21 03 00
                    add     hl,sp                           ;[132e] 39
                    call    $15db                           ;[132f] cd db 15
                    ld      de,$003c                        ;[1332] 11 3c 00
                    and     a                               ;[1335] a7
                    sbc     hl,de                           ;[1336] ed 52
                    jp      nc,$1370                        ;[1338] d2 70 13
                    ld      hl,$0001                        ;[133b] 21 01 00
                    add     hl,sp                           ;[133e] 39
                    call    $15db                           ;[133f] cd db 15
                    ld      a,$40                           ;[1342] 3e 40
                    add     h                               ;[1344] 84
                    ld      h,a                             ;[1345] 67
                    ex      de,hl                           ;[1346] eb
                    ld      hl,$0003                        ;[1347] 21 03 00
                    add     hl,sp                           ;[134a] 39
                    call    $15db                           ;[134b] cd db 15
                    add     hl,de                           ;[134e] 19
                    ld      l,(hl)                          ;[134f] 6e
                    ld      h,$00                           ;[1350] 26 00
                    push    hl                              ;[1352] e5
                    ld      de,$4870                        ;[1353] 11 70 48
                    ld      hl,$0005                        ;[1356] 21 05 00
                    add     hl,sp                           ;[1359] 39
                    call    $15db                           ;[135a] cd db 15
                    add     hl,de                           ;[135d] 19
                    ld      l,(hl)                          ;[135e] 6e
                    ld      h,$00                           ;[135f] 26 00
                    pop     de                              ;[1361] d1
                    call    $15d0                           ;[1362] cd d0 15
                    jp      nc,$1321                        ;[1365] d2 21 13
                    ld      a,$12                           ;[1368] 3e 12
                    ld      ($4b2c),a                       ;[136a] 32 2c 4b
                    jp      $1321                           ;[136d] c3 21 13
                    inc     sp                              ;[1370] 33
                    pop     bc                              ;[1371] c1
                    pop     bc                              ;[1372] c1
                    ret                                     ;[1373] c9

                    push    bc                              ;[1374] c5
                    push    bc                              ;[1375] c5
                    push    bc                              ;[1376] c5
                    dec     sp                              ;[1377] 3b
                    ld      a,$0c                           ;[1378] 3e 0c
                    ld      ($4b2d),a                       ;[137a] 32 2d 4b
                    ld      hl,$0001                        ;[137d] 21 01 00
                    add     hl,sp                           ;[1380] 39
                    push    hl                              ;[1381] e5
                    ld      hl,$4870                        ;[1382] 21 70 48
                    ld      a,$b8                           ;[1385] 3e b8
                    add     h                               ;[1387] 84
                    ld      h,a                             ;[1388] 67
                    pop     de                              ;[1389] d1
                    call    $15e3                           ;[138a] cd e3 15
                    ld      hl,$0005                        ;[138d] 21 05 00
                    add     hl,sp                           ;[1390] 39
                    xor     a                               ;[1391] af
                    ld      (hl),a                          ;[1392] 77
                    inc     hl                              ;[1393] 23
                    ld      (hl),a                          ;[1394] 77
                    jp      $13a2                           ;[1395] c3 a2 13
                    ld      hl,$0005                        ;[1398] 21 05 00
                    add     hl,sp                           ;[139b] 39
                    inc     (hl)                            ;[139c] 34
                    ld      a,(hl)                          ;[139d] 7e
                    inc     hl                              ;[139e] 23
                    jr      nz,$13a2                        ;[139f] 20 01
                    inc     (hl)                            ;[13a1] 34
                    ld      hl,$0005                        ;[13a2] 21 05 00
                    add     hl,sp                           ;[13a5] 39
                    call    $15db                           ;[13a6] cd db 15
                    ld      de,$0014                        ;[13a9] 11 14 00
                    and     a                               ;[13ac] a7
                    sbc     hl,de                           ;[13ad] ed 52
                    jp      nc,$13c2                        ;[13af] d2 c2 13
                    ld      de,$4870                        ;[13b2] 11 70 48
                    ld      hl,$0005                        ;[13b5] 21 05 00
                    add     hl,sp                           ;[13b8] 39
                    call    $15db                           ;[13b9] cd db 15
                    add     hl,de                           ;[13bc] 19
                    ld      (hl),$0f                        ;[13bd] 36 0f
                    jp      $1398                           ;[13bf] c3 98 13
                    ld      hl,$0005                        ;[13c2] 21 05 00
                    add     hl,sp                           ;[13c5] 39
                    xor     a                               ;[13c6] af
                    ld      (hl),a                          ;[13c7] 77
                    inc     hl                              ;[13c8] 23
                    ld      (hl),a                          ;[13c9] 77
                    jp      $13d7                           ;[13ca] c3 d7 13
                    ld      hl,$0005                        ;[13cd] 21 05 00
                    add     hl,sp                           ;[13d0] 39
                    inc     (hl)                            ;[13d1] 34
                    ld      a,(hl)                          ;[13d2] 7e
                    inc     hl                              ;[13d3] 23
                    jr      nz,$13d7                        ;[13d4] 20 01
                    inc     (hl)                            ;[13d6] 34
                    ld      hl,$0005                        ;[13d7] 21 05 00
                    add     hl,sp                           ;[13da] 39
                    call    $15db                           ;[13db] cd db 15
                    ld      de,$0014                        ;[13de] 11 14 00
                    and     a                               ;[13e1] a7
                    sbc     hl,de                           ;[13e2] ed 52
                    jp      nc,$1400                        ;[13e4] d2 00 14
                    ld      hl,$0001                        ;[13e7] 21 01 00
                    add     hl,sp                           ;[13ea] 39
                    call    $15db                           ;[13eb] cd db 15
                    ld      a,$40                           ;[13ee] 3e 40
                    add     h                               ;[13f0] 84
                    ld      h,a                             ;[13f1] 67
                    ex      de,hl                           ;[13f2] eb
                    ld      hl,$0005                        ;[13f3] 21 05 00
                    add     hl,sp                           ;[13f6] 39
                    call    $15db                           ;[13f7] cd db 15
                    add     hl,de                           ;[13fa] 19
                    ld      (hl),$00                        ;[13fb] 36 00
                    jp      $13cd                           ;[13fd] c3 cd 13
                    ld      hl,$8008                        ;[1400] 21 08 80
                    ld      (hl),$00                        ;[1403] 36 00
                    ld      de,$8004                        ;[1405] 11 04 80
                    ld      hl,$4870                        ;[1408] 21 70 48
                    ld      a,l                             ;[140b] 7d
                    ld      (de),a                          ;[140c] 12
                    ld      hl,$8004                        ;[140d] 21 04 80
                    push    hl                              ;[1410] e5
                    ld      hl,$4870                        ;[1411] 21 70 48
                    ld      l,h                             ;[1414] 6c
                    pop     de                              ;[1415] d1
                    ld      a,l                             ;[1416] 7d
                    ld      (de),a                          ;[1417] 12
                    ld      hl,$8005                        ;[1418] 21 05 80
                    ld      (hl),$13                        ;[141b] 36 13
                    ld      hl,$8005                        ;[141d] 21 05 80
                    ld      (hl),$40                        ;[1420] 36 40
                    ld      de,$8006                        ;[1422] 11 06 80
                    ld      hl,$4870                        ;[1425] 21 70 48
                    ld      a,l                             ;[1428] 7d
                    ld      (de),a                          ;[1429] 12
                    ld      hl,$8006                        ;[142a] 21 06 80
                    push    hl                              ;[142d] e5
                    ld      hl,$4870                        ;[142e] 21 70 48
                    ld      l,h                             ;[1431] 6c
                    pop     de                              ;[1432] d1
                    ld      a,l                             ;[1433] 7d
                    ld      (de),a                          ;[1434] 12
                    ld      hl,$8007                        ;[1435] 21 07 80
                    ld      (hl),$13                        ;[1438] 36 13
                    ld      hl,$8007                        ;[143a] 21 07 80
                    ld      (hl),$40                        ;[143d] 36 40
                    ld      hl,$700e                        ;[143f] 21 0e 70
                    ld      (hl),$00                        ;[1442] 36 00
                    ld      hl,$7002                        ;[1444] 21 02 70
                    ld      (hl),$00                        ;[1447] 36 00
                    ld      hl,$8008                        ;[1449] 21 08 80
                    ld      (hl),$c4                        ;[144c] 36 c4
                    ld      hl,$0003                        ;[144e] 21 03 00
                    add     hl,sp                           ;[1451] 39
                    xor     a                               ;[1452] af
                    ld      (hl),a                          ;[1453] 77
                    inc     hl                              ;[1454] 23
                    ld      (hl),a                          ;[1455] 77
                    jp      $1463                           ;[1456] c3 63 14
                    ld      hl,$0003                        ;[1459] 21 03 00
                    add     hl,sp                           ;[145c] 39
                    inc     (hl)                            ;[145d] 34
                    ld      a,(hl)                          ;[145e] 7e
                    inc     hl                              ;[145f] 23
                    jr      nz,$1463                        ;[1460] 20 01
                    inc     (hl)                            ;[1462] 34
                    ld      hl,$0003                        ;[1463] 21 03 00
                    add     hl,sp                           ;[1466] 39
                    call    $15db                           ;[1467] cd db 15
                    ld      de,$0064                        ;[146a] 11 64 00
                    and     a                               ;[146d] a7
                    sbc     hl,de                           ;[146e] ed 52
                    jp      c,$1459                         ;[1470] da 59 14
                    ld      hl,$8008                        ;[1473] 21 08 80
                    ld      (hl),$44                        ;[1476] 36 44
                    ld      hl,$7006                        ;[1478] 21 06 70
                    ld      (hl),$00                        ;[147b] 36 00
                    ld      hl,$0005                        ;[147d] 21 05 00
                    add     hl,sp                           ;[1480] 39
                    ld      (hl),$14                        ;[1481] 36 14
                    inc     hl                              ;[1483] 23
                    ld      (hl),$00                        ;[1484] 36 00
                    jp      $1493                           ;[1486] c3 93 14
                    ld      hl,$0005                        ;[1489] 21 05 00
                    add     hl,sp                           ;[148c] 39
                    inc     (hl)                            ;[148d] 34
                    ld      a,(hl)                          ;[148e] 7e
                    inc     hl                              ;[148f] 23
                    jr      nz,$1493                        ;[1490] 20 01
                    inc     (hl)                            ;[1492] 34
                    ld      hl,$0005                        ;[1493] 21 05 00
                    add     hl,sp                           ;[1496] 39
                    call    $15db                           ;[1497] cd db 15
                    ld      de,$0014                        ;[149a] 11 14 00
                    and     a                               ;[149d] a7
                    sbc     hl,de                           ;[149e] ed 52
                    jp      nc,$14d8                        ;[14a0] d2 d8 14
                    ld      hl,$0001                        ;[14a3] 21 01 00
                    add     hl,sp                           ;[14a6] 39
                    call    $15db                           ;[14a7] cd db 15
                    ld      a,$40                           ;[14aa] 3e 40
                    add     h                               ;[14ac] 84
                    ld      h,a                             ;[14ad] 67
                    ex      de,hl                           ;[14ae] eb
                    ld      hl,$0005                        ;[14af] 21 05 00
                    add     hl,sp                           ;[14b2] 39
                    call    $15db                           ;[14b3] cd db 15
                    add     hl,de                           ;[14b6] 19
                    ld      l,(hl)                          ;[14b7] 6e
                    ld      h,$00                           ;[14b8] 26 00
                    push    hl                              ;[14ba] e5
                    ld      de,$4870                        ;[14bb] 11 70 48
                    ld      hl,$0007                        ;[14be] 21 07 00
                    add     hl,sp                           ;[14c1] 39
                    call    $15db                           ;[14c2] cd db 15
                    add     hl,de                           ;[14c5] 19
                    ld      l,(hl)                          ;[14c6] 6e
                    ld      h,$00                           ;[14c7] 26 00
                    pop     de                              ;[14c9] d1
                    call    $15d0                           ;[14ca] cd d0 15
                    jp      nc,$1489                        ;[14cd] d2 89 14
                    ld      a,$13                           ;[14d0] 3e 13
                    ld      ($4b2c),a                       ;[14d2] 32 2c 4b
                    jp      $1489                           ;[14d5] c3 89 14
                    inc     sp                              ;[14d8] 33
                    pop     bc                              ;[14d9] c1
                    pop     bc                              ;[14da] c1
                    pop     bc                              ;[14db] c1
                    ret                                     ;[14dc] c9

                    push    bc                              ;[14dd] c5
                    push    bc                              ;[14de] c5
                    push    bc                              ;[14df] c5
                    push    bc                              ;[14e0] c5
                    push    bc                              ;[14e1] c5
                    xor     a                               ;[14e2] af
                    ld      ($4b2c),a                       ;[14e3] 32 2c 4b
                    ld      hl,$0000                        ;[14e6] 21 00 00
                    ld      a,l                             ;[14e9] 7d
                    ld      ($4b2d),a                       ;[14ea] 32 2d 4b
                    call    $1374                           ;[14ed] cd 74 13
                    pop     bc                              ;[14f0] c1
                    pop     bc                              ;[14f1] c1
                    pop     bc                              ;[14f2] c1
                    pop     bc                              ;[14f3] c1
                    pop     bc                              ;[14f4] c1
                    ret                                     ;[14f5] c9

                    ld      hl,$0002                        ;[14f6] 21 02 00
                    add     hl,sp                           ;[14f9] 39
                    ld      a,(hl)                          ;[14fa] 7e
                    cp      $0c                             ;[14fb] fe 0c
                    jr      nz,$1508                        ;[14fd] 20 09
                    ld      hl,$0000                        ;[14ff] 21 00 00
                    ld      ($486e),hl                      ;[1502] 22 6e 48
                    jp      $1587                           ;[1505] c3 87 15
                    cp      $0d                             ;[1508] fe 0d
                    jr      z,$1510                         ;[150a] 28 04
                    cp      $0a                             ;[150c] fe 0a
                    jr      nz,$1523                        ;[150e] 20 13
                    xor     a                               ;[1510] af
                    ld      ($486f),a                       ;[1511] 32 6f 48
                    ld      a,($486e)                       ;[1514] 3a 6e 48
                    inc     a                               ;[1517] 3c
                    ld      ($486e),a                       ;[1518] 32 6e 48
                    cp      $24                             ;[151b] fe 24
                    ret     nz                              ;[151d] c0
                    dec     a                               ;[151e] 3d
                    ld      ($486e),a                       ;[151f] 32 6e 48
                    ret                                     ;[1522] c9

                    push    af                              ;[1523] f5
                    ld      bc,($486e)                      ;[1524] ed 4b 6e 48
                    call    $159b                           ;[1528] cd 9b 15
                    pop     af                              ;[152b] f1
                    ld      c,$1f                           ;[152c] 0e 1f
                    ld      b,a                             ;[152e] 47
                    ld      de,$155e                        ;[152f] 11 5e 15
                    ld      a,(de)                          ;[1532] 1a
                    and     a                               ;[1533] a7
                    jr      nz,$1539                        ;[1534] 20 03
                    ld      a,b                             ;[1536] 78
                    jr      $1542                           ;[1537] 18 09
                    inc     de                              ;[1539] 13
                    inc     de                              ;[153a] 13
                    cp      b                               ;[153b] b8
                    jr      nz,$1532                        ;[153c] 20 f4
                    dec     de                              ;[153e] 1b
                    ld      a,(de)                          ;[153f] 1a
                    jr      $154a                           ;[1540] 18 08
                    cp      $60                             ;[1542] fe 60
                    jr      c,$154a                         ;[1544] 38 04
                    ld      c,$07                           ;[1546] 0e 07
                    sub     $20                             ;[1548] d6 20
                    ld      (hl),a                          ;[154a] 77
                    ld      de,$0400                        ;[154b] 11 00 04
                    add     hl,de                           ;[154e] 19
                    ld      a,c                             ;[154f] 79
                    ld      (hl),a                          ;[1550] 77
                    ld      a,($486f)                       ;[1551] 3a 6f 48
                    inc     a                               ;[1554] 3c
                    ld      ($486f),a                       ;[1555] 32 6f 48
                    cp      $1c                             ;[1558] fe 1c
                    ret     nz                              ;[155a] c0
                    jp      $1510                           ;[155b] c3 10 15
                    jr      nz,$15a0                        ;[155e] 20 40
                    ld      hl,$2e5b                        ;[1560] 21 5b 2e
                    dec     h                               ;[1563] 25
                    ld      ($2f26),hl                      ;[1564] 22 26 2f
                    ld      a,($3b2d)                       ;[1567] 3a 2d 3b
                    dec     hl                              ;[156a] 2b
                    ld      (de),a                          ;[156b] 12
                    ld      hl,($3e10)                      ;[156c] 2a 10 3e
                    inc     a                               ;[156f] 3c
                    inc     a                               ;[1570] 3c
                    ld      a,$5f                           ;[1571] 3e 5f
                    adc     $7f                             ;[1573] ce 7f
                    ld      e,h                             ;[1575] 5c
                    daa                                     ;[1576] 27
                    xor     d                               ;[1577] aa
                    dec     a                               ;[1578] 3d
                    call    c,$e928                         ;[1579] dc 28 e9
                    add     hl,hl                           ;[157c] 29
                    ret     pe                              ;[157d] e8
                    ld      e,e                             ;[157e] 5b
                    jp      nc,$d35d                        ;[157f] d2 5d d3
                    ld      a,($2cae)                       ;[1582] 3a ae 2c
                    or      $00                             ;[1585] f6 00
                    ld      hl,($4865)                      ;[1587] 2a 65 48
                    ld      d,h                             ;[158a] 54
                    ld      e,l                             ;[158b] 5d
                    inc     de                              ;[158c] 13
                    ld      bc,$0400                        ;[158d] 01 00 04
                    ld      (hl),$c0                        ;[1590] 36 c0
                    ldir                                    ;[1592] ed b0
                    ld      b,$04                           ;[1594] 06 04
                    ld      (hl),$14                        ;[1596] 36 14
                    ldir                                    ;[1598] ed b0
                    ret                                     ;[159a] c9

                    ld      a,c                             ;[159b] 79
                    ld      hl,$401d                        ;[159c] 21 1d 40
                    cp      $22                             ;[159f] fe 22
                    jr      z,$15c8                         ;[15a1] 28 25
                    ld      l,$3d                           ;[15a3] 2e 3d
                    cp      $23                             ;[15a5] fe 23
                    jr      z,$15c8                         ;[15a7] 28 1f
                    ld      hl,$43dd                        ;[15a9] 21 dd 43
                    xor     a                               ;[15ac] af
                    cp      c                               ;[15ad] b9
                    jr      z,$15c8                         ;[15ae] 28 18
                    ld      l,$fd                           ;[15b0] 2e fd
                    dec     c                               ;[15b2] 0d
                    jr      z,$15c8                         ;[15b3] 28 13
                    dec     c                               ;[15b5] 0d
                    ld      hl,$43a0                        ;[15b6] 21 a0 43
                    ld      d,$00                           ;[15b9] 16 00
                    ld      e,c                             ;[15bb] 59
                    add     hl,de                           ;[15bc] 19
                    inc     b                               ;[15bd] 04
                    ld      de,$0020                        ;[15be] 11 20 00
                    sbc     hl,de                           ;[15c1] ed 52
                    djnz    $15c1                           ;[15c3] 10 fc
                    add     hl,de                           ;[15c5] 19
                    jr      $15cf                           ;[15c6] 18 07
                    xor     a                               ;[15c8] af
                    add     b                               ;[15c9] 80
                    jr      z,$15cf                         ;[15ca] 28 03
                    dec     hl                              ;[15cc] 2b
                    djnz    $15cc                           ;[15cd] 10 fd
                    ret                                     ;[15cf] c9

                    or      a                               ;[15d0] b7
                    sbc     hl,de                           ;[15d1] ed 52
                    scf                                     ;[15d3] 37
                    ld      hl,$0001                        ;[15d4] 21 01 00
                    ret     nz                              ;[15d7] c0
                    or      a                               ;[15d8] b7
                    dec     l                               ;[15d9] 2d
                    ret                                     ;[15da] c9

                    ld      a,(hl)                          ;[15db] 7e
                    inc     hl                              ;[15dc] 23
                    ld      h,(hl)                          ;[15dd] 66
                    ld      l,a                             ;[15de] 6f
                    ret                                     ;[15df] c9

                    pop     bc                              ;[15e0] c1
                    pop     de                              ;[15e1] d1
                    push    bc                              ;[15e2] c5
                    ld      a,l                             ;[15e3] 7d
                    ld      (de),a                          ;[15e4] 12
                    inc     de                              ;[15e5] 13
                    ld      a,h                             ;[15e6] 7c
                    ld      (de),a                          ;[15e7] 12
                    ret                                     ;[15e8] c9

                    ld      a,b                             ;[15e9] 78
                    or      c                               ;[15ea] b1
                    jr      z,$15f3                         ;[15eb] 28 06
                    push    de                              ;[15ed] d5
                    ldir                                    ;[15ee] ed b0
                    pop     hl                              ;[15f0] e1
                    or      a                               ;[15f1] b7
                    ret                                     ;[15f2] c9

                    ld      h,d                             ;[15f3] 62
                    ld      l,e                             ;[15f4] 6b
                    ret                                     ;[15f5] c9

                    nop                                     ;[15f6] 00
                    rst     $38                             ;[15f7] ff
                    rst     $38                             ;[15f8] ff
                    rst     $38                             ;[15f9] ff
                    rst     $38                             ;[15fa] ff
                    rst     $38                             ;[15fb] ff
                    rst     $38                             ;[15fc] ff
                    rst     $38                             ;[15fd] ff
                    rst     $38                             ;[15fe] ff
                    rst     $38                             ;[15ff] ff
                    rst     $38                             ;[1600] ff
                    rst     $38                             ;[1601] ff
                    rst     $38                             ;[1602] ff
                    rst     $38                             ;[1603] ff
                    rst     $38                             ;[1604] ff
                    rst     $38                             ;[1605] ff
                    rst     $38                             ;[1606] ff
                    rst     $38                             ;[1607] ff
                    rst     $38                             ;[1608] ff
                    rst     $38                             ;[1609] ff
                    rst     $38                             ;[160a] ff
                    rst     $38                             ;[160b] ff
                    rst     $38                             ;[160c] ff
                    rst     $38                             ;[160d] ff
                    rst     $38                             ;[160e] ff
                    rst     $38                             ;[160f] ff
                    rst     $38                             ;[1610] ff
                    rst     $38                             ;[1611] ff
                    rst     $38                             ;[1612] ff
                    rst     $38                             ;[1613] ff
                    rst     $38                             ;[1614] ff
                    rst     $38                             ;[1615] ff
                    rst     $38                             ;[1616] ff
                    rst     $38                             ;[1617] ff
                    rst     $38                             ;[1618] ff
                    rst     $38                             ;[1619] ff
                    rst     $38                             ;[161a] ff
                    rst     $38                             ;[161b] ff
                    rst     $38                             ;[161c] ff
                    rst     $38                             ;[161d] ff
                    rst     $38                             ;[161e] ff
                    rst     $38                             ;[161f] ff
                    rst     $38                             ;[1620] ff
                    rst     $38                             ;[1621] ff
                    rst     $38                             ;[1622] ff
                    rst     $38                             ;[1623] ff
                    rst     $38                             ;[1624] ff
                    rst     $38                             ;[1625] ff
                    rst     $38                             ;[1626] ff
                    rst     $38                             ;[1627] ff
                    rst     $38                             ;[1628] ff
                    rst     $38                             ;[1629] ff
                    rst     $38                             ;[162a] ff
                    rst     $38                             ;[162b] ff
                    rst     $38                             ;[162c] ff
                    rst     $38                             ;[162d] ff
                    rst     $38                             ;[162e] ff
                    rst     $38                             ;[162f] ff
                    rst     $38                             ;[1630] ff
                    rst     $38                             ;[1631] ff
                    rst     $38                             ;[1632] ff
                    rst     $38                             ;[1633] ff
                    rst     $38                             ;[1634] ff
                    rst     $38                             ;[1635] ff
                    rst     $38                             ;[1636] ff
                    rst     $38                             ;[1637] ff
                    rst     $38                             ;[1638] ff
                    rst     $38                             ;[1639] ff
                    rst     $38                             ;[163a] ff
                    rst     $38                             ;[163b] ff
                    rst     $38                             ;[163c] ff
                    rst     $38                             ;[163d] ff
                    rst     $38                             ;[163e] ff
                    rst     $38                             ;[163f] ff
                    rst     $38                             ;[1640] ff
                    rst     $38                             ;[1641] ff
                    rst     $38                             ;[1642] ff
                    rst     $38                             ;[1643] ff
                    rst     $38                             ;[1644] ff
                    rst     $38                             ;[1645] ff
                    rst     $38                             ;[1646] ff
                    rst     $38                             ;[1647] ff
                    rst     $38                             ;[1648] ff
                    rst     $38                             ;[1649] ff
                    rst     $38                             ;[164a] ff
                    rst     $38                             ;[164b] ff
                    rst     $38                             ;[164c] ff
                    rst     $38                             ;[164d] ff
                    rst     $38                             ;[164e] ff
                    rst     $38                             ;[164f] ff
                    rst     $38                             ;[1650] ff
                    rst     $38                             ;[1651] ff
                    rst     $38                             ;[1652] ff
                    rst     $38                             ;[1653] ff
                    rst     $38                             ;[1654] ff
                    rst     $38                             ;[1655] ff
                    rst     $38                             ;[1656] ff
                    rst     $38                             ;[1657] ff
                    rst     $38                             ;[1658] ff
                    rst     $38                             ;[1659] ff
                    rst     $38                             ;[165a] ff
                    rst     $38                             ;[165b] ff
                    rst     $38                             ;[165c] ff
                    rst     $38                             ;[165d] ff
                    rst     $38                             ;[165e] ff
                    rst     $38                             ;[165f] ff
                    rst     $38                             ;[1660] ff
                    rst     $38                             ;[1661] ff
                    rst     $38                             ;[1662] ff
                    rst     $38                             ;[1663] ff
                    rst     $38                             ;[1664] ff
                    rst     $38                             ;[1665] ff
                    rst     $38                             ;[1666] ff
                    rst     $38                             ;[1667] ff
                    rst     $38                             ;[1668] ff
                    rst     $38                             ;[1669] ff
                    rst     $38                             ;[166a] ff
                    rst     $38                             ;[166b] ff
                    rst     $38                             ;[166c] ff
                    rst     $38                             ;[166d] ff
                    rst     $38                             ;[166e] ff
                    rst     $38                             ;[166f] ff
                    rst     $38                             ;[1670] ff
                    rst     $38                             ;[1671] ff
                    rst     $38                             ;[1672] ff
                    rst     $38                             ;[1673] ff
                    rst     $38                             ;[1674] ff
                    rst     $38                             ;[1675] ff
                    rst     $38                             ;[1676] ff
                    rst     $38                             ;[1677] ff
                    rst     $38                             ;[1678] ff
                    rst     $38                             ;[1679] ff
                    rst     $38                             ;[167a] ff
                    rst     $38                             ;[167b] ff
                    rst     $38                             ;[167c] ff
                    rst     $38                             ;[167d] ff
                    rst     $38                             ;[167e] ff
                    rst     $38                             ;[167f] ff
                    rst     $38                             ;[1680] ff
                    rst     $38                             ;[1681] ff
                    rst     $38                             ;[1682] ff
                    rst     $38                             ;[1683] ff
                    rst     $38                             ;[1684] ff
                    rst     $38                             ;[1685] ff
                    rst     $38                             ;[1686] ff
                    rst     $38                             ;[1687] ff
                    rst     $38                             ;[1688] ff
                    rst     $38                             ;[1689] ff
                    rst     $38                             ;[168a] ff
                    rst     $38                             ;[168b] ff
                    rst     $38                             ;[168c] ff
                    rst     $38                             ;[168d] ff
                    rst     $38                             ;[168e] ff
                    rst     $38                             ;[168f] ff
                    rst     $38                             ;[1690] ff
                    rst     $38                             ;[1691] ff
                    rst     $38                             ;[1692] ff
                    rst     $38                             ;[1693] ff
                    rst     $38                             ;[1694] ff
                    rst     $38                             ;[1695] ff
                    rst     $38                             ;[1696] ff
                    rst     $38                             ;[1697] ff
                    rst     $38                             ;[1698] ff
                    rst     $38                             ;[1699] ff
                    rst     $38                             ;[169a] ff
                    rst     $38                             ;[169b] ff
                    rst     $38                             ;[169c] ff
                    rst     $38                             ;[169d] ff
                    rst     $38                             ;[169e] ff
                    rst     $38                             ;[169f] ff
                    rst     $38                             ;[16a0] ff
                    rst     $38                             ;[16a1] ff
                    rst     $38                             ;[16a2] ff
                    rst     $38                             ;[16a3] ff
                    rst     $38                             ;[16a4] ff
                    rst     $38                             ;[16a5] ff
                    rst     $38                             ;[16a6] ff
                    rst     $38                             ;[16a7] ff
                    rst     $38                             ;[16a8] ff
                    rst     $38                             ;[16a9] ff
                    rst     $38                             ;[16aa] ff
                    rst     $38                             ;[16ab] ff
                    rst     $38                             ;[16ac] ff
                    rst     $38                             ;[16ad] ff
                    rst     $38                             ;[16ae] ff
                    rst     $38                             ;[16af] ff
                    rst     $38                             ;[16b0] ff
                    rst     $38                             ;[16b1] ff
                    rst     $38                             ;[16b2] ff
                    rst     $38                             ;[16b3] ff
                    rst     $38                             ;[16b4] ff
                    rst     $38                             ;[16b5] ff
                    rst     $38                             ;[16b6] ff
                    rst     $38                             ;[16b7] ff
                    rst     $38                             ;[16b8] ff
                    rst     $38                             ;[16b9] ff
                    rst     $38                             ;[16ba] ff
                    rst     $38                             ;[16bb] ff
                    rst     $38                             ;[16bc] ff
                    rst     $38                             ;[16bd] ff
                    rst     $38                             ;[16be] ff
                    rst     $38                             ;[16bf] ff
                    rst     $38                             ;[16c0] ff
                    rst     $38                             ;[16c1] ff
                    rst     $38                             ;[16c2] ff
                    rst     $38                             ;[16c3] ff
                    rst     $38                             ;[16c4] ff
                    rst     $38                             ;[16c5] ff
                    rst     $38                             ;[16c6] ff
                    rst     $38                             ;[16c7] ff
                    rst     $38                             ;[16c8] ff
                    rst     $38                             ;[16c9] ff
                    rst     $38                             ;[16ca] ff
                    rst     $38                             ;[16cb] ff
                    rst     $38                             ;[16cc] ff
                    rst     $38                             ;[16cd] ff
                    rst     $38                             ;[16ce] ff
                    rst     $38                             ;[16cf] ff
                    rst     $38                             ;[16d0] ff
                    rst     $38                             ;[16d1] ff
                    rst     $38                             ;[16d2] ff
                    rst     $38                             ;[16d3] ff
                    rst     $38                             ;[16d4] ff
                    rst     $38                             ;[16d5] ff
                    rst     $38                             ;[16d6] ff
                    rst     $38                             ;[16d7] ff
                    rst     $38                             ;[16d8] ff
                    rst     $38                             ;[16d9] ff
                    rst     $38                             ;[16da] ff
                    rst     $38                             ;[16db] ff
                    rst     $38                             ;[16dc] ff
                    rst     $38                             ;[16dd] ff
                    rst     $38                             ;[16de] ff
                    rst     $38                             ;[16df] ff
                    rst     $38                             ;[16e0] ff
                    rst     $38                             ;[16e1] ff
                    rst     $38                             ;[16e2] ff
                    rst     $38                             ;[16e3] ff
                    rst     $38                             ;[16e4] ff
                    rst     $38                             ;[16e5] ff
                    rst     $38                             ;[16e6] ff
                    rst     $38                             ;[16e7] ff
                    rst     $38                             ;[16e8] ff
                    rst     $38                             ;[16e9] ff
                    rst     $38                             ;[16ea] ff
                    rst     $38                             ;[16eb] ff
                    rst     $38                             ;[16ec] ff
                    rst     $38                             ;[16ed] ff
                    rst     $38                             ;[16ee] ff
                    rst     $38                             ;[16ef] ff
                    rst     $38                             ;[16f0] ff
                    rst     $38                             ;[16f1] ff
                    rst     $38                             ;[16f2] ff
                    rst     $38                             ;[16f3] ff
                    rst     $38                             ;[16f4] ff
                    rst     $38                             ;[16f5] ff
                    rst     $38                             ;[16f6] ff
                    rst     $38                             ;[16f7] ff
                    rst     $38                             ;[16f8] ff
                    rst     $38                             ;[16f9] ff
                    rst     $38                             ;[16fa] ff
                    rst     $38                             ;[16fb] ff
                    rst     $38                             ;[16fc] ff
                    rst     $38                             ;[16fd] ff
                    rst     $38                             ;[16fe] ff
                    rst     $38                             ;[16ff] ff
                    rst     $38                             ;[1700] ff
                    rst     $38                             ;[1701] ff
                    rst     $38                             ;[1702] ff
                    rst     $38                             ;[1703] ff
                    rst     $38                             ;[1704] ff
                    rst     $38                             ;[1705] ff
                    rst     $38                             ;[1706] ff
                    rst     $38                             ;[1707] ff
                    rst     $38                             ;[1708] ff
                    rst     $38                             ;[1709] ff
                    rst     $38                             ;[170a] ff
                    rst     $38                             ;[170b] ff
                    rst     $38                             ;[170c] ff
                    rst     $38                             ;[170d] ff
                    rst     $38                             ;[170e] ff
                    rst     $38                             ;[170f] ff
                    rst     $38                             ;[1710] ff
                    rst     $38                             ;[1711] ff
                    rst     $38                             ;[1712] ff
                    rst     $38                             ;[1713] ff
                    rst     $38                             ;[1714] ff
                    rst     $38                             ;[1715] ff
                    rst     $38                             ;[1716] ff
                    rst     $38                             ;[1717] ff
                    rst     $38                             ;[1718] ff
                    rst     $38                             ;[1719] ff
                    rst     $38                             ;[171a] ff
                    rst     $38                             ;[171b] ff
                    rst     $38                             ;[171c] ff
                    rst     $38                             ;[171d] ff
                    rst     $38                             ;[171e] ff
                    rst     $38                             ;[171f] ff
                    rst     $38                             ;[1720] ff
                    rst     $38                             ;[1721] ff
                    rst     $38                             ;[1722] ff
                    rst     $38                             ;[1723] ff
                    rst     $38                             ;[1724] ff
                    rst     $38                             ;[1725] ff
                    rst     $38                             ;[1726] ff
                    rst     $38                             ;[1727] ff
                    rst     $38                             ;[1728] ff
                    rst     $38                             ;[1729] ff
                    rst     $38                             ;[172a] ff
                    rst     $38                             ;[172b] ff
                    rst     $38                             ;[172c] ff
                    rst     $38                             ;[172d] ff
                    rst     $38                             ;[172e] ff
                    rst     $38                             ;[172f] ff
                    rst     $38                             ;[1730] ff
                    rst     $38                             ;[1731] ff
                    rst     $38                             ;[1732] ff
                    rst     $38                             ;[1733] ff
                    rst     $38                             ;[1734] ff
                    rst     $38                             ;[1735] ff
                    rst     $38                             ;[1736] ff
                    rst     $38                             ;[1737] ff
                    rst     $38                             ;[1738] ff
                    rst     $38                             ;[1739] ff
                    rst     $38                             ;[173a] ff
                    rst     $38                             ;[173b] ff
                    rst     $38                             ;[173c] ff
                    rst     $38                             ;[173d] ff
                    rst     $38                             ;[173e] ff
                    rst     $38                             ;[173f] ff
                    rst     $38                             ;[1740] ff
                    rst     $38                             ;[1741] ff
                    rst     $38                             ;[1742] ff
                    rst     $38                             ;[1743] ff
                    rst     $38                             ;[1744] ff
                    rst     $38                             ;[1745] ff
                    rst     $38                             ;[1746] ff
                    rst     $38                             ;[1747] ff
                    rst     $38                             ;[1748] ff
                    rst     $38                             ;[1749] ff
                    rst     $38                             ;[174a] ff
                    rst     $38                             ;[174b] ff
                    rst     $38                             ;[174c] ff
                    rst     $38                             ;[174d] ff
                    rst     $38                             ;[174e] ff
                    rst     $38                             ;[174f] ff
                    rst     $38                             ;[1750] ff
                    rst     $38                             ;[1751] ff
                    rst     $38                             ;[1752] ff
                    rst     $38                             ;[1753] ff
                    rst     $38                             ;[1754] ff
                    rst     $38                             ;[1755] ff
                    rst     $38                             ;[1756] ff
                    rst     $38                             ;[1757] ff
                    rst     $38                             ;[1758] ff
                    rst     $38                             ;[1759] ff
                    rst     $38                             ;[175a] ff
                    rst     $38                             ;[175b] ff
                    rst     $38                             ;[175c] ff
                    rst     $38                             ;[175d] ff
                    rst     $38                             ;[175e] ff
                    rst     $38                             ;[175f] ff
                    rst     $38                             ;[1760] ff
                    rst     $38                             ;[1761] ff
                    rst     $38                             ;[1762] ff
                    rst     $38                             ;[1763] ff
                    rst     $38                             ;[1764] ff
                    rst     $38                             ;[1765] ff
                    rst     $38                             ;[1766] ff
                    rst     $38                             ;[1767] ff
                    rst     $38                             ;[1768] ff
                    rst     $38                             ;[1769] ff
                    rst     $38                             ;[176a] ff
                    rst     $38                             ;[176b] ff
                    rst     $38                             ;[176c] ff
                    rst     $38                             ;[176d] ff
                    rst     $38                             ;[176e] ff
                    rst     $38                             ;[176f] ff
                    rst     $38                             ;[1770] ff
                    rst     $38                             ;[1771] ff
                    rst     $38                             ;[1772] ff
                    rst     $38                             ;[1773] ff
                    rst     $38                             ;[1774] ff
                    rst     $38                             ;[1775] ff
                    rst     $38                             ;[1776] ff
                    rst     $38                             ;[1777] ff
                    rst     $38                             ;[1778] ff
                    rst     $38                             ;[1779] ff
                    rst     $38                             ;[177a] ff
                    rst     $38                             ;[177b] ff
                    rst     $38                             ;[177c] ff
                    rst     $38                             ;[177d] ff
                    rst     $38                             ;[177e] ff
                    rst     $38                             ;[177f] ff
                    rst     $38                             ;[1780] ff
                    rst     $38                             ;[1781] ff
                    rst     $38                             ;[1782] ff
                    rst     $38                             ;[1783] ff
                    rst     $38                             ;[1784] ff
                    rst     $38                             ;[1785] ff
                    rst     $38                             ;[1786] ff
                    rst     $38                             ;[1787] ff
                    rst     $38                             ;[1788] ff
                    rst     $38                             ;[1789] ff
                    rst     $38                             ;[178a] ff
                    rst     $38                             ;[178b] ff
                    rst     $38                             ;[178c] ff
                    rst     $38                             ;[178d] ff
                    rst     $38                             ;[178e] ff
                    rst     $38                             ;[178f] ff
                    rst     $38                             ;[1790] ff
                    rst     $38                             ;[1791] ff
                    rst     $38                             ;[1792] ff
                    rst     $38                             ;[1793] ff
                    rst     $38                             ;[1794] ff
                    rst     $38                             ;[1795] ff
                    rst     $38                             ;[1796] ff
                    rst     $38                             ;[1797] ff
                    rst     $38                             ;[1798] ff
                    rst     $38                             ;[1799] ff
                    rst     $38                             ;[179a] ff
                    rst     $38                             ;[179b] ff
                    rst     $38                             ;[179c] ff
                    rst     $38                             ;[179d] ff
                    rst     $38                             ;[179e] ff
                    rst     $38                             ;[179f] ff
                    rst     $38                             ;[17a0] ff
                    rst     $38                             ;[17a1] ff
                    rst     $38                             ;[17a2] ff
                    rst     $38                             ;[17a3] ff
                    rst     $38                             ;[17a4] ff
                    rst     $38                             ;[17a5] ff
                    rst     $38                             ;[17a6] ff
                    rst     $38                             ;[17a7] ff
                    rst     $38                             ;[17a8] ff
                    rst     $38                             ;[17a9] ff
                    rst     $38                             ;[17aa] ff
                    rst     $38                             ;[17ab] ff
                    rst     $38                             ;[17ac] ff
                    rst     $38                             ;[17ad] ff
                    rst     $38                             ;[17ae] ff
                    rst     $38                             ;[17af] ff
                    rst     $38                             ;[17b0] ff
                    rst     $38                             ;[17b1] ff
                    rst     $38                             ;[17b2] ff
                    rst     $38                             ;[17b3] ff
                    rst     $38                             ;[17b4] ff
                    rst     $38                             ;[17b5] ff
                    rst     $38                             ;[17b6] ff
                    rst     $38                             ;[17b7] ff
                    rst     $38                             ;[17b8] ff
                    rst     $38                             ;[17b9] ff
                    rst     $38                             ;[17ba] ff
                    rst     $38                             ;[17bb] ff
                    rst     $38                             ;[17bc] ff
                    rst     $38                             ;[17bd] ff
                    rst     $38                             ;[17be] ff
                    rst     $38                             ;[17bf] ff
                    rst     $38                             ;[17c0] ff
                    rst     $38                             ;[17c1] ff
                    rst     $38                             ;[17c2] ff
                    rst     $38                             ;[17c3] ff
                    rst     $38                             ;[17c4] ff
                    rst     $38                             ;[17c5] ff
                    rst     $38                             ;[17c6] ff
                    rst     $38                             ;[17c7] ff
                    rst     $38                             ;[17c8] ff
                    rst     $38                             ;[17c9] ff
                    rst     $38                             ;[17ca] ff
                    rst     $38                             ;[17cb] ff
                    rst     $38                             ;[17cc] ff
                    rst     $38                             ;[17cd] ff
                    rst     $38                             ;[17ce] ff
                    rst     $38                             ;[17cf] ff
                    rst     $38                             ;[17d0] ff
                    rst     $38                             ;[17d1] ff
                    rst     $38                             ;[17d2] ff
                    rst     $38                             ;[17d3] ff
                    rst     $38                             ;[17d4] ff
                    rst     $38                             ;[17d5] ff
                    rst     $38                             ;[17d6] ff
                    rst     $38                             ;[17d7] ff
                    rst     $38                             ;[17d8] ff
                    rst     $38                             ;[17d9] ff
                    rst     $38                             ;[17da] ff
                    rst     $38                             ;[17db] ff
                    rst     $38                             ;[17dc] ff
                    rst     $38                             ;[17dd] ff
                    rst     $38                             ;[17de] ff
                    rst     $38                             ;[17df] ff
                    rst     $38                             ;[17e0] ff
                    rst     $38                             ;[17e1] ff
                    rst     $38                             ;[17e2] ff
                    rst     $38                             ;[17e3] ff
                    rst     $38                             ;[17e4] ff
                    rst     $38                             ;[17e5] ff
                    rst     $38                             ;[17e6] ff
                    rst     $38                             ;[17e7] ff
                    rst     $38                             ;[17e8] ff
                    rst     $38                             ;[17e9] ff
                    rst     $38                             ;[17ea] ff
                    rst     $38                             ;[17eb] ff
                    rst     $38                             ;[17ec] ff
                    rst     $38                             ;[17ed] ff
                    rst     $38                             ;[17ee] ff
                    rst     $38                             ;[17ef] ff
                    rst     $38                             ;[17f0] ff
                    rst     $38                             ;[17f1] ff
                    rst     $38                             ;[17f2] ff
                    rst     $38                             ;[17f3] ff
                    rst     $38                             ;[17f4] ff
                    rst     $38                             ;[17f5] ff
                    rst     $38                             ;[17f6] ff
                    rst     $38                             ;[17f7] ff
                    rst     $38                             ;[17f8] ff
                    rst     $38                             ;[17f9] ff
                    rst     $38                             ;[17fa] ff
                    rst     $38                             ;[17fb] ff
                    rst     $38                             ;[17fc] ff
                    rst     $38                             ;[17fd] ff
                    rst     $38                             ;[17fe] ff
                    rst     $38                             ;[17ff] ff
                    rst     $38                             ;[1800] ff
                    rst     $38                             ;[1801] ff
                    rst     $38                             ;[1802] ff
                    rst     $38                             ;[1803] ff
                    rst     $38                             ;[1804] ff
                    rst     $38                             ;[1805] ff
                    rst     $38                             ;[1806] ff
                    rst     $38                             ;[1807] ff
                    rst     $38                             ;[1808] ff
                    rst     $38                             ;[1809] ff
                    rst     $38                             ;[180a] ff
                    rst     $38                             ;[180b] ff
                    rst     $38                             ;[180c] ff
                    rst     $38                             ;[180d] ff
                    rst     $38                             ;[180e] ff
                    rst     $38                             ;[180f] ff
                    rst     $38                             ;[1810] ff
                    rst     $38                             ;[1811] ff
                    rst     $38                             ;[1812] ff
                    rst     $38                             ;[1813] ff
                    rst     $38                             ;[1814] ff
                    rst     $38                             ;[1815] ff
                    rst     $38                             ;[1816] ff
                    rst     $38                             ;[1817] ff
                    rst     $38                             ;[1818] ff
                    rst     $38                             ;[1819] ff
                    rst     $38                             ;[181a] ff
                    rst     $38                             ;[181b] ff
                    rst     $38                             ;[181c] ff
                    rst     $38                             ;[181d] ff
                    rst     $38                             ;[181e] ff
                    rst     $38                             ;[181f] ff
                    rst     $38                             ;[1820] ff
                    rst     $38                             ;[1821] ff
                    rst     $38                             ;[1822] ff
                    rst     $38                             ;[1823] ff
                    rst     $38                             ;[1824] ff
                    rst     $38                             ;[1825] ff
                    rst     $38                             ;[1826] ff
                    rst     $38                             ;[1827] ff
                    rst     $38                             ;[1828] ff
                    rst     $38                             ;[1829] ff
                    rst     $38                             ;[182a] ff
                    rst     $38                             ;[182b] ff
                    rst     $38                             ;[182c] ff
                    rst     $38                             ;[182d] ff
                    rst     $38                             ;[182e] ff
                    rst     $38                             ;[182f] ff
                    rst     $38                             ;[1830] ff
                    rst     $38                             ;[1831] ff
                    rst     $38                             ;[1832] ff
                    rst     $38                             ;[1833] ff
                    rst     $38                             ;[1834] ff
                    rst     $38                             ;[1835] ff
                    rst     $38                             ;[1836] ff
                    rst     $38                             ;[1837] ff
                    rst     $38                             ;[1838] ff
                    rst     $38                             ;[1839] ff
                    rst     $38                             ;[183a] ff
                    rst     $38                             ;[183b] ff
                    rst     $38                             ;[183c] ff
                    rst     $38                             ;[183d] ff
                    rst     $38                             ;[183e] ff
                    rst     $38                             ;[183f] ff
                    rst     $38                             ;[1840] ff
                    rst     $38                             ;[1841] ff
                    rst     $38                             ;[1842] ff
                    rst     $38                             ;[1843] ff
                    rst     $38                             ;[1844] ff
                    rst     $38                             ;[1845] ff
                    rst     $38                             ;[1846] ff
                    rst     $38                             ;[1847] ff
                    rst     $38                             ;[1848] ff
                    rst     $38                             ;[1849] ff
                    rst     $38                             ;[184a] ff
                    rst     $38                             ;[184b] ff
                    rst     $38                             ;[184c] ff
                    rst     $38                             ;[184d] ff
                    rst     $38                             ;[184e] ff
                    rst     $38                             ;[184f] ff
                    rst     $38                             ;[1850] ff
                    rst     $38                             ;[1851] ff
                    rst     $38                             ;[1852] ff
                    rst     $38                             ;[1853] ff
                    rst     $38                             ;[1854] ff
                    rst     $38                             ;[1855] ff
                    rst     $38                             ;[1856] ff
                    rst     $38                             ;[1857] ff
                    rst     $38                             ;[1858] ff
                    rst     $38                             ;[1859] ff
                    rst     $38                             ;[185a] ff
                    rst     $38                             ;[185b] ff
                    rst     $38                             ;[185c] ff
                    rst     $38                             ;[185d] ff
                    rst     $38                             ;[185e] ff
                    rst     $38                             ;[185f] ff
                    rst     $38                             ;[1860] ff
                    rst     $38                             ;[1861] ff
                    rst     $38                             ;[1862] ff
                    rst     $38                             ;[1863] ff
                    rst     $38                             ;[1864] ff
                    rst     $38                             ;[1865] ff
                    rst     $38                             ;[1866] ff
                    rst     $38                             ;[1867] ff
                    rst     $38                             ;[1868] ff
                    rst     $38                             ;[1869] ff
                    rst     $38                             ;[186a] ff
                    rst     $38                             ;[186b] ff
                    rst     $38                             ;[186c] ff
                    rst     $38                             ;[186d] ff
                    rst     $38                             ;[186e] ff
                    rst     $38                             ;[186f] ff
                    rst     $38                             ;[1870] ff
                    rst     $38                             ;[1871] ff
                    rst     $38                             ;[1872] ff
                    rst     $38                             ;[1873] ff
                    rst     $38                             ;[1874] ff
                    rst     $38                             ;[1875] ff
                    rst     $38                             ;[1876] ff
                    rst     $38                             ;[1877] ff
                    rst     $38                             ;[1878] ff
                    rst     $38                             ;[1879] ff
                    rst     $38                             ;[187a] ff
                    rst     $38                             ;[187b] ff
                    rst     $38                             ;[187c] ff
                    rst     $38                             ;[187d] ff
                    rst     $38                             ;[187e] ff
                    rst     $38                             ;[187f] ff
                    rst     $38                             ;[1880] ff
                    rst     $38                             ;[1881] ff
                    rst     $38                             ;[1882] ff
                    rst     $38                             ;[1883] ff
                    rst     $38                             ;[1884] ff
                    rst     $38                             ;[1885] ff
                    rst     $38                             ;[1886] ff
                    rst     $38                             ;[1887] ff
                    rst     $38                             ;[1888] ff
                    rst     $38                             ;[1889] ff
                    rst     $38                             ;[188a] ff
                    rst     $38                             ;[188b] ff
                    rst     $38                             ;[188c] ff
                    rst     $38                             ;[188d] ff
                    rst     $38                             ;[188e] ff
                    rst     $38                             ;[188f] ff
                    rst     $38                             ;[1890] ff
                    rst     $38                             ;[1891] ff
                    rst     $38                             ;[1892] ff
                    rst     $38                             ;[1893] ff
                    rst     $38                             ;[1894] ff
                    rst     $38                             ;[1895] ff
                    rst     $38                             ;[1896] ff
                    rst     $38                             ;[1897] ff
                    rst     $38                             ;[1898] ff
                    rst     $38                             ;[1899] ff
                    rst     $38                             ;[189a] ff
                    rst     $38                             ;[189b] ff
                    rst     $38                             ;[189c] ff
                    rst     $38                             ;[189d] ff
                    rst     $38                             ;[189e] ff
                    rst     $38                             ;[189f] ff
                    rst     $38                             ;[18a0] ff
                    rst     $38                             ;[18a1] ff
                    rst     $38                             ;[18a2] ff
                    rst     $38                             ;[18a3] ff
                    rst     $38                             ;[18a4] ff
                    rst     $38                             ;[18a5] ff
                    rst     $38                             ;[18a6] ff
                    rst     $38                             ;[18a7] ff
                    rst     $38                             ;[18a8] ff
                    rst     $38                             ;[18a9] ff
                    rst     $38                             ;[18aa] ff
                    rst     $38                             ;[18ab] ff
                    rst     $38                             ;[18ac] ff
                    rst     $38                             ;[18ad] ff
                    rst     $38                             ;[18ae] ff
                    rst     $38                             ;[18af] ff
                    rst     $38                             ;[18b0] ff
                    rst     $38                             ;[18b1] ff
                    rst     $38                             ;[18b2] ff
                    rst     $38                             ;[18b3] ff
                    rst     $38                             ;[18b4] ff
                    rst     $38                             ;[18b5] ff
                    rst     $38                             ;[18b6] ff
                    rst     $38                             ;[18b7] ff
                    rst     $38                             ;[18b8] ff
                    rst     $38                             ;[18b9] ff
                    rst     $38                             ;[18ba] ff
                    rst     $38                             ;[18bb] ff
                    rst     $38                             ;[18bc] ff
                    rst     $38                             ;[18bd] ff
                    rst     $38                             ;[18be] ff
                    rst     $38                             ;[18bf] ff
                    rst     $38                             ;[18c0] ff
                    rst     $38                             ;[18c1] ff
                    rst     $38                             ;[18c2] ff
                    rst     $38                             ;[18c3] ff
                    rst     $38                             ;[18c4] ff
                    rst     $38                             ;[18c5] ff
                    rst     $38                             ;[18c6] ff
                    rst     $38                             ;[18c7] ff
                    rst     $38                             ;[18c8] ff
                    rst     $38                             ;[18c9] ff
                    rst     $38                             ;[18ca] ff
                    rst     $38                             ;[18cb] ff
                    rst     $38                             ;[18cc] ff
                    rst     $38                             ;[18cd] ff
                    rst     $38                             ;[18ce] ff
                    rst     $38                             ;[18cf] ff
                    rst     $38                             ;[18d0] ff
                    rst     $38                             ;[18d1] ff
                    rst     $38                             ;[18d2] ff
                    rst     $38                             ;[18d3] ff
                    rst     $38                             ;[18d4] ff
                    rst     $38                             ;[18d5] ff
                    rst     $38                             ;[18d6] ff
                    rst     $38                             ;[18d7] ff
                    rst     $38                             ;[18d8] ff
                    rst     $38                             ;[18d9] ff
                    rst     $38                             ;[18da] ff
                    rst     $38                             ;[18db] ff
                    rst     $38                             ;[18dc] ff
                    rst     $38                             ;[18dd] ff
                    rst     $38                             ;[18de] ff
                    rst     $38                             ;[18df] ff
                    rst     $38                             ;[18e0] ff
                    rst     $38                             ;[18e1] ff
                    rst     $38                             ;[18e2] ff
                    rst     $38                             ;[18e3] ff
                    rst     $38                             ;[18e4] ff
                    rst     $38                             ;[18e5] ff
                    rst     $38                             ;[18e6] ff
                    rst     $38                             ;[18e7] ff
                    rst     $38                             ;[18e8] ff
                    rst     $38                             ;[18e9] ff
                    rst     $38                             ;[18ea] ff
                    rst     $38                             ;[18eb] ff
                    rst     $38                             ;[18ec] ff
                    rst     $38                             ;[18ed] ff
                    rst     $38                             ;[18ee] ff
                    rst     $38                             ;[18ef] ff
                    rst     $38                             ;[18f0] ff
                    rst     $38                             ;[18f1] ff
                    rst     $38                             ;[18f2] ff
                    rst     $38                             ;[18f3] ff
                    rst     $38                             ;[18f4] ff
                    rst     $38                             ;[18f5] ff
                    rst     $38                             ;[18f6] ff
                    rst     $38                             ;[18f7] ff
                    rst     $38                             ;[18f8] ff
                    rst     $38                             ;[18f9] ff
                    rst     $38                             ;[18fa] ff
                    rst     $38                             ;[18fb] ff
                    rst     $38                             ;[18fc] ff
                    rst     $38                             ;[18fd] ff
                    rst     $38                             ;[18fe] ff
                    rst     $38                             ;[18ff] ff
                    rst     $38                             ;[1900] ff
                    rst     $38                             ;[1901] ff
                    rst     $38                             ;[1902] ff
                    rst     $38                             ;[1903] ff
                    rst     $38                             ;[1904] ff
                    rst     $38                             ;[1905] ff
                    rst     $38                             ;[1906] ff
                    rst     $38                             ;[1907] ff
                    rst     $38                             ;[1908] ff
                    rst     $38                             ;[1909] ff
                    rst     $38                             ;[190a] ff
                    rst     $38                             ;[190b] ff
                    rst     $38                             ;[190c] ff
                    rst     $38                             ;[190d] ff
                    rst     $38                             ;[190e] ff
                    rst     $38                             ;[190f] ff
                    rst     $38                             ;[1910] ff
                    rst     $38                             ;[1911] ff
                    rst     $38                             ;[1912] ff
                    rst     $38                             ;[1913] ff
                    rst     $38                             ;[1914] ff
                    rst     $38                             ;[1915] ff
                    rst     $38                             ;[1916] ff
                    rst     $38                             ;[1917] ff
                    rst     $38                             ;[1918] ff
                    rst     $38                             ;[1919] ff
                    rst     $38                             ;[191a] ff
                    rst     $38                             ;[191b] ff
                    rst     $38                             ;[191c] ff
                    rst     $38                             ;[191d] ff
                    rst     $38                             ;[191e] ff
                    rst     $38                             ;[191f] ff
                    rst     $38                             ;[1920] ff
                    rst     $38                             ;[1921] ff
                    rst     $38                             ;[1922] ff
                    rst     $38                             ;[1923] ff
                    rst     $38                             ;[1924] ff
                    rst     $38                             ;[1925] ff
                    rst     $38                             ;[1926] ff
                    rst     $38                             ;[1927] ff
                    rst     $38                             ;[1928] ff
                    rst     $38                             ;[1929] ff
                    rst     $38                             ;[192a] ff
                    rst     $38                             ;[192b] ff
                    rst     $38                             ;[192c] ff
                    rst     $38                             ;[192d] ff
                    rst     $38                             ;[192e] ff
                    rst     $38                             ;[192f] ff
                    rst     $38                             ;[1930] ff
                    rst     $38                             ;[1931] ff
                    rst     $38                             ;[1932] ff
                    rst     $38                             ;[1933] ff
                    rst     $38                             ;[1934] ff
                    rst     $38                             ;[1935] ff
                    rst     $38                             ;[1936] ff
                    rst     $38                             ;[1937] ff
                    rst     $38                             ;[1938] ff
                    rst     $38                             ;[1939] ff
                    rst     $38                             ;[193a] ff
                    rst     $38                             ;[193b] ff
                    rst     $38                             ;[193c] ff
                    rst     $38                             ;[193d] ff
                    rst     $38                             ;[193e] ff
                    rst     $38                             ;[193f] ff
                    rst     $38                             ;[1940] ff
                    rst     $38                             ;[1941] ff
                    rst     $38                             ;[1942] ff
                    rst     $38                             ;[1943] ff
                    rst     $38                             ;[1944] ff
                    rst     $38                             ;[1945] ff
                    rst     $38                             ;[1946] ff
                    rst     $38                             ;[1947] ff
                    rst     $38                             ;[1948] ff
                    rst     $38                             ;[1949] ff
                    rst     $38                             ;[194a] ff
                    rst     $38                             ;[194b] ff
                    rst     $38                             ;[194c] ff
                    rst     $38                             ;[194d] ff
                    rst     $38                             ;[194e] ff
                    rst     $38                             ;[194f] ff
                    rst     $38                             ;[1950] ff
                    rst     $38                             ;[1951] ff
                    rst     $38                             ;[1952] ff
                    rst     $38                             ;[1953] ff
                    rst     $38                             ;[1954] ff
                    rst     $38                             ;[1955] ff
                    rst     $38                             ;[1956] ff
                    rst     $38                             ;[1957] ff
                    rst     $38                             ;[1958] ff
                    rst     $38                             ;[1959] ff
                    rst     $38                             ;[195a] ff
                    rst     $38                             ;[195b] ff
                    rst     $38                             ;[195c] ff
                    rst     $38                             ;[195d] ff
                    rst     $38                             ;[195e] ff
                    rst     $38                             ;[195f] ff
                    rst     $38                             ;[1960] ff
                    rst     $38                             ;[1961] ff
                    rst     $38                             ;[1962] ff
                    rst     $38                             ;[1963] ff
                    rst     $38                             ;[1964] ff
                    rst     $38                             ;[1965] ff
                    rst     $38                             ;[1966] ff
                    rst     $38                             ;[1967] ff
                    rst     $38                             ;[1968] ff
                    rst     $38                             ;[1969] ff
                    rst     $38                             ;[196a] ff
                    rst     $38                             ;[196b] ff
                    rst     $38                             ;[196c] ff
                    rst     $38                             ;[196d] ff
                    rst     $38                             ;[196e] ff
                    rst     $38                             ;[196f] ff
                    rst     $38                             ;[1970] ff
                    rst     $38                             ;[1971] ff
                    rst     $38                             ;[1972] ff
                    rst     $38                             ;[1973] ff
                    rst     $38                             ;[1974] ff
                    rst     $38                             ;[1975] ff
                    rst     $38                             ;[1976] ff
                    rst     $38                             ;[1977] ff
                    rst     $38                             ;[1978] ff
                    rst     $38                             ;[1979] ff
                    rst     $38                             ;[197a] ff
                    rst     $38                             ;[197b] ff
                    rst     $38                             ;[197c] ff
                    rst     $38                             ;[197d] ff
                    rst     $38                             ;[197e] ff
                    rst     $38                             ;[197f] ff
                    rst     $38                             ;[1980] ff
                    rst     $38                             ;[1981] ff
                    rst     $38                             ;[1982] ff
                    rst     $38                             ;[1983] ff
                    rst     $38                             ;[1984] ff
                    rst     $38                             ;[1985] ff
                    rst     $38                             ;[1986] ff
                    rst     $38                             ;[1987] ff
                    rst     $38                             ;[1988] ff
                    rst     $38                             ;[1989] ff
                    rst     $38                             ;[198a] ff
                    rst     $38                             ;[198b] ff
                    rst     $38                             ;[198c] ff
                    rst     $38                             ;[198d] ff
                    rst     $38                             ;[198e] ff
                    rst     $38                             ;[198f] ff
                    rst     $38                             ;[1990] ff
                    rst     $38                             ;[1991] ff
                    rst     $38                             ;[1992] ff
                    rst     $38                             ;[1993] ff
                    rst     $38                             ;[1994] ff
                    rst     $38                             ;[1995] ff
                    rst     $38                             ;[1996] ff
                    rst     $38                             ;[1997] ff
                    rst     $38                             ;[1998] ff
                    rst     $38                             ;[1999] ff
                    rst     $38                             ;[199a] ff
                    rst     $38                             ;[199b] ff
                    rst     $38                             ;[199c] ff
                    rst     $38                             ;[199d] ff
                    rst     $38                             ;[199e] ff
                    rst     $38                             ;[199f] ff
                    rst     $38                             ;[19a0] ff
                    rst     $38                             ;[19a1] ff
                    rst     $38                             ;[19a2] ff
                    rst     $38                             ;[19a3] ff
                    rst     $38                             ;[19a4] ff
                    rst     $38                             ;[19a5] ff
                    rst     $38                             ;[19a6] ff
                    rst     $38                             ;[19a7] ff
                    rst     $38                             ;[19a8] ff
                    rst     $38                             ;[19a9] ff
                    rst     $38                             ;[19aa] ff
                    rst     $38                             ;[19ab] ff
                    rst     $38                             ;[19ac] ff
                    rst     $38                             ;[19ad] ff
                    rst     $38                             ;[19ae] ff
                    rst     $38                             ;[19af] ff
                    rst     $38                             ;[19b0] ff
                    rst     $38                             ;[19b1] ff
                    rst     $38                             ;[19b2] ff
                    rst     $38                             ;[19b3] ff
                    rst     $38                             ;[19b4] ff
                    rst     $38                             ;[19b5] ff
                    rst     $38                             ;[19b6] ff
                    rst     $38                             ;[19b7] ff
                    rst     $38                             ;[19b8] ff
                    rst     $38                             ;[19b9] ff
                    rst     $38                             ;[19ba] ff
                    rst     $38                             ;[19bb] ff
                    rst     $38                             ;[19bc] ff
                    rst     $38                             ;[19bd] ff
                    rst     $38                             ;[19be] ff
                    rst     $38                             ;[19bf] ff
                    rst     $38                             ;[19c0] ff
                    rst     $38                             ;[19c1] ff
                    rst     $38                             ;[19c2] ff
                    rst     $38                             ;[19c3] ff
                    rst     $38                             ;[19c4] ff
                    rst     $38                             ;[19c5] ff
                    rst     $38                             ;[19c6] ff
                    rst     $38                             ;[19c7] ff
                    rst     $38                             ;[19c8] ff
                    rst     $38                             ;[19c9] ff
                    rst     $38                             ;[19ca] ff
                    rst     $38                             ;[19cb] ff
                    rst     $38                             ;[19cc] ff
                    rst     $38                             ;[19cd] ff
                    rst     $38                             ;[19ce] ff
                    rst     $38                             ;[19cf] ff
                    rst     $38                             ;[19d0] ff
                    rst     $38                             ;[19d1] ff
                    rst     $38                             ;[19d2] ff
                    rst     $38                             ;[19d3] ff
                    rst     $38                             ;[19d4] ff
                    rst     $38                             ;[19d5] ff
                    rst     $38                             ;[19d6] ff
                    rst     $38                             ;[19d7] ff
                    rst     $38                             ;[19d8] ff
                    rst     $38                             ;[19d9] ff
                    rst     $38                             ;[19da] ff
                    rst     $38                             ;[19db] ff
                    rst     $38                             ;[19dc] ff
                    rst     $38                             ;[19dd] ff
                    rst     $38                             ;[19de] ff
                    rst     $38                             ;[19df] ff
                    rst     $38                             ;[19e0] ff
                    rst     $38                             ;[19e1] ff
                    rst     $38                             ;[19e2] ff
                    rst     $38                             ;[19e3] ff
                    rst     $38                             ;[19e4] ff
                    rst     $38                             ;[19e5] ff
                    rst     $38                             ;[19e6] ff
                    rst     $38                             ;[19e7] ff
                    rst     $38                             ;[19e8] ff
                    rst     $38                             ;[19e9] ff
                    rst     $38                             ;[19ea] ff
                    rst     $38                             ;[19eb] ff
                    rst     $38                             ;[19ec] ff
                    rst     $38                             ;[19ed] ff
                    rst     $38                             ;[19ee] ff
                    rst     $38                             ;[19ef] ff
                    rst     $38                             ;[19f0] ff
                    rst     $38                             ;[19f1] ff
                    rst     $38                             ;[19f2] ff
                    rst     $38                             ;[19f3] ff
                    rst     $38                             ;[19f4] ff
                    rst     $38                             ;[19f5] ff
                    rst     $38                             ;[19f6] ff
                    rst     $38                             ;[19f7] ff
                    rst     $38                             ;[19f8] ff
                    rst     $38                             ;[19f9] ff
                    rst     $38                             ;[19fa] ff
                    rst     $38                             ;[19fb] ff
                    rst     $38                             ;[19fc] ff
                    rst     $38                             ;[19fd] ff
                    rst     $38                             ;[19fe] ff
                    rst     $38                             ;[19ff] ff
                    rst     $38                             ;[1a00] ff
                    rst     $38                             ;[1a01] ff
                    rst     $38                             ;[1a02] ff
                    rst     $38                             ;[1a03] ff
                    rst     $38                             ;[1a04] ff
                    rst     $38                             ;[1a05] ff
                    rst     $38                             ;[1a06] ff
                    rst     $38                             ;[1a07] ff
                    rst     $38                             ;[1a08] ff
                    rst     $38                             ;[1a09] ff
                    rst     $38                             ;[1a0a] ff
                    rst     $38                             ;[1a0b] ff
                    rst     $38                             ;[1a0c] ff
                    rst     $38                             ;[1a0d] ff
                    rst     $38                             ;[1a0e] ff
                    rst     $38                             ;[1a0f] ff
                    rst     $38                             ;[1a10] ff
                    rst     $38                             ;[1a11] ff
                    rst     $38                             ;[1a12] ff
                    rst     $38                             ;[1a13] ff
                    rst     $38                             ;[1a14] ff
                    rst     $38                             ;[1a15] ff
                    rst     $38                             ;[1a16] ff
                    rst     $38                             ;[1a17] ff
                    rst     $38                             ;[1a18] ff
                    rst     $38                             ;[1a19] ff
                    rst     $38                             ;[1a1a] ff
                    rst     $38                             ;[1a1b] ff
                    rst     $38                             ;[1a1c] ff
                    rst     $38                             ;[1a1d] ff
                    rst     $38                             ;[1a1e] ff
                    rst     $38                             ;[1a1f] ff
                    rst     $38                             ;[1a20] ff
                    rst     $38                             ;[1a21] ff
                    rst     $38                             ;[1a22] ff
                    rst     $38                             ;[1a23] ff
                    rst     $38                             ;[1a24] ff
                    rst     $38                             ;[1a25] ff
                    rst     $38                             ;[1a26] ff
                    rst     $38                             ;[1a27] ff
                    rst     $38                             ;[1a28] ff
                    rst     $38                             ;[1a29] ff
                    rst     $38                             ;[1a2a] ff
                    rst     $38                             ;[1a2b] ff
                    rst     $38                             ;[1a2c] ff
                    rst     $38                             ;[1a2d] ff
                    rst     $38                             ;[1a2e] ff
                    rst     $38                             ;[1a2f] ff
                    rst     $38                             ;[1a30] ff
                    rst     $38                             ;[1a31] ff
                    rst     $38                             ;[1a32] ff
                    rst     $38                             ;[1a33] ff
                    rst     $38                             ;[1a34] ff
                    rst     $38                             ;[1a35] ff
                    rst     $38                             ;[1a36] ff
                    rst     $38                             ;[1a37] ff
                    rst     $38                             ;[1a38] ff
                    rst     $38                             ;[1a39] ff
                    rst     $38                             ;[1a3a] ff
                    rst     $38                             ;[1a3b] ff
                    rst     $38                             ;[1a3c] ff
                    rst     $38                             ;[1a3d] ff
                    rst     $38                             ;[1a3e] ff
                    rst     $38                             ;[1a3f] ff
                    rst     $38                             ;[1a40] ff
                    rst     $38                             ;[1a41] ff
                    rst     $38                             ;[1a42] ff
                    rst     $38                             ;[1a43] ff
                    rst     $38                             ;[1a44] ff
                    rst     $38                             ;[1a45] ff
                    rst     $38                             ;[1a46] ff
                    rst     $38                             ;[1a47] ff
                    rst     $38                             ;[1a48] ff
                    rst     $38                             ;[1a49] ff
                    rst     $38                             ;[1a4a] ff
                    rst     $38                             ;[1a4b] ff
                    rst     $38                             ;[1a4c] ff
                    rst     $38                             ;[1a4d] ff
                    rst     $38                             ;[1a4e] ff
                    rst     $38                             ;[1a4f] ff
                    rst     $38                             ;[1a50] ff
                    rst     $38                             ;[1a51] ff
                    rst     $38                             ;[1a52] ff
                    rst     $38                             ;[1a53] ff
                    rst     $38                             ;[1a54] ff
                    rst     $38                             ;[1a55] ff
                    rst     $38                             ;[1a56] ff
                    rst     $38                             ;[1a57] ff
                    rst     $38                             ;[1a58] ff
                    rst     $38                             ;[1a59] ff
                    rst     $38                             ;[1a5a] ff
                    rst     $38                             ;[1a5b] ff
                    rst     $38                             ;[1a5c] ff
                    rst     $38                             ;[1a5d] ff
                    rst     $38                             ;[1a5e] ff
                    rst     $38                             ;[1a5f] ff
                    rst     $38                             ;[1a60] ff
                    rst     $38                             ;[1a61] ff
                    rst     $38                             ;[1a62] ff
                    rst     $38                             ;[1a63] ff
                    rst     $38                             ;[1a64] ff
                    rst     $38                             ;[1a65] ff
                    rst     $38                             ;[1a66] ff
                    rst     $38                             ;[1a67] ff
                    rst     $38                             ;[1a68] ff
                    rst     $38                             ;[1a69] ff
                    rst     $38                             ;[1a6a] ff
                    rst     $38                             ;[1a6b] ff
                    rst     $38                             ;[1a6c] ff
                    rst     $38                             ;[1a6d] ff
                    rst     $38                             ;[1a6e] ff
                    rst     $38                             ;[1a6f] ff
                    rst     $38                             ;[1a70] ff
                    rst     $38                             ;[1a71] ff
                    rst     $38                             ;[1a72] ff
                    rst     $38                             ;[1a73] ff
                    rst     $38                             ;[1a74] ff
                    rst     $38                             ;[1a75] ff
                    rst     $38                             ;[1a76] ff
                    rst     $38                             ;[1a77] ff
                    rst     $38                             ;[1a78] ff
                    rst     $38                             ;[1a79] ff
                    rst     $38                             ;[1a7a] ff
                    rst     $38                             ;[1a7b] ff
                    rst     $38                             ;[1a7c] ff
                    rst     $38                             ;[1a7d] ff
                    rst     $38                             ;[1a7e] ff
                    rst     $38                             ;[1a7f] ff
                    rst     $38                             ;[1a80] ff
                    rst     $38                             ;[1a81] ff
                    rst     $38                             ;[1a82] ff
                    rst     $38                             ;[1a83] ff
                    rst     $38                             ;[1a84] ff
                    rst     $38                             ;[1a85] ff
                    rst     $38                             ;[1a86] ff
                    rst     $38                             ;[1a87] ff
                    rst     $38                             ;[1a88] ff
                    rst     $38                             ;[1a89] ff
                    rst     $38                             ;[1a8a] ff
                    rst     $38                             ;[1a8b] ff
                    rst     $38                             ;[1a8c] ff
                    rst     $38                             ;[1a8d] ff
                    rst     $38                             ;[1a8e] ff
                    rst     $38                             ;[1a8f] ff
                    rst     $38                             ;[1a90] ff
                    rst     $38                             ;[1a91] ff
                    rst     $38                             ;[1a92] ff
                    rst     $38                             ;[1a93] ff
                    rst     $38                             ;[1a94] ff
                    rst     $38                             ;[1a95] ff
                    rst     $38                             ;[1a96] ff
                    rst     $38                             ;[1a97] ff
                    rst     $38                             ;[1a98] ff
                    rst     $38                             ;[1a99] ff
                    rst     $38                             ;[1a9a] ff
                    rst     $38                             ;[1a9b] ff
                    rst     $38                             ;[1a9c] ff
                    rst     $38                             ;[1a9d] ff
                    rst     $38                             ;[1a9e] ff
                    rst     $38                             ;[1a9f] ff
                    rst     $38                             ;[1aa0] ff
                    rst     $38                             ;[1aa1] ff
                    rst     $38                             ;[1aa2] ff
                    rst     $38                             ;[1aa3] ff
                    rst     $38                             ;[1aa4] ff
                    rst     $38                             ;[1aa5] ff
                    rst     $38                             ;[1aa6] ff
                    rst     $38                             ;[1aa7] ff
                    rst     $38                             ;[1aa8] ff
                    rst     $38                             ;[1aa9] ff
                    rst     $38                             ;[1aaa] ff
                    rst     $38                             ;[1aab] ff
                    rst     $38                             ;[1aac] ff
                    rst     $38                             ;[1aad] ff
                    rst     $38                             ;[1aae] ff
                    rst     $38                             ;[1aaf] ff
                    rst     $38                             ;[1ab0] ff
                    rst     $38                             ;[1ab1] ff
                    rst     $38                             ;[1ab2] ff
                    rst     $38                             ;[1ab3] ff
                    rst     $38                             ;[1ab4] ff
                    rst     $38                             ;[1ab5] ff
                    rst     $38                             ;[1ab6] ff
                    rst     $38                             ;[1ab7] ff
                    rst     $38                             ;[1ab8] ff
                    rst     $38                             ;[1ab9] ff
                    rst     $38                             ;[1aba] ff
                    rst     $38                             ;[1abb] ff
                    rst     $38                             ;[1abc] ff
                    rst     $38                             ;[1abd] ff
                    rst     $38                             ;[1abe] ff
                    rst     $38                             ;[1abf] ff
                    rst     $38                             ;[1ac0] ff
                    rst     $38                             ;[1ac1] ff
                    rst     $38                             ;[1ac2] ff
                    rst     $38                             ;[1ac3] ff
                    rst     $38                             ;[1ac4] ff
                    rst     $38                             ;[1ac5] ff
                    rst     $38                             ;[1ac6] ff
                    rst     $38                             ;[1ac7] ff
                    rst     $38                             ;[1ac8] ff
                    rst     $38                             ;[1ac9] ff
                    rst     $38                             ;[1aca] ff
                    rst     $38                             ;[1acb] ff
                    rst     $38                             ;[1acc] ff
                    rst     $38                             ;[1acd] ff
                    rst     $38                             ;[1ace] ff
                    rst     $38                             ;[1acf] ff
                    rst     $38                             ;[1ad0] ff
                    rst     $38                             ;[1ad1] ff
                    rst     $38                             ;[1ad2] ff
                    rst     $38                             ;[1ad3] ff
                    rst     $38                             ;[1ad4] ff
                    rst     $38                             ;[1ad5] ff
                    rst     $38                             ;[1ad6] ff
                    rst     $38                             ;[1ad7] ff
                    rst     $38                             ;[1ad8] ff
                    rst     $38                             ;[1ad9] ff
                    rst     $38                             ;[1ada] ff
                    rst     $38                             ;[1adb] ff
                    rst     $38                             ;[1adc] ff
                    rst     $38                             ;[1add] ff
                    rst     $38                             ;[1ade] ff
                    rst     $38                             ;[1adf] ff
                    rst     $38                             ;[1ae0] ff
                    rst     $38                             ;[1ae1] ff
                    rst     $38                             ;[1ae2] ff
                    rst     $38                             ;[1ae3] ff
                    rst     $38                             ;[1ae4] ff
                    rst     $38                             ;[1ae5] ff
                    rst     $38                             ;[1ae6] ff
                    rst     $38                             ;[1ae7] ff
                    rst     $38                             ;[1ae8] ff
                    rst     $38                             ;[1ae9] ff
                    rst     $38                             ;[1aea] ff
                    rst     $38                             ;[1aeb] ff
                    rst     $38                             ;[1aec] ff
                    rst     $38                             ;[1aed] ff
                    rst     $38                             ;[1aee] ff
                    rst     $38                             ;[1aef] ff
                    rst     $38                             ;[1af0] ff
                    rst     $38                             ;[1af1] ff
                    rst     $38                             ;[1af2] ff
                    rst     $38                             ;[1af3] ff
                    rst     $38                             ;[1af4] ff
                    rst     $38                             ;[1af5] ff
                    rst     $38                             ;[1af6] ff
                    rst     $38                             ;[1af7] ff
                    rst     $38                             ;[1af8] ff
                    rst     $38                             ;[1af9] ff
                    rst     $38                             ;[1afa] ff
                    rst     $38                             ;[1afb] ff
                    rst     $38                             ;[1afc] ff
                    rst     $38                             ;[1afd] ff
                    rst     $38                             ;[1afe] ff
                    rst     $38                             ;[1aff] ff
                    rst     $38                             ;[1b00] ff
                    rst     $38                             ;[1b01] ff
                    rst     $38                             ;[1b02] ff
                    rst     $38                             ;[1b03] ff
                    rst     $38                             ;[1b04] ff
                    rst     $38                             ;[1b05] ff
                    rst     $38                             ;[1b06] ff
                    rst     $38                             ;[1b07] ff
                    rst     $38                             ;[1b08] ff
                    rst     $38                             ;[1b09] ff
                    rst     $38                             ;[1b0a] ff
                    rst     $38                             ;[1b0b] ff
                    rst     $38                             ;[1b0c] ff
                    rst     $38                             ;[1b0d] ff
                    rst     $38                             ;[1b0e] ff
                    rst     $38                             ;[1b0f] ff
                    rst     $38                             ;[1b10] ff
                    rst     $38                             ;[1b11] ff
                    rst     $38                             ;[1b12] ff
                    rst     $38                             ;[1b13] ff
                    rst     $38                             ;[1b14] ff
                    rst     $38                             ;[1b15] ff
                    rst     $38                             ;[1b16] ff
                    rst     $38                             ;[1b17] ff
                    rst     $38                             ;[1b18] ff
                    rst     $38                             ;[1b19] ff
                    rst     $38                             ;[1b1a] ff
                    rst     $38                             ;[1b1b] ff
                    rst     $38                             ;[1b1c] ff
                    rst     $38                             ;[1b1d] ff
                    rst     $38                             ;[1b1e] ff
                    rst     $38                             ;[1b1f] ff
                    rst     $38                             ;[1b20] ff
                    rst     $38                             ;[1b21] ff
                    rst     $38                             ;[1b22] ff
                    rst     $38                             ;[1b23] ff
                    rst     $38                             ;[1b24] ff
                    rst     $38                             ;[1b25] ff
                    rst     $38                             ;[1b26] ff
                    rst     $38                             ;[1b27] ff
                    rst     $38                             ;[1b28] ff
                    rst     $38                             ;[1b29] ff
                    rst     $38                             ;[1b2a] ff
                    rst     $38                             ;[1b2b] ff
                    rst     $38                             ;[1b2c] ff
                    rst     $38                             ;[1b2d] ff
                    rst     $38                             ;[1b2e] ff
                    rst     $38                             ;[1b2f] ff
                    rst     $38                             ;[1b30] ff
                    rst     $38                             ;[1b31] ff
                    rst     $38                             ;[1b32] ff
                    rst     $38                             ;[1b33] ff
                    rst     $38                             ;[1b34] ff
                    rst     $38                             ;[1b35] ff
                    rst     $38                             ;[1b36] ff
                    rst     $38                             ;[1b37] ff
                    rst     $38                             ;[1b38] ff
                    rst     $38                             ;[1b39] ff
                    rst     $38                             ;[1b3a] ff
                    rst     $38                             ;[1b3b] ff
                    rst     $38                             ;[1b3c] ff
                    rst     $38                             ;[1b3d] ff
                    rst     $38                             ;[1b3e] ff
                    rst     $38                             ;[1b3f] ff
                    rst     $38                             ;[1b40] ff
                    rst     $38                             ;[1b41] ff
                    rst     $38                             ;[1b42] ff
                    rst     $38                             ;[1b43] ff
                    rst     $38                             ;[1b44] ff
                    rst     $38                             ;[1b45] ff
                    rst     $38                             ;[1b46] ff
                    rst     $38                             ;[1b47] ff
                    rst     $38                             ;[1b48] ff
                    rst     $38                             ;[1b49] ff
                    rst     $38                             ;[1b4a] ff
                    rst     $38                             ;[1b4b] ff
                    rst     $38                             ;[1b4c] ff
                    rst     $38                             ;[1b4d] ff
                    rst     $38                             ;[1b4e] ff
                    rst     $38                             ;[1b4f] ff
                    rst     $38                             ;[1b50] ff
                    rst     $38                             ;[1b51] ff
                    rst     $38                             ;[1b52] ff
                    rst     $38                             ;[1b53] ff
                    rst     $38                             ;[1b54] ff
                    rst     $38                             ;[1b55] ff
                    rst     $38                             ;[1b56] ff
                    rst     $38                             ;[1b57] ff
                    rst     $38                             ;[1b58] ff
                    rst     $38                             ;[1b59] ff
                    rst     $38                             ;[1b5a] ff
                    rst     $38                             ;[1b5b] ff
                    rst     $38                             ;[1b5c] ff
                    rst     $38                             ;[1b5d] ff
                    rst     $38                             ;[1b5e] ff
                    rst     $38                             ;[1b5f] ff
                    rst     $38                             ;[1b60] ff
                    rst     $38                             ;[1b61] ff
                    rst     $38                             ;[1b62] ff
                    rst     $38                             ;[1b63] ff
                    rst     $38                             ;[1b64] ff
                    rst     $38                             ;[1b65] ff
                    rst     $38                             ;[1b66] ff
                    rst     $38                             ;[1b67] ff
                    rst     $38                             ;[1b68] ff
                    rst     $38                             ;[1b69] ff
                    rst     $38                             ;[1b6a] ff
                    rst     $38                             ;[1b6b] ff
                    rst     $38                             ;[1b6c] ff
                    rst     $38                             ;[1b6d] ff
                    rst     $38                             ;[1b6e] ff
                    rst     $38                             ;[1b6f] ff
                    rst     $38                             ;[1b70] ff
                    rst     $38                             ;[1b71] ff
                    rst     $38                             ;[1b72] ff
                    rst     $38                             ;[1b73] ff
                    rst     $38                             ;[1b74] ff
                    rst     $38                             ;[1b75] ff
                    rst     $38                             ;[1b76] ff
                    rst     $38                             ;[1b77] ff
                    rst     $38                             ;[1b78] ff
                    rst     $38                             ;[1b79] ff
                    rst     $38                             ;[1b7a] ff
                    rst     $38                             ;[1b7b] ff
                    rst     $38                             ;[1b7c] ff
                    rst     $38                             ;[1b7d] ff
                    rst     $38                             ;[1b7e] ff
                    rst     $38                             ;[1b7f] ff
                    rst     $38                             ;[1b80] ff
                    rst     $38                             ;[1b81] ff
                    rst     $38                             ;[1b82] ff
                    rst     $38                             ;[1b83] ff
                    rst     $38                             ;[1b84] ff
                    rst     $38                             ;[1b85] ff
                    rst     $38                             ;[1b86] ff
                    rst     $38                             ;[1b87] ff
                    rst     $38                             ;[1b88] ff
                    rst     $38                             ;[1b89] ff
                    rst     $38                             ;[1b8a] ff
                    rst     $38                             ;[1b8b] ff
                    rst     $38                             ;[1b8c] ff
                    rst     $38                             ;[1b8d] ff
                    rst     $38                             ;[1b8e] ff
                    rst     $38                             ;[1b8f] ff
                    rst     $38                             ;[1b90] ff
                    rst     $38                             ;[1b91] ff
                    rst     $38                             ;[1b92] ff
                    rst     $38                             ;[1b93] ff
                    rst     $38                             ;[1b94] ff
                    rst     $38                             ;[1b95] ff
                    rst     $38                             ;[1b96] ff
                    rst     $38                             ;[1b97] ff
                    rst     $38                             ;[1b98] ff
                    rst     $38                             ;[1b99] ff
                    rst     $38                             ;[1b9a] ff
                    rst     $38                             ;[1b9b] ff
                    rst     $38                             ;[1b9c] ff
                    rst     $38                             ;[1b9d] ff
                    rst     $38                             ;[1b9e] ff
                    rst     $38                             ;[1b9f] ff
                    rst     $38                             ;[1ba0] ff
                    rst     $38                             ;[1ba1] ff
                    rst     $38                             ;[1ba2] ff
                    rst     $38                             ;[1ba3] ff
                    rst     $38                             ;[1ba4] ff
                    rst     $38                             ;[1ba5] ff
                    rst     $38                             ;[1ba6] ff
                    rst     $38                             ;[1ba7] ff
                    rst     $38                             ;[1ba8] ff
                    rst     $38                             ;[1ba9] ff
                    rst     $38                             ;[1baa] ff
                    rst     $38                             ;[1bab] ff
                    rst     $38                             ;[1bac] ff
                    rst     $38                             ;[1bad] ff
                    rst     $38                             ;[1bae] ff
                    rst     $38                             ;[1baf] ff
                    rst     $38                             ;[1bb0] ff
                    rst     $38                             ;[1bb1] ff
                    rst     $38                             ;[1bb2] ff
                    rst     $38                             ;[1bb3] ff
                    rst     $38                             ;[1bb4] ff
                    rst     $38                             ;[1bb5] ff
                    rst     $38                             ;[1bb6] ff
                    rst     $38                             ;[1bb7] ff
                    rst     $38                             ;[1bb8] ff
                    rst     $38                             ;[1bb9] ff
                    rst     $38                             ;[1bba] ff
                    rst     $38                             ;[1bbb] ff
                    rst     $38                             ;[1bbc] ff
                    rst     $38                             ;[1bbd] ff
                    rst     $38                             ;[1bbe] ff
                    rst     $38                             ;[1bbf] ff
                    rst     $38                             ;[1bc0] ff
                    rst     $38                             ;[1bc1] ff
                    rst     $38                             ;[1bc2] ff
                    rst     $38                             ;[1bc3] ff
                    rst     $38                             ;[1bc4] ff
                    rst     $38                             ;[1bc5] ff
                    rst     $38                             ;[1bc6] ff
                    rst     $38                             ;[1bc7] ff
                    rst     $38                             ;[1bc8] ff
                    rst     $38                             ;[1bc9] ff
                    rst     $38                             ;[1bca] ff
                    rst     $38                             ;[1bcb] ff
                    rst     $38                             ;[1bcc] ff
                    rst     $38                             ;[1bcd] ff
                    rst     $38                             ;[1bce] ff
                    rst     $38                             ;[1bcf] ff
                    rst     $38                             ;[1bd0] ff
                    rst     $38                             ;[1bd1] ff
                    rst     $38                             ;[1bd2] ff
                    rst     $38                             ;[1bd3] ff
                    rst     $38                             ;[1bd4] ff
                    rst     $38                             ;[1bd5] ff
                    rst     $38                             ;[1bd6] ff
                    rst     $38                             ;[1bd7] ff
                    rst     $38                             ;[1bd8] ff
                    rst     $38                             ;[1bd9] ff
                    rst     $38                             ;[1bda] ff
                    rst     $38                             ;[1bdb] ff
                    rst     $38                             ;[1bdc] ff
                    rst     $38                             ;[1bdd] ff
                    rst     $38                             ;[1bde] ff
                    rst     $38                             ;[1bdf] ff
                    rst     $38                             ;[1be0] ff
                    rst     $38                             ;[1be1] ff
                    rst     $38                             ;[1be2] ff
                    rst     $38                             ;[1be3] ff
                    rst     $38                             ;[1be4] ff
                    rst     $38                             ;[1be5] ff
                    rst     $38                             ;[1be6] ff
                    rst     $38                             ;[1be7] ff
                    rst     $38                             ;[1be8] ff
                    rst     $38                             ;[1be9] ff
                    rst     $38                             ;[1bea] ff
                    rst     $38                             ;[1beb] ff
                    rst     $38                             ;[1bec] ff
                    rst     $38                             ;[1bed] ff
                    rst     $38                             ;[1bee] ff
                    rst     $38                             ;[1bef] ff
                    rst     $38                             ;[1bf0] ff
                    rst     $38                             ;[1bf1] ff
                    rst     $38                             ;[1bf2] ff
                    rst     $38                             ;[1bf3] ff
                    rst     $38                             ;[1bf4] ff
                    rst     $38                             ;[1bf5] ff
                    rst     $38                             ;[1bf6] ff
                    rst     $38                             ;[1bf7] ff
                    rst     $38                             ;[1bf8] ff
                    rst     $38                             ;[1bf9] ff
                    rst     $38                             ;[1bfa] ff
                    rst     $38                             ;[1bfb] ff
                    rst     $38                             ;[1bfc] ff
                    rst     $38                             ;[1bfd] ff
                    rst     $38                             ;[1bfe] ff
                    rst     $38                             ;[1bff] ff
                    rst     $38                             ;[1c00] ff
                    rst     $38                             ;[1c01] ff
                    rst     $38                             ;[1c02] ff
                    rst     $38                             ;[1c03] ff
                    rst     $38                             ;[1c04] ff
                    rst     $38                             ;[1c05] ff
                    rst     $38                             ;[1c06] ff
                    rst     $38                             ;[1c07] ff
                    rst     $38                             ;[1c08] ff
                    rst     $38                             ;[1c09] ff
                    rst     $38                             ;[1c0a] ff
                    rst     $38                             ;[1c0b] ff
                    rst     $38                             ;[1c0c] ff
                    rst     $38                             ;[1c0d] ff
                    rst     $38                             ;[1c0e] ff
                    rst     $38                             ;[1c0f] ff
                    rst     $38                             ;[1c10] ff
                    rst     $38                             ;[1c11] ff
                    rst     $38                             ;[1c12] ff
                    rst     $38                             ;[1c13] ff
                    rst     $38                             ;[1c14] ff
                    rst     $38                             ;[1c15] ff
                    rst     $38                             ;[1c16] ff
                    rst     $38                             ;[1c17] ff
                    rst     $38                             ;[1c18] ff
                    rst     $38                             ;[1c19] ff
                    rst     $38                             ;[1c1a] ff
                    rst     $38                             ;[1c1b] ff
                    rst     $38                             ;[1c1c] ff
                    rst     $38                             ;[1c1d] ff
                    rst     $38                             ;[1c1e] ff
                    rst     $38                             ;[1c1f] ff
                    rst     $38                             ;[1c20] ff
                    rst     $38                             ;[1c21] ff
                    rst     $38                             ;[1c22] ff
                    rst     $38                             ;[1c23] ff
                    rst     $38                             ;[1c24] ff
                    rst     $38                             ;[1c25] ff
                    rst     $38                             ;[1c26] ff
                    rst     $38                             ;[1c27] ff
                    rst     $38                             ;[1c28] ff
                    rst     $38                             ;[1c29] ff
                    rst     $38                             ;[1c2a] ff
                    rst     $38                             ;[1c2b] ff
                    rst     $38                             ;[1c2c] ff
                    rst     $38                             ;[1c2d] ff
                    rst     $38                             ;[1c2e] ff
                    rst     $38                             ;[1c2f] ff
                    rst     $38                             ;[1c30] ff
                    rst     $38                             ;[1c31] ff
                    rst     $38                             ;[1c32] ff
                    rst     $38                             ;[1c33] ff
                    rst     $38                             ;[1c34] ff
                    rst     $38                             ;[1c35] ff
                    rst     $38                             ;[1c36] ff
                    rst     $38                             ;[1c37] ff
                    rst     $38                             ;[1c38] ff
                    rst     $38                             ;[1c39] ff
                    rst     $38                             ;[1c3a] ff
                    rst     $38                             ;[1c3b] ff
                    rst     $38                             ;[1c3c] ff
                    rst     $38                             ;[1c3d] ff
                    rst     $38                             ;[1c3e] ff
                    rst     $38                             ;[1c3f] ff
                    rst     $38                             ;[1c40] ff
                    rst     $38                             ;[1c41] ff
                    rst     $38                             ;[1c42] ff
                    rst     $38                             ;[1c43] ff
                    rst     $38                             ;[1c44] ff
                    rst     $38                             ;[1c45] ff
                    rst     $38                             ;[1c46] ff
                    rst     $38                             ;[1c47] ff
                    rst     $38                             ;[1c48] ff
                    rst     $38                             ;[1c49] ff
                    rst     $38                             ;[1c4a] ff
                    rst     $38                             ;[1c4b] ff
                    rst     $38                             ;[1c4c] ff
                    rst     $38                             ;[1c4d] ff
                    rst     $38                             ;[1c4e] ff
                    rst     $38                             ;[1c4f] ff
                    rst     $38                             ;[1c50] ff
                    rst     $38                             ;[1c51] ff
                    rst     $38                             ;[1c52] ff
                    rst     $38                             ;[1c53] ff
                    rst     $38                             ;[1c54] ff
                    rst     $38                             ;[1c55] ff
                    rst     $38                             ;[1c56] ff
                    rst     $38                             ;[1c57] ff
                    rst     $38                             ;[1c58] ff
                    rst     $38                             ;[1c59] ff
                    rst     $38                             ;[1c5a] ff
                    rst     $38                             ;[1c5b] ff
                    rst     $38                             ;[1c5c] ff
                    rst     $38                             ;[1c5d] ff
                    rst     $38                             ;[1c5e] ff
                    rst     $38                             ;[1c5f] ff
                    rst     $38                             ;[1c60] ff
                    rst     $38                             ;[1c61] ff
                    rst     $38                             ;[1c62] ff
                    rst     $38                             ;[1c63] ff
                    rst     $38                             ;[1c64] ff
                    rst     $38                             ;[1c65] ff
                    rst     $38                             ;[1c66] ff
                    rst     $38                             ;[1c67] ff
                    rst     $38                             ;[1c68] ff
                    rst     $38                             ;[1c69] ff
                    rst     $38                             ;[1c6a] ff
                    rst     $38                             ;[1c6b] ff
                    rst     $38                             ;[1c6c] ff
                    rst     $38                             ;[1c6d] ff
                    rst     $38                             ;[1c6e] ff
                    rst     $38                             ;[1c6f] ff
                    rst     $38                             ;[1c70] ff
                    rst     $38                             ;[1c71] ff
                    rst     $38                             ;[1c72] ff
                    rst     $38                             ;[1c73] ff
                    rst     $38                             ;[1c74] ff
                    rst     $38                             ;[1c75] ff
                    rst     $38                             ;[1c76] ff
                    rst     $38                             ;[1c77] ff
                    rst     $38                             ;[1c78] ff
                    rst     $38                             ;[1c79] ff
                    rst     $38                             ;[1c7a] ff
                    rst     $38                             ;[1c7b] ff
                    rst     $38                             ;[1c7c] ff
                    rst     $38                             ;[1c7d] ff
                    rst     $38                             ;[1c7e] ff
                    rst     $38                             ;[1c7f] ff
                    rst     $38                             ;[1c80] ff
                    rst     $38                             ;[1c81] ff
                    rst     $38                             ;[1c82] ff
                    rst     $38                             ;[1c83] ff
                    rst     $38                             ;[1c84] ff
                    rst     $38                             ;[1c85] ff
                    rst     $38                             ;[1c86] ff
                    rst     $38                             ;[1c87] ff
                    rst     $38                             ;[1c88] ff
                    rst     $38                             ;[1c89] ff
                    rst     $38                             ;[1c8a] ff
                    rst     $38                             ;[1c8b] ff
                    rst     $38                             ;[1c8c] ff
                    rst     $38                             ;[1c8d] ff
                    rst     $38                             ;[1c8e] ff
                    rst     $38                             ;[1c8f] ff
                    rst     $38                             ;[1c90] ff
                    rst     $38                             ;[1c91] ff
                    rst     $38                             ;[1c92] ff
                    rst     $38                             ;[1c93] ff
                    rst     $38                             ;[1c94] ff
                    rst     $38                             ;[1c95] ff
                    rst     $38                             ;[1c96] ff
                    rst     $38                             ;[1c97] ff
                    rst     $38                             ;[1c98] ff
                    rst     $38                             ;[1c99] ff
                    rst     $38                             ;[1c9a] ff
                    rst     $38                             ;[1c9b] ff
                    rst     $38                             ;[1c9c] ff
                    rst     $38                             ;[1c9d] ff
                    rst     $38                             ;[1c9e] ff
                    rst     $38                             ;[1c9f] ff
                    rst     $38                             ;[1ca0] ff
                    rst     $38                             ;[1ca1] ff
                    rst     $38                             ;[1ca2] ff
                    rst     $38                             ;[1ca3] ff
                    rst     $38                             ;[1ca4] ff
                    rst     $38                             ;[1ca5] ff
                    rst     $38                             ;[1ca6] ff
                    rst     $38                             ;[1ca7] ff
                    rst     $38                             ;[1ca8] ff
                    rst     $38                             ;[1ca9] ff
                    rst     $38                             ;[1caa] ff
                    rst     $38                             ;[1cab] ff
                    rst     $38                             ;[1cac] ff
                    rst     $38                             ;[1cad] ff
                    rst     $38                             ;[1cae] ff
                    rst     $38                             ;[1caf] ff
                    rst     $38                             ;[1cb0] ff
                    rst     $38                             ;[1cb1] ff
                    rst     $38                             ;[1cb2] ff
                    rst     $38                             ;[1cb3] ff
                    rst     $38                             ;[1cb4] ff
                    rst     $38                             ;[1cb5] ff
                    rst     $38                             ;[1cb6] ff
                    rst     $38                             ;[1cb7] ff
                    rst     $38                             ;[1cb8] ff
                    rst     $38                             ;[1cb9] ff
                    rst     $38                             ;[1cba] ff
                    rst     $38                             ;[1cbb] ff
                    rst     $38                             ;[1cbc] ff
                    rst     $38                             ;[1cbd] ff
                    rst     $38                             ;[1cbe] ff
                    rst     $38                             ;[1cbf] ff
                    rst     $38                             ;[1cc0] ff
                    rst     $38                             ;[1cc1] ff
                    rst     $38                             ;[1cc2] ff
                    rst     $38                             ;[1cc3] ff
                    rst     $38                             ;[1cc4] ff
                    rst     $38                             ;[1cc5] ff
                    rst     $38                             ;[1cc6] ff
                    rst     $38                             ;[1cc7] ff
                    rst     $38                             ;[1cc8] ff
                    rst     $38                             ;[1cc9] ff
                    rst     $38                             ;[1cca] ff
                    rst     $38                             ;[1ccb] ff
                    rst     $38                             ;[1ccc] ff
                    rst     $38                             ;[1ccd] ff
                    rst     $38                             ;[1cce] ff
                    rst     $38                             ;[1ccf] ff
                    rst     $38                             ;[1cd0] ff
                    rst     $38                             ;[1cd1] ff
                    rst     $38                             ;[1cd2] ff
                    rst     $38                             ;[1cd3] ff
                    rst     $38                             ;[1cd4] ff
                    rst     $38                             ;[1cd5] ff
                    rst     $38                             ;[1cd6] ff
                    rst     $38                             ;[1cd7] ff
                    rst     $38                             ;[1cd8] ff
                    rst     $38                             ;[1cd9] ff
                    rst     $38                             ;[1cda] ff
                    rst     $38                             ;[1cdb] ff
                    rst     $38                             ;[1cdc] ff
                    rst     $38                             ;[1cdd] ff
                    rst     $38                             ;[1cde] ff
                    rst     $38                             ;[1cdf] ff
                    rst     $38                             ;[1ce0] ff
                    rst     $38                             ;[1ce1] ff
                    rst     $38                             ;[1ce2] ff
                    rst     $38                             ;[1ce3] ff
                    rst     $38                             ;[1ce4] ff
                    rst     $38                             ;[1ce5] ff
                    rst     $38                             ;[1ce6] ff
                    rst     $38                             ;[1ce7] ff
                    rst     $38                             ;[1ce8] ff
                    rst     $38                             ;[1ce9] ff
                    rst     $38                             ;[1cea] ff
                    rst     $38                             ;[1ceb] ff
                    rst     $38                             ;[1cec] ff
                    rst     $38                             ;[1ced] ff
                    rst     $38                             ;[1cee] ff
                    rst     $38                             ;[1cef] ff
                    rst     $38                             ;[1cf0] ff
                    rst     $38                             ;[1cf1] ff
                    rst     $38                             ;[1cf2] ff
                    rst     $38                             ;[1cf3] ff
                    rst     $38                             ;[1cf4] ff
                    rst     $38                             ;[1cf5] ff
                    rst     $38                             ;[1cf6] ff
                    rst     $38                             ;[1cf7] ff
                    rst     $38                             ;[1cf8] ff
                    rst     $38                             ;[1cf9] ff
                    rst     $38                             ;[1cfa] ff
                    rst     $38                             ;[1cfb] ff
                    rst     $38                             ;[1cfc] ff
                    rst     $38                             ;[1cfd] ff
                    rst     $38                             ;[1cfe] ff
                    rst     $38                             ;[1cff] ff
                    rst     $38                             ;[1d00] ff
                    rst     $38                             ;[1d01] ff
                    rst     $38                             ;[1d02] ff
                    rst     $38                             ;[1d03] ff
                    rst     $38                             ;[1d04] ff
                    rst     $38                             ;[1d05] ff
                    rst     $38                             ;[1d06] ff
                    rst     $38                             ;[1d07] ff
                    rst     $38                             ;[1d08] ff
                    rst     $38                             ;[1d09] ff
                    rst     $38                             ;[1d0a] ff
                    rst     $38                             ;[1d0b] ff
                    rst     $38                             ;[1d0c] ff
                    rst     $38                             ;[1d0d] ff
                    rst     $38                             ;[1d0e] ff
                    rst     $38                             ;[1d0f] ff
                    rst     $38                             ;[1d10] ff
                    rst     $38                             ;[1d11] ff
                    rst     $38                             ;[1d12] ff
                    rst     $38                             ;[1d13] ff
                    rst     $38                             ;[1d14] ff
                    rst     $38                             ;[1d15] ff
                    rst     $38                             ;[1d16] ff
                    rst     $38                             ;[1d17] ff
                    rst     $38                             ;[1d18] ff
                    rst     $38                             ;[1d19] ff
                    rst     $38                             ;[1d1a] ff
                    rst     $38                             ;[1d1b] ff
                    rst     $38                             ;[1d1c] ff
                    rst     $38                             ;[1d1d] ff
                    rst     $38                             ;[1d1e] ff
                    rst     $38                             ;[1d1f] ff
                    rst     $38                             ;[1d20] ff
                    rst     $38                             ;[1d21] ff
                    rst     $38                             ;[1d22] ff
                    rst     $38                             ;[1d23] ff
                    rst     $38                             ;[1d24] ff
                    rst     $38                             ;[1d25] ff
                    rst     $38                             ;[1d26] ff
                    rst     $38                             ;[1d27] ff
                    rst     $38                             ;[1d28] ff
                    rst     $38                             ;[1d29] ff
                    rst     $38                             ;[1d2a] ff
                    rst     $38                             ;[1d2b] ff
                    rst     $38                             ;[1d2c] ff
                    rst     $38                             ;[1d2d] ff
                    rst     $38                             ;[1d2e] ff
                    rst     $38                             ;[1d2f] ff
                    rst     $38                             ;[1d30] ff
                    rst     $38                             ;[1d31] ff
                    rst     $38                             ;[1d32] ff
                    rst     $38                             ;[1d33] ff
                    rst     $38                             ;[1d34] ff
                    rst     $38                             ;[1d35] ff
                    rst     $38                             ;[1d36] ff
                    rst     $38                             ;[1d37] ff
                    rst     $38                             ;[1d38] ff
                    rst     $38                             ;[1d39] ff
                    rst     $38                             ;[1d3a] ff
                    rst     $38                             ;[1d3b] ff
                    rst     $38                             ;[1d3c] ff
                    rst     $38                             ;[1d3d] ff
                    rst     $38                             ;[1d3e] ff
                    rst     $38                             ;[1d3f] ff
                    rst     $38                             ;[1d40] ff
                    rst     $38                             ;[1d41] ff
                    rst     $38                             ;[1d42] ff
                    rst     $38                             ;[1d43] ff
                    rst     $38                             ;[1d44] ff
                    rst     $38                             ;[1d45] ff
                    rst     $38                             ;[1d46] ff
                    rst     $38                             ;[1d47] ff
                    rst     $38                             ;[1d48] ff
                    rst     $38                             ;[1d49] ff
                    rst     $38                             ;[1d4a] ff
                    rst     $38                             ;[1d4b] ff
                    rst     $38                             ;[1d4c] ff
                    rst     $38                             ;[1d4d] ff
                    rst     $38                             ;[1d4e] ff
                    rst     $38                             ;[1d4f] ff
                    rst     $38                             ;[1d50] ff
                    rst     $38                             ;[1d51] ff
                    rst     $38                             ;[1d52] ff
                    rst     $38                             ;[1d53] ff
                    rst     $38                             ;[1d54] ff
                    rst     $38                             ;[1d55] ff
                    rst     $38                             ;[1d56] ff
                    rst     $38                             ;[1d57] ff
                    rst     $38                             ;[1d58] ff
                    rst     $38                             ;[1d59] ff
                    rst     $38                             ;[1d5a] ff
                    rst     $38                             ;[1d5b] ff
                    rst     $38                             ;[1d5c] ff
                    rst     $38                             ;[1d5d] ff
                    rst     $38                             ;[1d5e] ff
                    rst     $38                             ;[1d5f] ff
                    rst     $38                             ;[1d60] ff
                    rst     $38                             ;[1d61] ff
                    rst     $38                             ;[1d62] ff
                    rst     $38                             ;[1d63] ff
                    rst     $38                             ;[1d64] ff
                    rst     $38                             ;[1d65] ff
                    rst     $38                             ;[1d66] ff
                    rst     $38                             ;[1d67] ff
                    rst     $38                             ;[1d68] ff
                    rst     $38                             ;[1d69] ff
                    rst     $38                             ;[1d6a] ff
                    rst     $38                             ;[1d6b] ff
                    rst     $38                             ;[1d6c] ff
                    rst     $38                             ;[1d6d] ff
                    rst     $38                             ;[1d6e] ff
                    rst     $38                             ;[1d6f] ff
                    rst     $38                             ;[1d70] ff
                    rst     $38                             ;[1d71] ff
                    rst     $38                             ;[1d72] ff
                    rst     $38                             ;[1d73] ff
                    rst     $38                             ;[1d74] ff
                    rst     $38                             ;[1d75] ff
                    rst     $38                             ;[1d76] ff
                    rst     $38                             ;[1d77] ff
                    rst     $38                             ;[1d78] ff
                    rst     $38                             ;[1d79] ff
                    rst     $38                             ;[1d7a] ff
                    rst     $38                             ;[1d7b] ff
                    rst     $38                             ;[1d7c] ff
                    rst     $38                             ;[1d7d] ff
                    rst     $38                             ;[1d7e] ff
                    rst     $38                             ;[1d7f] ff
                    rst     $38                             ;[1d80] ff
                    rst     $38                             ;[1d81] ff
                    rst     $38                             ;[1d82] ff
                    rst     $38                             ;[1d83] ff
                    rst     $38                             ;[1d84] ff
                    rst     $38                             ;[1d85] ff
                    rst     $38                             ;[1d86] ff
                    rst     $38                             ;[1d87] ff
                    rst     $38                             ;[1d88] ff
                    rst     $38                             ;[1d89] ff
                    rst     $38                             ;[1d8a] ff
                    rst     $38                             ;[1d8b] ff
                    rst     $38                             ;[1d8c] ff
                    rst     $38                             ;[1d8d] ff
                    rst     $38                             ;[1d8e] ff
                    rst     $38                             ;[1d8f] ff
                    rst     $38                             ;[1d90] ff
                    rst     $38                             ;[1d91] ff
                    rst     $38                             ;[1d92] ff
                    rst     $38                             ;[1d93] ff
                    rst     $38                             ;[1d94] ff
                    rst     $38                             ;[1d95] ff
                    rst     $38                             ;[1d96] ff
                    rst     $38                             ;[1d97] ff
                    rst     $38                             ;[1d98] ff
                    rst     $38                             ;[1d99] ff
                    rst     $38                             ;[1d9a] ff
                    rst     $38                             ;[1d9b] ff
                    rst     $38                             ;[1d9c] ff
                    rst     $38                             ;[1d9d] ff
                    rst     $38                             ;[1d9e] ff
                    rst     $38                             ;[1d9f] ff
                    rst     $38                             ;[1da0] ff
                    rst     $38                             ;[1da1] ff
                    rst     $38                             ;[1da2] ff
                    rst     $38                             ;[1da3] ff
                    rst     $38                             ;[1da4] ff
                    rst     $38                             ;[1da5] ff
                    rst     $38                             ;[1da6] ff
                    rst     $38                             ;[1da7] ff
                    rst     $38                             ;[1da8] ff
                    rst     $38                             ;[1da9] ff
                    rst     $38                             ;[1daa] ff
                    rst     $38                             ;[1dab] ff
                    rst     $38                             ;[1dac] ff
                    rst     $38                             ;[1dad] ff
                    rst     $38                             ;[1dae] ff
                    rst     $38                             ;[1daf] ff
                    rst     $38                             ;[1db0] ff
                    rst     $38                             ;[1db1] ff
                    rst     $38                             ;[1db2] ff
                    rst     $38                             ;[1db3] ff
                    rst     $38                             ;[1db4] ff
                    rst     $38                             ;[1db5] ff
                    rst     $38                             ;[1db6] ff
                    rst     $38                             ;[1db7] ff
                    rst     $38                             ;[1db8] ff
                    rst     $38                             ;[1db9] ff
                    rst     $38                             ;[1dba] ff
                    rst     $38                             ;[1dbb] ff
                    rst     $38                             ;[1dbc] ff
                    rst     $38                             ;[1dbd] ff
                    rst     $38                             ;[1dbe] ff
                    rst     $38                             ;[1dbf] ff
                    rst     $38                             ;[1dc0] ff
                    rst     $38                             ;[1dc1] ff
                    rst     $38                             ;[1dc2] ff
                    rst     $38                             ;[1dc3] ff
                    rst     $38                             ;[1dc4] ff
                    rst     $38                             ;[1dc5] ff
                    rst     $38                             ;[1dc6] ff
                    rst     $38                             ;[1dc7] ff
                    rst     $38                             ;[1dc8] ff
                    rst     $38                             ;[1dc9] ff
                    rst     $38                             ;[1dca] ff
                    rst     $38                             ;[1dcb] ff
                    rst     $38                             ;[1dcc] ff
                    rst     $38                             ;[1dcd] ff
                    rst     $38                             ;[1dce] ff
                    rst     $38                             ;[1dcf] ff
                    rst     $38                             ;[1dd0] ff
                    rst     $38                             ;[1dd1] ff
                    rst     $38                             ;[1dd2] ff
                    rst     $38                             ;[1dd3] ff
                    rst     $38                             ;[1dd4] ff
                    rst     $38                             ;[1dd5] ff
                    rst     $38                             ;[1dd6] ff
                    rst     $38                             ;[1dd7] ff
                    rst     $38                             ;[1dd8] ff
                    rst     $38                             ;[1dd9] ff
                    rst     $38                             ;[1dda] ff
                    rst     $38                             ;[1ddb] ff
                    rst     $38                             ;[1ddc] ff
                    rst     $38                             ;[1ddd] ff
                    rst     $38                             ;[1dde] ff
                    rst     $38                             ;[1ddf] ff
                    rst     $38                             ;[1de0] ff
                    rst     $38                             ;[1de1] ff
                    rst     $38                             ;[1de2] ff
                    rst     $38                             ;[1de3] ff
                    rst     $38                             ;[1de4] ff
                    rst     $38                             ;[1de5] ff
                    rst     $38                             ;[1de6] ff
                    rst     $38                             ;[1de7] ff
                    rst     $38                             ;[1de8] ff
                    rst     $38                             ;[1de9] ff
                    rst     $38                             ;[1dea] ff
                    rst     $38                             ;[1deb] ff
                    rst     $38                             ;[1dec] ff
                    rst     $38                             ;[1ded] ff
                    rst     $38                             ;[1dee] ff
                    rst     $38                             ;[1def] ff
                    rst     $38                             ;[1df0] ff
                    rst     $38                             ;[1df1] ff
                    rst     $38                             ;[1df2] ff
                    rst     $38                             ;[1df3] ff
                    rst     $38                             ;[1df4] ff
                    rst     $38                             ;[1df5] ff
                    rst     $38                             ;[1df6] ff
                    rst     $38                             ;[1df7] ff
                    rst     $38                             ;[1df8] ff
                    rst     $38                             ;[1df9] ff
                    rst     $38                             ;[1dfa] ff
                    rst     $38                             ;[1dfb] ff
                    rst     $38                             ;[1dfc] ff
                    rst     $38                             ;[1dfd] ff
                    rst     $38                             ;[1dfe] ff
                    rst     $38                             ;[1dff] ff
                    rst     $38                             ;[1e00] ff
                    rst     $38                             ;[1e01] ff
                    rst     $38                             ;[1e02] ff
                    rst     $38                             ;[1e03] ff
                    rst     $38                             ;[1e04] ff
                    rst     $38                             ;[1e05] ff
                    rst     $38                             ;[1e06] ff
                    rst     $38                             ;[1e07] ff
                    rst     $38                             ;[1e08] ff
                    rst     $38                             ;[1e09] ff
                    rst     $38                             ;[1e0a] ff
                    rst     $38                             ;[1e0b] ff
                    rst     $38                             ;[1e0c] ff
                    rst     $38                             ;[1e0d] ff
                    rst     $38                             ;[1e0e] ff
                    rst     $38                             ;[1e0f] ff
                    rst     $38                             ;[1e10] ff
                    rst     $38                             ;[1e11] ff
                    rst     $38                             ;[1e12] ff
                    rst     $38                             ;[1e13] ff
                    rst     $38                             ;[1e14] ff
                    rst     $38                             ;[1e15] ff
                    rst     $38                             ;[1e16] ff
                    rst     $38                             ;[1e17] ff
                    rst     $38                             ;[1e18] ff
                    rst     $38                             ;[1e19] ff
                    rst     $38                             ;[1e1a] ff
                    rst     $38                             ;[1e1b] ff
                    rst     $38                             ;[1e1c] ff
                    rst     $38                             ;[1e1d] ff
                    rst     $38                             ;[1e1e] ff
                    rst     $38                             ;[1e1f] ff
                    rst     $38                             ;[1e20] ff
                    rst     $38                             ;[1e21] ff
                    rst     $38                             ;[1e22] ff
                    rst     $38                             ;[1e23] ff
                    rst     $38                             ;[1e24] ff
                    rst     $38                             ;[1e25] ff
                    rst     $38                             ;[1e26] ff
                    rst     $38                             ;[1e27] ff
                    rst     $38                             ;[1e28] ff
                    rst     $38                             ;[1e29] ff
                    rst     $38                             ;[1e2a] ff
                    rst     $38                             ;[1e2b] ff
                    rst     $38                             ;[1e2c] ff
                    rst     $38                             ;[1e2d] ff
                    rst     $38                             ;[1e2e] ff
                    rst     $38                             ;[1e2f] ff
                    rst     $38                             ;[1e30] ff
                    rst     $38                             ;[1e31] ff
                    rst     $38                             ;[1e32] ff
                    rst     $38                             ;[1e33] ff
                    rst     $38                             ;[1e34] ff
                    rst     $38                             ;[1e35] ff
                    rst     $38                             ;[1e36] ff
                    rst     $38                             ;[1e37] ff
                    rst     $38                             ;[1e38] ff
                    rst     $38                             ;[1e39] ff
                    rst     $38                             ;[1e3a] ff
                    rst     $38                             ;[1e3b] ff
                    rst     $38                             ;[1e3c] ff
                    rst     $38                             ;[1e3d] ff
                    rst     $38                             ;[1e3e] ff
                    rst     $38                             ;[1e3f] ff
                    rst     $38                             ;[1e40] ff
                    rst     $38                             ;[1e41] ff
                    rst     $38                             ;[1e42] ff
                    rst     $38                             ;[1e43] ff
                    rst     $38                             ;[1e44] ff
                    rst     $38                             ;[1e45] ff
                    rst     $38                             ;[1e46] ff
                    rst     $38                             ;[1e47] ff
                    rst     $38                             ;[1e48] ff
                    rst     $38                             ;[1e49] ff
                    rst     $38                             ;[1e4a] ff
                    rst     $38                             ;[1e4b] ff
                    rst     $38                             ;[1e4c] ff
                    rst     $38                             ;[1e4d] ff
                    rst     $38                             ;[1e4e] ff
                    rst     $38                             ;[1e4f] ff
                    rst     $38                             ;[1e50] ff
                    rst     $38                             ;[1e51] ff
                    rst     $38                             ;[1e52] ff
                    rst     $38                             ;[1e53] ff
                    rst     $38                             ;[1e54] ff
                    rst     $38                             ;[1e55] ff
                    rst     $38                             ;[1e56] ff
                    rst     $38                             ;[1e57] ff
                    rst     $38                             ;[1e58] ff
                    rst     $38                             ;[1e59] ff
                    rst     $38                             ;[1e5a] ff
                    rst     $38                             ;[1e5b] ff
                    rst     $38                             ;[1e5c] ff
                    rst     $38                             ;[1e5d] ff
                    rst     $38                             ;[1e5e] ff
                    rst     $38                             ;[1e5f] ff
                    rst     $38                             ;[1e60] ff
                    rst     $38                             ;[1e61] ff
                    rst     $38                             ;[1e62] ff
                    rst     $38                             ;[1e63] ff
                    rst     $38                             ;[1e64] ff
                    rst     $38                             ;[1e65] ff
                    rst     $38                             ;[1e66] ff
                    rst     $38                             ;[1e67] ff
                    rst     $38                             ;[1e68] ff
                    rst     $38                             ;[1e69] ff
                    rst     $38                             ;[1e6a] ff
                    rst     $38                             ;[1e6b] ff
                    rst     $38                             ;[1e6c] ff
                    rst     $38                             ;[1e6d] ff
                    rst     $38                             ;[1e6e] ff
                    rst     $38                             ;[1e6f] ff
                    rst     $38                             ;[1e70] ff
                    rst     $38                             ;[1e71] ff
                    rst     $38                             ;[1e72] ff
                    rst     $38                             ;[1e73] ff
                    rst     $38                             ;[1e74] ff
                    rst     $38                             ;[1e75] ff
                    rst     $38                             ;[1e76] ff
                    rst     $38                             ;[1e77] ff
                    rst     $38                             ;[1e78] ff
                    rst     $38                             ;[1e79] ff
                    rst     $38                             ;[1e7a] ff
                    rst     $38                             ;[1e7b] ff
                    rst     $38                             ;[1e7c] ff
                    rst     $38                             ;[1e7d] ff
                    rst     $38                             ;[1e7e] ff
                    rst     $38                             ;[1e7f] ff
                    rst     $38                             ;[1e80] ff
                    rst     $38                             ;[1e81] ff
                    rst     $38                             ;[1e82] ff
                    rst     $38                             ;[1e83] ff
                    rst     $38                             ;[1e84] ff
                    rst     $38                             ;[1e85] ff
                    rst     $38                             ;[1e86] ff
                    rst     $38                             ;[1e87] ff
                    rst     $38                             ;[1e88] ff
                    rst     $38                             ;[1e89] ff
                    rst     $38                             ;[1e8a] ff
                    rst     $38                             ;[1e8b] ff
                    rst     $38                             ;[1e8c] ff
                    rst     $38                             ;[1e8d] ff
                    rst     $38                             ;[1e8e] ff
                    rst     $38                             ;[1e8f] ff
                    rst     $38                             ;[1e90] ff
                    rst     $38                             ;[1e91] ff
                    rst     $38                             ;[1e92] ff
                    rst     $38                             ;[1e93] ff
                    rst     $38                             ;[1e94] ff
                    rst     $38                             ;[1e95] ff
                    rst     $38                             ;[1e96] ff
                    rst     $38                             ;[1e97] ff
                    rst     $38                             ;[1e98] ff
                    rst     $38                             ;[1e99] ff
                    rst     $38                             ;[1e9a] ff
                    rst     $38                             ;[1e9b] ff
                    rst     $38                             ;[1e9c] ff
                    rst     $38                             ;[1e9d] ff
                    rst     $38                             ;[1e9e] ff
                    rst     $38                             ;[1e9f] ff
                    rst     $38                             ;[1ea0] ff
                    rst     $38                             ;[1ea1] ff
                    rst     $38                             ;[1ea2] ff
                    rst     $38                             ;[1ea3] ff
                    rst     $38                             ;[1ea4] ff
                    rst     $38                             ;[1ea5] ff
                    rst     $38                             ;[1ea6] ff
                    rst     $38                             ;[1ea7] ff
                    rst     $38                             ;[1ea8] ff
                    rst     $38                             ;[1ea9] ff
                    rst     $38                             ;[1eaa] ff
                    rst     $38                             ;[1eab] ff
                    rst     $38                             ;[1eac] ff
                    rst     $38                             ;[1ead] ff
                    rst     $38                             ;[1eae] ff
                    rst     $38                             ;[1eaf] ff
                    rst     $38                             ;[1eb0] ff
                    rst     $38                             ;[1eb1] ff
                    rst     $38                             ;[1eb2] ff
                    rst     $38                             ;[1eb3] ff
                    rst     $38                             ;[1eb4] ff
                    rst     $38                             ;[1eb5] ff
                    rst     $38                             ;[1eb6] ff
                    rst     $38                             ;[1eb7] ff
                    rst     $38                             ;[1eb8] ff
                    rst     $38                             ;[1eb9] ff
                    rst     $38                             ;[1eba] ff
                    rst     $38                             ;[1ebb] ff
                    rst     $38                             ;[1ebc] ff
                    rst     $38                             ;[1ebd] ff
                    rst     $38                             ;[1ebe] ff
                    rst     $38                             ;[1ebf] ff
                    rst     $38                             ;[1ec0] ff
                    rst     $38                             ;[1ec1] ff
                    rst     $38                             ;[1ec2] ff
                    rst     $38                             ;[1ec3] ff
                    rst     $38                             ;[1ec4] ff
                    rst     $38                             ;[1ec5] ff
                    rst     $38                             ;[1ec6] ff
                    rst     $38                             ;[1ec7] ff
                    rst     $38                             ;[1ec8] ff
                    rst     $38                             ;[1ec9] ff
                    rst     $38                             ;[1eca] ff
                    rst     $38                             ;[1ecb] ff
                    rst     $38                             ;[1ecc] ff
                    rst     $38                             ;[1ecd] ff
                    rst     $38                             ;[1ece] ff
                    rst     $38                             ;[1ecf] ff
                    rst     $38                             ;[1ed0] ff
                    rst     $38                             ;[1ed1] ff
                    rst     $38                             ;[1ed2] ff
                    rst     $38                             ;[1ed3] ff
                    rst     $38                             ;[1ed4] ff
                    rst     $38                             ;[1ed5] ff
                    rst     $38                             ;[1ed6] ff
                    rst     $38                             ;[1ed7] ff
                    rst     $38                             ;[1ed8] ff
                    rst     $38                             ;[1ed9] ff
                    rst     $38                             ;[1eda] ff
                    rst     $38                             ;[1edb] ff
                    rst     $38                             ;[1edc] ff
                    rst     $38                             ;[1edd] ff
                    rst     $38                             ;[1ede] ff
                    rst     $38                             ;[1edf] ff
                    rst     $38                             ;[1ee0] ff
                    rst     $38                             ;[1ee1] ff
                    rst     $38                             ;[1ee2] ff
                    rst     $38                             ;[1ee3] ff
                    rst     $38                             ;[1ee4] ff
                    rst     $38                             ;[1ee5] ff
                    rst     $38                             ;[1ee6] ff
                    rst     $38                             ;[1ee7] ff
                    rst     $38                             ;[1ee8] ff
                    rst     $38                             ;[1ee9] ff
                    rst     $38                             ;[1eea] ff
                    rst     $38                             ;[1eeb] ff
                    rst     $38                             ;[1eec] ff
                    rst     $38                             ;[1eed] ff
                    rst     $38                             ;[1eee] ff
                    rst     $38                             ;[1eef] ff
                    rst     $38                             ;[1ef0] ff
                    rst     $38                             ;[1ef1] ff
                    rst     $38                             ;[1ef2] ff
                    rst     $38                             ;[1ef3] ff
                    rst     $38                             ;[1ef4] ff
                    rst     $38                             ;[1ef5] ff
                    rst     $38                             ;[1ef6] ff
                    rst     $38                             ;[1ef7] ff
                    rst     $38                             ;[1ef8] ff
                    rst     $38                             ;[1ef9] ff
                    rst     $38                             ;[1efa] ff
                    rst     $38                             ;[1efb] ff
                    rst     $38                             ;[1efc] ff
                    rst     $38                             ;[1efd] ff
                    rst     $38                             ;[1efe] ff
                    rst     $38                             ;[1eff] ff
                    rst     $38                             ;[1f00] ff
                    rst     $38                             ;[1f01] ff
                    rst     $38                             ;[1f02] ff
                    rst     $38                             ;[1f03] ff
                    rst     $38                             ;[1f04] ff
                    rst     $38                             ;[1f05] ff
                    rst     $38                             ;[1f06] ff
                    rst     $38                             ;[1f07] ff
                    rst     $38                             ;[1f08] ff
                    rst     $38                             ;[1f09] ff
                    rst     $38                             ;[1f0a] ff
                    rst     $38                             ;[1f0b] ff
                    rst     $38                             ;[1f0c] ff
                    rst     $38                             ;[1f0d] ff
                    rst     $38                             ;[1f0e] ff
                    rst     $38                             ;[1f0f] ff
                    rst     $38                             ;[1f10] ff
                    rst     $38                             ;[1f11] ff
                    rst     $38                             ;[1f12] ff
                    rst     $38                             ;[1f13] ff
                    rst     $38                             ;[1f14] ff
                    rst     $38                             ;[1f15] ff
                    rst     $38                             ;[1f16] ff
                    rst     $38                             ;[1f17] ff
                    rst     $38                             ;[1f18] ff
                    rst     $38                             ;[1f19] ff
                    rst     $38                             ;[1f1a] ff
                    rst     $38                             ;[1f1b] ff
                    rst     $38                             ;[1f1c] ff
                    rst     $38                             ;[1f1d] ff
                    rst     $38                             ;[1f1e] ff
                    rst     $38                             ;[1f1f] ff
                    rst     $38                             ;[1f20] ff
                    rst     $38                             ;[1f21] ff
                    rst     $38                             ;[1f22] ff
                    rst     $38                             ;[1f23] ff
                    rst     $38                             ;[1f24] ff
                    rst     $38                             ;[1f25] ff
                    rst     $38                             ;[1f26] ff
                    rst     $38                             ;[1f27] ff
                    rst     $38                             ;[1f28] ff
                    rst     $38                             ;[1f29] ff
                    rst     $38                             ;[1f2a] ff
                    rst     $38                             ;[1f2b] ff
                    rst     $38                             ;[1f2c] ff
                    rst     $38                             ;[1f2d] ff
                    rst     $38                             ;[1f2e] ff
                    rst     $38                             ;[1f2f] ff
                    rst     $38                             ;[1f30] ff
                    rst     $38                             ;[1f31] ff
                    rst     $38                             ;[1f32] ff
                    rst     $38                             ;[1f33] ff
                    rst     $38                             ;[1f34] ff
                    rst     $38                             ;[1f35] ff
                    rst     $38                             ;[1f36] ff
                    rst     $38                             ;[1f37] ff
                    rst     $38                             ;[1f38] ff
                    rst     $38                             ;[1f39] ff
                    rst     $38                             ;[1f3a] ff
                    rst     $38                             ;[1f3b] ff
                    rst     $38                             ;[1f3c] ff
                    rst     $38                             ;[1f3d] ff
                    rst     $38                             ;[1f3e] ff
                    rst     $38                             ;[1f3f] ff
                    rst     $38                             ;[1f40] ff
                    rst     $38                             ;[1f41] ff
                    rst     $38                             ;[1f42] ff
                    rst     $38                             ;[1f43] ff
                    rst     $38                             ;[1f44] ff
                    rst     $38                             ;[1f45] ff
                    rst     $38                             ;[1f46] ff
                    rst     $38                             ;[1f47] ff
                    rst     $38                             ;[1f48] ff
                    rst     $38                             ;[1f49] ff
                    rst     $38                             ;[1f4a] ff
                    rst     $38                             ;[1f4b] ff
                    rst     $38                             ;[1f4c] ff
                    rst     $38                             ;[1f4d] ff
                    rst     $38                             ;[1f4e] ff
                    rst     $38                             ;[1f4f] ff
                    rst     $38                             ;[1f50] ff
                    rst     $38                             ;[1f51] ff
                    rst     $38                             ;[1f52] ff
                    rst     $38                             ;[1f53] ff
                    rst     $38                             ;[1f54] ff
                    rst     $38                             ;[1f55] ff
                    rst     $38                             ;[1f56] ff
                    rst     $38                             ;[1f57] ff
                    rst     $38                             ;[1f58] ff
                    rst     $38                             ;[1f59] ff
                    rst     $38                             ;[1f5a] ff
                    rst     $38                             ;[1f5b] ff
                    rst     $38                             ;[1f5c] ff
                    rst     $38                             ;[1f5d] ff
                    rst     $38                             ;[1f5e] ff
                    rst     $38                             ;[1f5f] ff
                    rst     $38                             ;[1f60] ff
                    rst     $38                             ;[1f61] ff
                    rst     $38                             ;[1f62] ff
                    rst     $38                             ;[1f63] ff
                    rst     $38                             ;[1f64] ff
                    rst     $38                             ;[1f65] ff
                    rst     $38                             ;[1f66] ff
                    rst     $38                             ;[1f67] ff
                    rst     $38                             ;[1f68] ff
                    rst     $38                             ;[1f69] ff
                    rst     $38                             ;[1f6a] ff
                    rst     $38                             ;[1f6b] ff
                    rst     $38                             ;[1f6c] ff
                    rst     $38                             ;[1f6d] ff
                    rst     $38                             ;[1f6e] ff
                    rst     $38                             ;[1f6f] ff
                    rst     $38                             ;[1f70] ff
                    rst     $38                             ;[1f71] ff
                    rst     $38                             ;[1f72] ff
                    rst     $38                             ;[1f73] ff
                    rst     $38                             ;[1f74] ff
                    rst     $38                             ;[1f75] ff
                    rst     $38                             ;[1f76] ff
                    rst     $38                             ;[1f77] ff
                    rst     $38                             ;[1f78] ff
                    rst     $38                             ;[1f79] ff
                    rst     $38                             ;[1f7a] ff
                    rst     $38                             ;[1f7b] ff
                    rst     $38                             ;[1f7c] ff
                    rst     $38                             ;[1f7d] ff
                    rst     $38                             ;[1f7e] ff
                    rst     $38                             ;[1f7f] ff
                    rst     $38                             ;[1f80] ff
                    rst     $38                             ;[1f81] ff
                    rst     $38                             ;[1f82] ff
                    rst     $38                             ;[1f83] ff
                    rst     $38                             ;[1f84] ff
                    rst     $38                             ;[1f85] ff
                    rst     $38                             ;[1f86] ff
                    rst     $38                             ;[1f87] ff
                    rst     $38                             ;[1f88] ff
                    rst     $38                             ;[1f89] ff
                    rst     $38                             ;[1f8a] ff
                    rst     $38                             ;[1f8b] ff
                    rst     $38                             ;[1f8c] ff
                    rst     $38                             ;[1f8d] ff
                    rst     $38                             ;[1f8e] ff
                    rst     $38                             ;[1f8f] ff
                    rst     $38                             ;[1f90] ff
                    rst     $38                             ;[1f91] ff
                    rst     $38                             ;[1f92] ff
                    rst     $38                             ;[1f93] ff
                    rst     $38                             ;[1f94] ff
                    rst     $38                             ;[1f95] ff
                    rst     $38                             ;[1f96] ff
                    rst     $38                             ;[1f97] ff
                    rst     $38                             ;[1f98] ff
                    rst     $38                             ;[1f99] ff
                    rst     $38                             ;[1f9a] ff
                    rst     $38                             ;[1f9b] ff
                    rst     $38                             ;[1f9c] ff
                    rst     $38                             ;[1f9d] ff
                    rst     $38                             ;[1f9e] ff
                    rst     $38                             ;[1f9f] ff
                    rst     $38                             ;[1fa0] ff
                    rst     $38                             ;[1fa1] ff
                    rst     $38                             ;[1fa2] ff
                    rst     $38                             ;[1fa3] ff
                    rst     $38                             ;[1fa4] ff
                    rst     $38                             ;[1fa5] ff
                    rst     $38                             ;[1fa6] ff
                    rst     $38                             ;[1fa7] ff
                    rst     $38                             ;[1fa8] ff
                    rst     $38                             ;[1fa9] ff
                    rst     $38                             ;[1faa] ff
                    rst     $38                             ;[1fab] ff
                    rst     $38                             ;[1fac] ff
                    rst     $38                             ;[1fad] ff
                    rst     $38                             ;[1fae] ff
                    rst     $38                             ;[1faf] ff
                    rst     $38                             ;[1fb0] ff
                    rst     $38                             ;[1fb1] ff
                    rst     $38                             ;[1fb2] ff
                    rst     $38                             ;[1fb3] ff
                    rst     $38                             ;[1fb4] ff
                    rst     $38                             ;[1fb5] ff
                    rst     $38                             ;[1fb6] ff
                    rst     $38                             ;[1fb7] ff
                    rst     $38                             ;[1fb8] ff
                    rst     $38                             ;[1fb9] ff
                    rst     $38                             ;[1fba] ff
                    rst     $38                             ;[1fbb] ff
                    rst     $38                             ;[1fbc] ff
                    rst     $38                             ;[1fbd] ff
                    rst     $38                             ;[1fbe] ff
                    rst     $38                             ;[1fbf] ff
                    rst     $38                             ;[1fc0] ff
                    rst     $38                             ;[1fc1] ff
                    rst     $38                             ;[1fc2] ff
                    rst     $38                             ;[1fc3] ff
                    rst     $38                             ;[1fc4] ff
                    rst     $38                             ;[1fc5] ff
                    rst     $38                             ;[1fc6] ff
                    rst     $38                             ;[1fc7] ff
                    rst     $38                             ;[1fc8] ff
                    rst     $38                             ;[1fc9] ff
                    rst     $38                             ;[1fca] ff
                    rst     $38                             ;[1fcb] ff
                    rst     $38                             ;[1fcc] ff
                    rst     $38                             ;[1fcd] ff
                    rst     $38                             ;[1fce] ff
                    rst     $38                             ;[1fcf] ff
                    rst     $38                             ;[1fd0] ff
                    rst     $38                             ;[1fd1] ff
                    rst     $38                             ;[1fd2] ff
                    rst     $38                             ;[1fd3] ff
                    rst     $38                             ;[1fd4] ff
                    rst     $38                             ;[1fd5] ff
                    rst     $38                             ;[1fd6] ff
                    rst     $38                             ;[1fd7] ff
                    rst     $38                             ;[1fd8] ff
                    rst     $38                             ;[1fd9] ff
                    rst     $38                             ;[1fda] ff
                    rst     $38                             ;[1fdb] ff
                    rst     $38                             ;[1fdc] ff
                    rst     $38                             ;[1fdd] ff
                    rst     $38                             ;[1fde] ff
                    rst     $38                             ;[1fdf] ff
                    rst     $38                             ;[1fe0] ff
                    rst     $38                             ;[1fe1] ff
                    rst     $38                             ;[1fe2] ff
                    rst     $38                             ;[1fe3] ff
                    rst     $38                             ;[1fe4] ff
                    rst     $38                             ;[1fe5] ff
                    rst     $38                             ;[1fe6] ff
                    rst     $38                             ;[1fe7] ff
                    rst     $38                             ;[1fe8] ff
                    rst     $38                             ;[1fe9] ff
                    rst     $38                             ;[1fea] ff
                    rst     $38                             ;[1feb] ff
                    rst     $38                             ;[1fec] ff
                    rst     $38                             ;[1fed] ff
                    rst     $38                             ;[1fee] ff
                    rst     $38                             ;[1fef] ff
                    rst     $38                             ;[1ff0] ff
                    rst     $38                             ;[1ff1] ff
                    rst     $38                             ;[1ff2] ff
                    rst     $38                             ;[1ff3] ff
                    rst     $38                             ;[1ff4] ff
                    rst     $38                             ;[1ff5] ff
                    rst     $38                             ;[1ff6] ff
                    rst     $38                             ;[1ff7] ff
                    rst     $38                             ;[1ff8] ff
                    rst     $38                             ;[1ff9] ff
                    rst     $38                             ;[1ffa] ff
                    rst     $38                             ;[1ffb] ff
                    rst     $38                             ;[1ffc] ff
                    rst     $38                             ;[1ffd] ff
                    rst     $38                             ;[1ffe] ff
                    rst     $38                             ;[1fff] ff
