!to"smon__pc000.prg",cbm

PCHSAVE         = $02A8                        ; PC hi
PCLSAVE         = $02A9                        ; PC lo
SRSAVE          = $02AA                        ; SR
AKSAVE          = $02AB                        ; A
XRSAVE          = $02AC                        ; XR
YSAVE           = $02AD                        ; YR
SPSAVE          = $02AE                        ; SP
PRNNO           = $02AF                        ; Printer number
IONO            = $02B0                        ; Device-Number
IRQ_LO          = $0314                        ; Vector: Hardware IRQ Interrupt Address Lo
IRQ_HI          = $0315                        ; Vector: Hardware IRQ Interrupt Address Hi
BRK_LO          = $0316                        ; Vector: BRK Lo
BRK_HI          = $0317                        ; Vector: BRK Hi
LOADVECT        = $0330                        ; Vector: Kernal LOAD
SAVEVECT        = $0332                        ; Vector: Kernal SAVE
WARMSTART       = $A474                        ; Restart BASIC
ADD             = $BC49                        ; Addition
INTOUT          = $BDCD                        ; Output Positive Integer in A/X
INTOUT1         = $BDD1                        ; Output Positive Integer in A/X
STROUT          = $BDDD                        ; Convert FAC#1 to ASCII String
VIC_CTRL1       = $D011                        ; VIC Control Register 1
TIMERA_LO       = $DC04                        ; Timer A Low-Byte (Kernal-IRQ, Tape)
TIMERA_HI       = $DC05                        ; Timer A High-Byte (Kernal-IRQ, Tape)
CONTROL_REGA    = $DC0E                        ; Control Register A CIA#1
EN_TIMER        = $FDDD                        ; Enable Timer
OPEN            = $FFC0                        ; OPEN Vector
CLOSE           = $FFC3                        ; CLOSE Vector
CHKOUT          = $FFC9                        ; Set Output
CLRCHN          = $FFCC                        ; Restore I/O Vector
CHRIN           = $FFCF                        ; Input Vector
CHROUT          = $FFD2                        ; Output Vector
STOP            = $FFE1                        ; Test STOP Vector
GETIN           = $FFE4                        ; Vector: Kernal GETIN Routine



*= $c000

        lda     #$14                           ; set break-vector to program start
        sta     BRK_LO
        lda     #$C2
        sta     BRK_HI
ICMD:   brk                                    ;"."
byteblock:     
        !by   $27,$23,$24,$25,$2C,$3A,$3B,$3D  ;"'#$%,:;" 
        !by   $3F,$41,$42,$43,$44,$46,$47,$49  ;"=?ABCDFG"
        !by   $4B,$4C,$4D,$4F,$50,$52,$53,$54  ;"IKLMOPRS"
        !by   $56,$57,$58,$00,$00,$00          ;"TVWX.."
IOFS:   !by   $00,$00,$DA,$CA,$2D,$C9,$07,$C9  ; Command offsets
        !by   $1B,$C9,$FB,$C6,$1C,$C4,$B5,$C3    
        !by   $F4,$CA,$99,$C8,$D0,$C6,$6B,$C9
        !by   $3C,$CA,$5C,$C5,$10,$CB,$E2,$C3
        !by   $43,$C8,$B6,$CA,$4D,$C8,$F8,$C3
        !by   $C0,$C9,$3C,$C8,$85,$C3,$4D,$C8
        !by   $F0,$CB,$42,$CA,$D2,$C9,$6D,$C3
LC061:  !by   $27,$3A,$3B,$2C,$28,$29,$21,$00
        !by   $00,$00
LC06B:  !by   $FF
LC06C:  !by   $FF,$01
LC06E:  !by   $00,$41,$5A,$49,$52
LC073:  !by   $54,$80,$20,$40,$10
LC078:  !by   $00,$02,$01,$01,$02
LC07D:  !by   $00,$91,$91,$0D,$53,$D9,$31,$37
        !by   $32,$0D
LC087:  !by   $00,$7D,$4C,$7D,$C9,$0D,$0D,$20
        !by   $20,$50,$43,$20,$20,$53,$52,$20
        !by   $41,$43,$20,$58,$52,$20,$59,$52
        !by   $20,$53,$50,$20,$20,$4E,$56,$2D
        !by   $42,$44,$49,$5A,$43
LC0AC:  !by   $00,$02,$04
LC0AF:  !by   $01,$2C,$00
LC0B2:  !by   $2C,$59,$29
LC0B5:  !by   $58,$9D,$1F,$FF,$1C,$1C,$1F,$1F
        !by   $1F,$1C,$DF,$1C,$1F,$DF,$FF,$FF
        !by   $03
LC0C6:  !by   $1F,$80,$09,$20,$0C,$04,$10,$01
        !by   $11,$14,$96,$1C,$19,$94,$BE,$6C
        !by   $03,$13
LC0D8:  !by   $01,$02,$02,$03,$03,$02,$02,$02
        !by   $02,$02,$02,$03,$03,$02,$03,$03
        !by   $03,$02
LC0EA:  !by   $00,$40,$40,$80,$80,$20,$10,$25
        !by   $26,$21,$22,$81,$82,$21,$82,$84
        !by   $08
LC0FB:  !by   $08,$E7,$E7,$E7,$E7,$E3,$E3,$E3
        !by   $E3,$E3,$E3,$E3,$E3,$E3,$E3,$E7
        !by   $A7,$E7,$E7,$F3,$F3,$F7
LC111:  !by   $DF,$26,$46,$06,$66,$41,$81,$E1
        !by   $01,$A0,$A2,$A1,$C1,$21,$61,$84
        !by   $86,$E6,$C6,$E0,$C0,$24,$4C,$20
        !by   $90,$B0,$F0,$30,$D0,$10,$50,$70
        !by   $78,$00,$18,$D8,$58,$B8,$CA,$88
        !by   $E8,$C8,$EA
LC13C:  !by   $48,$08,$68,$28,$40,$60,$AA,$A8
        !by   $BA,$8A,$9A,$98,$38
LC149:  !by   $F8,$89,$9C,$9E
LC14D:  !by   $B2,$2A,$4A,$0A,$6A,$4F,$23,$93
        !by   $B3,$F3,$33,$D3,$13,$53
LC15B:  !by   $73,$52,$4C,$41,$52,$45,$53,$53
        !by   $4F,$4C,$4C,$4C,$43,$41,$41,$53
        !by   $53,$49,$44,$43,$43,$42,$4A,$4A
        !by   $42,$42,$42,$42,$42,$42,$42,$42
        !by   $53,$42,$43,$43,$43,$43,$44,$44
        !by   $49,$49,$4E,$50,$50,$50,$50,$52
        !by   $52,$54,$54,$54,$54,$54,$54,$53
LC193:  !by   $53,$4F,$53,$53,$4F,$4F,$54,$42
        !by   $52,$44,$44,$44,$4D,$4E,$44,$54
        !by   $54,$4E,$45,$50,$50,$49,$4D,$53
        !by   $43,$43,$45,$4D,$4E,$50,$56,$56
        !by   $45,$52,$4C,$4C,$4C,$4C,$45,$45
        !by   $4E,$4E,$4F,$48,$48,$4C,$4C,$54
        !by   $54,$41,$41,$53,$58,$58,$59,$45
LC1CB:  !by   $45,$4C,$52,$4C,$52,$52,$41,$43
        !by   $41,$59,$58,$41,$50,$44,$43,$59
        !by   $58,$43,$43,$58,$59,$54,$50,$52
        !by   $43,$53,$51,$49,$45,$4C,$43,$53
        !by   $49,$4B,$43,$44,$49,$56,$58,$59
        !by   $58,$59,$50,$41,$50,$41,$50,$49
        !by   $53,$58,$59,$58,$41,$53,$41,$43
LC203:  !by   $44,$08,$84,$81,$22,$21,$26,$20
LC20B:  !by   $80,$03,$20,$1C,$14,$14,$10,$04
        !by   $0C
; SMON START
PRGSTART:
        cld
        lda     #$08
        sta     IONO                           ; set drive #8
        lda     #$04
        sta     PRNNO                          ; set printer #4  
        lda     #$06
        sta     $D020                          ; border and  
        sta     $D021                          ; screen color  
        lda     #$03
        sta     $0286                          ; charcolor
        ldx     #$05
LC22E:  pla
        sta     PCHSAVE,x                      ; save stack
        dex
        bpl     LC22E
        lda     PCLSAVE
        bne     LC23D
        dec     PCHSAVE                        ; PC high
LC23D:  dec     PCLSAVE                        ; PC low  
        tsx
        stx     SPSAVE
        lda     #$52
        jmp     LC2FF
LC249:  jsr     LC2C2
        beq     LC259
LC24E:  jsr     LC27E
        sta     PCLSAVE
        lda     $FC
        sta     PCHSAVE
LC259:  rts
LC25A:  ldx     #$A4
        jsr     LC280
        jsr     LC280
        bne     LC280
LC264:  jsr     LC27E
        lda     #$FE
        sta     $FD
        lda     #$FF
        sta     $FE
        jsr     LC2C2
        bne     LC280
        sta     $0277
        inc     $C6
        rts
LC27A:  jsr     LC27E
!by  $2C
LC27E:  ldx     #$FB
LC280:  jsr     LC28D
        sta     $01,x
        jsr     LC29A
        sta     $00,x
        inx
        inx
        rts
LC28D:  jsr     USERINPUT
        cmp     #$20
        beq     LC28D
        cmp     #$2C
        beq     LC28D
        bne     LC29D
LC29A:  jsr     USERINPUT
LC29D:  jsr     LC2AF
        asl
        asl
        asl
        asl
        sta     $B4
        jsr     USERINPUT
        jsr     LC2AF
        ora     $B4
        rts
LC2AF:  cmp     #$3A
        bcc     LC2B5
        adc     #$08
LC2B5:  and     #$0F
        rts
LC2B8:  jsr     USERINPUT
        cmp     #$20
        beq     LC2B8
        dec     $D3
        rts
LC2C2:  jsr     CHRIN
        dec     $D3
        cmp     #$0D
LC2C9:  rts
; GET INPUT AND AWAIT RETURN
USERINPUT:
        jsr     CHRIN                          ; get char
        cmp     #$0D                           ; await return  
        bne     LC2C9
; Faulty Userinput
UNKNOWN:lda     #$3F                           ; "?"
        jsr     CHROUT                           
LC2D6:  ldx     SPSAVE                         
        txs
        ldx     #$00
        stx     $C6
        jsr     LC351
        lda     ($D1,x)
        ldx     #$06
LC2E5:  cmp     LC061,x
        beq     LC2F2
        dex
        bpl     LC2E5
        lda     #$2E                           ;"."
        jsr     CHROUT                         ; drop point
LC2F2:  jsr     USERINPUT                      ; await next input
        cmp     #$2E 
        beq     LC2F2
        jmp     LCF85
LC2FC:  jmp     LCFB2
LC2FF:  sta     $AC
        and     #$7F
        ldx     #$20
; Check User-Input
INTERPRETER:
        cmp     ICMD,x                         ; compare users char
        beq     LC30F                          ; matched
        dex
        bne     INTERPRETER
        beq     LC2FC
LC30F:  jsr     LC315                          ; fetch routine offset
        jmp     LC2D6
LC315:  txa
        asl
        tax
        inx
        lda     IOFS,x                         ; low address 
        pha                                    ; on stack
        dex
        lda     IOFS,x                         ; high address
        pha                                    ; on stack 
        rts
LC323:  lda     $FC
        jsr     LC32A
        lda     $FB
LC32A:  pha
        lsr
        lsr
        lsr
        lsr
        jsr     LC335
        pla
        and     #$0F
LC335:  cmp     #$0A
        bcc     LC33B
        adc     #$06
LC33B:  adc     #$30
        jmp     CHROUT
LC340:  lda     #$0D                           ; next line
LC342:  jsr     CHROUT
        txa
        jmp     CHROUT
LC349:  jsr     LC34C
LC34C:  lda     #$20                           ; space
        jmp     CHROUT
LC351:  lda     #$0D                           ; next line
        jmp     CHROUT                         
LC356:  sta     $BB
        sty     $BC
        ldy     #$00
LC35C:  lda     ($BB),y
        beq     LC366
        jsr     CHROUT
        iny
        bne     LC35C
LC366:  rts
LC367:  inc     $FB
        bne     LC36D
        inc     $FC
LC36D:  rts
; EXIT (X)
EXIT:   lda     #$0E                           ; restore 
        sta     $0286                          ; system   
        sta     $D020                          ; colors  
        lda     #$06                             
        sta     $D021                           
        lda     #$37                           ; default rom-config 
        sta     $01
        ldx     SPSAVE                         ; restore stack  
        txs 
        jmp     WARMSTART                      ; basic warmstart 
; $C386: REGISTER (R)                         
REGISTER:
        ldy     #$C0
        lda     #$8C
        jsr     LC356
        ldx     #$3B
        jsr     LC340
        lda     PCHSAVE
        sta     $FC
        lda     PCLSAVE
        sta     $FB
        jsr     LC323
        jsr     LC34C
        ldx     #$FB
LC3A4:  lda     $01AF,x
        jsr     LC32A
        jsr     LC34C
        inx
        bne     LC3A4
        lda     SRSAVE
        jmp     LC3D0
; $C3B6: Semis
SEMIS:  jsr     LC24E
        ldx     #$FB
LC3BB:  jsr     USERINPUT
        jsr     LC29A
        sta     $01AF,x
        inx
        bne     LC3BB
        jsr     LC34C
        lda     SRSAVE,x
        jmp     LC3D0
LC3D0:  sta     $AA
        lda     #$20
        ldy     #$09
LC3D6:  jsr     CHROUT
        asl     $AA
        lda     #$30
        adc     #$00
        dey
        bne     LC3D6
        rts
; $C3E3: GO (G)
GO:     jsr     LC249
        ldx     SPSAVE
        txs
        ldx     #$FA
LC3EC:  lda     $01AE,x
        pha
        inx
        bne     LC3EC
        pla
        tay
        pla
        tax
        pla
        rti
; $C3F9 MEMDUMP (M)
MEMDUMP:jsr     LC264
LC3FC:  ldx     #$3A
        jsr     LC340
        jsr     LC323
        ldy     #$20
        ldx     #$00
LC408:  jsr     LC34C
        lda     ($FB,x)
        jsr     LC32A
        lda     ($FB,x)
        jsr     LC439
        bne     LC408
        jsr     LC45D
        bcc     LC3FC
        rts
; Colon
COLON:  jsr     LC27E
        ldy     #$20
        ldx     #$00
LC424:  jsr     USERINPUT
        jsr     LC29A
        sta     ($FB,x)
        cmp     ($FB,x)
        beq     LC433
        jmp     UNKNOWN
LC433:  jsr     LC439
        bne     LC424
        rts
LC439:  cmp     #$20
        bcc     LC449
        cmp     #$60
        bcc     LC44B
        cmp     #$C0
        bcc     LC449
        cmp     #$DB
        bcc     LC44D
LC449:  lda     #$2E
LC44B:  and     #$3F
LC44D:  and     #$7F
LC44F:  sta     ($D1),y
        lda     $0286
        sta     ($F3),y
LC456:  jsr     LC367
        iny
        cpy     #$28
        rts
LC45D:  jsr     LC46F
        jmp     LC466
LC463:  jsr     LC367
LC466:  lda     $FB
        cmp     $FD
        lda     $FC
        sbc     $FE
        rts
LC46F:  jsr     LC494
LC472:  jsr     LC486
        beq     LC485
LC477:  jsr     LC486
        beq     LC477
        cmp     #$20
        bne     LC485
        sta     $0277
        inc     $C6
LC485:  rts
LC486:  jsr     GETIN
        pha
        jsr     STOP
        beq     LC491
        pla
LC490:  rts
LC491:  jmp     LC2D6
LC494:  ldy     #$28
LC496:  bit     $AC
        bpl     LC490
        sty     $C8
        sty     $D0
        lda     #$FF
        jsr     CLOSE
        lda     #$FF
        sta     $B8
        sta     $B9
        lda     PRNNO
        sta     $BA
        jsr     OPEN
        ldx     #$00
        stx     $D3
        dex
        jsr     CHKOUT
LC4B9:  jsr     CHRIN
        jsr     CHROUT
        cmp     #$0D
        bne     LC4B9
        jsr     CLRCHN
        lda     #$91
        jmp     CHROUT
LC4CB:  ldy     #$00
        lda     ($FB),y
        bit     $AA
        bmi     LC4D5
        bvc     LC4E1
LC4D5:  ldx     #$1F
LC4D7:  cmp     LC13C,x
        beq     LC50B
        dex
        cpx     #$15
        bne     LC4D7
LC4E1:  ldx     #$04
LC4E3:  cmp     LC149,x
        beq     LC509
        cmp     LC14D,x
        beq     LC50B
        dex
        bne     LC4E3
        ldx     #$38
LC4F2:  cmp     LC111,x
        beq     LC50B
        dex
        cpx     #$16
        bne     LC4F2
LC4FC:  lda     ($FB),y
        and     LC0FB,x
        eor     LC111,x
        beq     LC50B
        dex
        bne     LC4FC
LC509:  ldx     #$00
LC50B:  stx     $AD
        txa
        beq     LC51F
        ldx     #$11
LC512:  lda     ($FB),y
        and     LC0B5,x
        eor     LC0C6,x
        beq     LC51F
        dex
        bne     LC512
LC51F:  lda     LC0EA,x
        sta     $AB
        lda     LC0D8,x
        sta     $B6
        ldx     $AD
        rts
LC52C:  ldy     #$01
        lda     ($FB),y
        tax
        iny
        lda     ($FB),y
        ldy     #$10
        cpy     $AB
        bne     LC541
        jsr     LC54A
        ldy     #$03
        bne     LC543
LC541:  ldy     $B6
LC543:  stx     $00AE
        sta     $00AF
        rts
LC54A:  ldy     #$01
        lda     ($FB),y
        bpl     LC551
        dey
LC551:  sec
        adc     $FB
        tax
        inx
        beq     LC559
        dey
LC559:  tya
        adc     $FC
LC55C:  rts
; DISASS (D)
DISASS: ldx     #$00
        stx     $AA
        jsr     LC264
LC564:  jsr     LC58C
        lda     $AD
        cmp     #$16
        beq     LC576
        cmp     #$30
        beq     LC576
        cmp     #$21
        bne     LC586
        nop
LC576:  jsr     LC494
        jsr     LC351
        ldx     #$23
        lda     #$2D
LC580:  jsr     CHROUT
        dex
        bne     LC580
LC586:  jsr     LC45D
        bcc     LC564
        rts
LC58C:  ldx     #$2C
        jsr     LC340
        jsr     LC323
        jsr     LC34C
LC597:  jsr     LC675
        jsr     LC4CB
        jsr     LC34C
LC5A0:  lda     ($FB),y
        jsr     LC32A
        jsr     LC34C
        iny
        cpy     $B6
        bne     LC5A0
        lda     #$03
        sec
        sbc     $B6
        tax
        beq     LC5BE
LC5B5:  jsr     LC349
        jsr     LC34C
        dex
        bne     LC5B5
LC5BE:  lda     #$20
        jsr     CHROUT
        ldy     #$00
        ldx     $AD
LC5C7:  bne     LC5DA
        ldx     #$03
LC5CB:  lda     #$2A
        jsr     CHROUT
        dex
        bne     LC5CB
        bit     $AA
        bmi     LC55C
        jmp     LC66A
LC5DA:  bit     $AA
        bvc     LC607
        lda     #$08
        bit     $AB
        beq     LC607
        lda     ($FB),y
        and     #$FC
        sta     $AD
        iny
        lda     ($FB),y
        asl
        tay
        lda     $033C,y
        sta     $00AE
        iny
        lda     $033C,y
        sta     $00AF
        jsr     LC6BE
        ldy     $B6
        jsr     LC693
        jsr     LC4CB
LC607:  lda     LC15B,x
        jsr     CHROUT
        lda     LC193,x
        jsr     CHROUT
        lda     LC1CB,x
        jsr     CHROUT
        lda     #$20
        bit     $AB
        beq     LC622
        jsr     LC349
LC622:  ldx     #$20
        lda     #$04
        bit     $AB
        beq     LC62C
        ldx     #$28
LC62C:  txa
        jsr     CHROUT
        bit     $AB
        bvc     LC639
        lda     #$23
        jsr     CHROUT
LC639:  jsr     LC52C
        dey
        beq     LC655
        lda     #$08
        bit     $AB
        beq     LC64C
        lda     #$4D
        jsr     CHROUT
        ldy     #$01
LC64C:  lda     $00AD,y
        jsr     LC32A
        dey
        bne     LC64C
LC655:  ldy     #$03
LC657:  lda     LC0AC,y
        bit     $AB
        beq     LC667
        lda     LC0AF,y
        ldx     LC0B2,y
        jsr     LC342
LC667:  dey
        bne     LC657
LC66A:  lda     $B6
LC66C:  jsr     LC367
        sec
        sbc     #$01
        bne     LC66C
        rts
LC675:  ldy     $D3
        lda     #$20
LC679:  sta     ($D1),y
        iny
        cpy     #$28
        bcc     LC679
        rts
LC681:  cpx     $AB
        bne     LC689
        ora     $AD
        sta     $AD
LC689:  rts
LC68A:  lda     $00AD,y
        sta     ($FB),y
        cmp     ($FB),y
        bne     LC697
LC693:  dey
        bpl     LC68A
        rts
LC697:  pla
        pla
        rts
LC69A:  bne     LC6B8
        txa
        ora     $AB
        sta     $AB
LC6A1:  lda     #$04
        sta     $B5
LC6A5:  jsr     CHRIN
        cmp     #$20
        beq     LC6B9
        cmp     #$24
        beq     LC6B9
        cmp     #$28
        beq     LC6B9
        cmp     #$2C
        beq     LC6B9
LC6B8:  rts
LC6B9:  dec     $B5
        bne     LC6A5
        rts
LC6BE:  cpx     #$18
        bmi     LC6D0
        lda     $00AE
        sec
        sbc     #$02
        sec
        sbc     $FB
        sta     $00AE
        ldy     #$40
LC6D0:  rts
; Assembler (A)
ASSEMBLER:
        jsr     LC27E
        sta     $FD
        lda     $FC
        sta     $FE
LC6DA:  jsr     LC351
LC6DD:  jsr     LC6E4

        bmi     LC6DD
        bpl     LC6DA
LC6E4:  lda     #$00
        sta     $D3
        jsr     LC34C
        jsr     LC323
        jsr     LC34C
        jsr     CHRIN
        lda     #$01
        sta     $D3
        ldx     #$80
        bne     LC701
; Comma
COMMA:  ldx     #$80
        stx     $02B1
LC701:  stx     $AA
        jsr     LC27E
        lda     #$25
        sta     $C8
        bit     $02B1
        bpl     LC717
        ldx     #$0A
LC711:  jsr     CHRIN
        dex
        bne     LC711
LC717:  lda     #$00
        sta     $02B1
        jsr     LC6A1
        cmp     #$46
        bne     LC739
        lsr     $AA
        pla
        pla
        ldx     #$02
LC729:  lda     $FA,x
        pha
        lda     $FC,x
        sta     $FA,x
        pla
        sta     $FC,x
        dex
        bne     LC729
        jmp     LC564
LC739:  cmp     #$2E
        bne     LC74E
        jsr     LC29A
        ldy     #$00
        sta     ($FB),y
        cmp     ($FB),y
        bne     LC74C
        jsr     LC367
        iny
LC74C:  dey
        rts
LC74E:  ldx     #$FD
        cmp     #$4D
        bne     LC76D
        jsr     LC29A
        ldy     #$00
        cmp     #$3F
        bcs     LC74C
        asl
        tay
        lda     $FB
        sta     $033C,y
        lda     $FC
        iny
        sta     $033C,y
LC76A:  jsr     LC6A1
LC76D:  sta     $A9,x
        cpx     #$FD
        bne     LC777
        lda     #$07
        sta     $B7
LC777:  inx
        bne     LC76A
        ldx     #$38
LC77C:  lda     $A6
        cmp     LC15B,x
        beq     LC788
LC783:  dex
        bne     LC77C
        dex
        rts
LC788:  lda     $A7
        cmp     LC193,x
        bne     LC783
        lda     $A8
        cmp     LC1CB,x
        bne     LC783
        lda     LC111,x
        sta     $AD
        jsr     LC6A1
        ldy     #$00
        cpx     #$20
        bpl     LC7AD
        cmp     #$20
        bne     LC7B0
        lda     LC14D,x
        sta     $AD
LC7AD:  jmp     LC831
LC7B0:  ldy     #$08
        cmp     #$4D
        beq     LC7D6
        ldy     #$40
        cmp     #$23
        beq     LC7D6
        jsr     LC29D
        sta     $00AE
        sta     $00AF
        jsr     LC6A1
        ldy     #$20
        cmp     #$30
        bcc     LC7E9
        cmp     #$47
        bcs     LC7E9
        ldy     #$80
        dec     $D3
LC7D6:  jsr     LC6A1
        jsr     LC29D
        sta     $00AE
        jsr     LC6A1
        cpy     #$08
        beq     LC7E9
        jsr     LC6BE
LC7E9:  sty     $AB
        ldx     #$01
        cmp     #$58
        jsr     LC69A
        ldx     #$04
        cmp     #$29
        jsr     LC69A
        ldx     #$02
        cmp     #$59
        jsr     LC69A
        lda     $AD
        and     #$0D
        beq     LC810
        ldx     #$40
        lda     #$08
        jsr     LC681
        lda     #$18
!by  $2C
LC810:  lda     #$1C
        ldx     #$82
        jsr     LC681
        ldy     #$08
        lda     $AD
        cmp     #$20
        beq     LC828
LC81F:  ldx     LC203,y
        lda     LC20B,y
        jsr     LC681
LC828:  dey
        bne     LC81F
        lda     $AB
        bpl     LC830
        iny
LC830:  iny
LC831:  jsr     LC68A
        dec     $B7
        lda     $B7
        sta     $D3
        jmp     LC597
; SETPRINTER (P)
SETPRINTER:
        jsr     LC28D
        sta     PRNNO
        rts
; IO SET (I)
IOSET:  jsr     LC28D
        sta     IONO
        rts
LC84B:  jmp     UNKNOWN
; LOADSAVE (L/S)
LOADSAVE:
        ldy     #$02
        sty     $BC
        dey
        sty     $B9
        sty     $BB
        dey
        sty     $B7
        jsr     USERINPUT
        cmp     #$22
        bne     LC84B
LC861:  jsr     USERINPUT
        sta     ($BB),y
        iny
        inc     $B7
        cmp     #$22
        bne     LC861
        dec     $B7
        lda     IONO
        sta     $BA
        lda     $AC
        cmp     #$53
        beq     LC88D
        jsr     LC2C2
        beq     LC888
        ldx     #$C3
        jsr     LC280
        lda     #$00
        sta     $B9
LC888:  lda     #$00
        jmp     (LOADVECT)
LC88D:  ldx     #$C1
        jsr     LC280
        ldx     #$AE
        jsr     LC280
        jmp     (SAVEVECT)
; ADDSUB
ADDSUB: jsr     LC27E
        jsr     USERINPUT
        eor     #$02
        lsr
        lsr
        php
        jsr     LC280
        jsr     LC351
        plp
        bcs     LC8BA
        lda     $FD
        adc     $FB
        tax
        lda     $FE
        adc     $FC
LC8B7:  sec
        bcs     LC8C3
LC8BA:  lda     $FB
        sbc     $FD
        tax
        lda     $FC
        sbc     $FE
LC8C3:  tay
LC8C4:  txa
LC8C5:  sty     $FC
        sta     $FB
        sty     $62
        sta     $63
        php
        lda     #$00
        sta     $D3
        jsr     LC675
        lda     $FC
        bne     LC8E8
        jsr     LC349
        lda     $FB
        jsr     LC32A
        lda     $FB
        jsr     LC3D0
        beq     LC8EB
LC8E8:  jsr     LC323
LC8EB:  jsr     LC34C
        ldx     #$90
        lda     $01
        sta     $02B1
        lda     #$37
        sta     $01
        plp
        jsr     ADD
        jsr     STROUT
        ldx     $02B1
        stx     $01
        jmp     LC356
; Convert Hexadecimal
BEFHEX: jsr     LC28D
        tax
        ldy     $D3
        lda     ($D1),y
        eor     #$20
        beq     LC8B7
        txa
        tay
        jsr     LC29A
LC919:  sec
        bcs     LC8C5
; Convert Binary
BEFBIN: jsr     LC2B8
        ldy     #$08
LC921:  pha
        jsr     USERINPUT
        cmp     #$31
        pla
        rol
        dey
        bne     LC921
        beq     LC919
; Convert Decimal
BEFDEC: jsr     LC2B8
        ldx     #$00
        txa
LC934:  stx     $FB
        sta     $FC
        tay
        jsr     CHRIN
        cmp     #$3A
        bcs     LC8C4
        sbc     #$2F
        bcs     LC948
        sec
        jmp     LC8C4
LC948:  sta     $FD
        asl     $FB
        rol     $FC
        lda     $FC
        sta     $FE
        lda     $FB
        asl
        rol     $FE
        asl
        rol     $FE
        clc
        adc     $FB
        php
        clc
        adc     $FD
        tax
        lda     $FE
        adc     $FC
        plp
        adc     #$00
        jmp     LC934
; BASICDATA (B)
BASICDATA:
        jsr     LC27A
        lda     #$37
        sta     $01
        ldx     #$04
LC975:  lda     LC087,x
        sta     $AA,x
        dex
        bpl     LC975
        jsr     LC351
        ldx     $AA
        lda     $AB
        jsr     INTOUT
        inc     $AA
        bne     LC98D
        inc     $AB
LC98D:  lda     #$44
        jsr     CHROUT
        lda     #$C1
LC994:  jsr     CHROUT
        ldy     #$00
        lda     ($FB),y
        sty     $62
        sta     $63
        jsr     INTOUT1
        jsr     LC463
        ldx     #$03
        bcs     LC9B3
        lda     #$2C
        ldx     $D3
        cpx     #$49
        bcc     LC994
        ldx     #$09
LC9B3:  stx     $C6
LC9B5:  lda     LC07D,x
        sta     $0276,x
        dex
        bne     LC9B5
        jmp     EXIT
; OCUPPY (O)
OCUPPY: jsr     LC27A
        jsr     LC28D
LC9C7:  ldx     #$00
LC9C9:  sta     ($FB,x)
        pha
        jsr     LC463
        pla
        bcc     LC9C9
        rts
; WRITE (W)
WRITE:  jsr     LC25A
LC9D6:  lda     $A6
        bne     LC9DC
        dec     $A7
LC9DC:  dec     $A6
        jsr     LCA30
        stx     $B5
        ldy     #$02
        bcc     LC9EB
        ldx     #$02
        ldy     #$00
LC9EB:  clc
        lda     $A6
        adc     $AE
        sta     $AA
        lda     $A7
        adc     $AF
        sta     $AB
LC9F8:  lda     ($A4,x)
        sta     ($A8,x)
        eor     ($A8,x)
        ora     $B5
        sta     $B5
        lda     $A4
        cmp     $A6
        lda     $A5
        sbc     $A7
        bcs     LCA29
LCA0C:  clc
        lda     $A4,x
        adc     LC06B,y
        sta     $A4,x
        lda     $A5,x
        adc     LC06C,y
        sta     $A5,x
        txa
        clc
        adc     #$04
        tax
        cmp     #$07
        bcc     LCA0C
        sbc     #$08
        tax
        bcs     LC9F8
LCA29:  lda     $B5
        beq     LCA3C
        jmp     UNKNOWN
LCA30:  sec
        ldx     #$FE
LCA33:  lda     $AA,x
        sbc     $A6,x
        sta     $B0,x
        inx
        bne     LCA33
LCA3C:  rts
; CONVERT (C)
CONVERT:jsr     LCA62
        jmp     LC9D6
; VERSCHIEB (V)
VERSCHIEB:
        jmp     LCA62
LCA46:  cmp     $A7
        bne     LCA4C
        cpx     $A6
LCA4C:  bcs     LCA61
        cmp     $A5
        bne     LCA54
        cpx     $A4
LCA54:  bcc     LCA61
        sta     $B4
        txa
        clc
        adc     $AE
        tax
        lda     $B4
        adc     $AF
LCA61:  rts
LCA62:  jsr     LC25A
        jsr     LC27A
LCA68:  jsr     LCA30
LCA6B:  jsr     LC4CB
        iny
        lda     #$10
        bit     $AB
        beq     LCA9B
        ldx     $FB
        lda     $FC
        jsr     LCA46
        stx     $AA
        lda     ($FB),y
        sta     $B5
        jsr     LC54A
        ldy     #$01
        jsr     LCA46
        dex
        txa
        clc
        sbc     $AA
        sta     ($FB),y
        eor     $B5
        bpl     LCAAE
        jsr     LC351
        jsr     LC323
LCA9B:  bit     $AB
        bpl     LCAAE
        lda     ($FB),y
        tax
        iny
        lda     ($FB),y
        jsr     LCA46
        sta     ($FB),y
        txa
        dey
        sta     ($FB),y
LCAAE:  jsr     LC66A
        jsr     LC466
        bcc     LCA6B
        rts
; KONTROLLE (K)
KONTROLLE:
        jsr     LC264
LCABA:  ldx     #$27
        jsr     LC340
        jsr     LC323
        ldy     #$08
        ldx     #$00
        jsr     LC34C
LCAC9:  lda     ($FB,x)
        jsr     LC439
        bne     LCAC9
        ldx     #$00
        jsr     LC45D
        beq     LCADA
        jmp     LCABA
LCADA:  rts
; ???
TICK:   jsr     LC27E
        ldy     #$03
LCAE0:  jsr     CHRIN
        dey
        bne     LCAE0
LCAE6:  jsr     USERINPUT
        cmp     #$2E
        beq     LCAEF
        sta     ($FB),y
LCAEF:  iny
        cpy     #$20
        bcc     LCAE6
        rts
        jsr     LC27A
        ldx     #$00
LCAFA:  lda     ($FB,x)
        cmp     ($FD,x)
        bne     LCB0B
        jsr     LC367
        inc     $FD
        bne     LCAFA
        inc     $FE
        bne     LCAFA
LCB0B:  jsr     LC34C
        jmp     LC323
; FIND (F)
FIND:   lda     #$FF
        ldx     #$04
LCB15:  sta     $FA,x
        dex
        bne     LCB15
        jsr     USERINPUT
        ldx     #$05
LCB1F:  cmp     LC06E,x
        beq     LCB69
        dex
        bne     LCB1F
LCB27:  stx     $A9
        jsr     LCBB4
        inx
        jsr     CHRIN
        cmp     #$20
        beq     LCB27
        cmp     #$2C
        bne     LCB3B
        jsr     LC27A
LCB3B:  jsr     LC351
LCB3E:  ldy     $A9
LCB40:  lda     ($FB),y
        jsr     LCBD6
        bne     LCB5F
        dey
        bpl     LCB40
        jsr     LC323
        jsr     LC34C
        ldy     $D3
        cpy     #$24
        bcc     LCB5F
        jsr     LC494
        jsr     LC472
        jsr     LC351
LCB5F:  jsr     LC463
        bcc     LCB3E
        ldy     #$27
        jmp     LC496
LCB69:  lda     LC073,x
        sta     $A8
        lda     LC078,x
        sta     $A9
        tax
        beq     LCB7C
LCB76:  jsr     LCBB4
        dex
        bne     LCB76
LCB7C:  jsr     LC27A
LCB7F:  jsr     LC4CB
        jsr     LC52C
        lda     $A8
        bit     $AB
        bne     LCB94
        tay
        bne     LCBAF
        lda     $AD
        bne     LCBAF
        beq     LCBA1
LCB94:  ldy     $A9
LCB96:  lda     $AD,y
        jsr     LCBD6
        bne     LCBAF
        dey
        bne     LCB96
LCBA1:  sty     $AA
        jsr     LC58C
        jsr     LC46F
LCBA9:  jsr     LC466
        bcc     LCB7F
        rts
LCBAF:  jsr     LC66A
        beq     LCBA9
LCBB4:  jsr     LCBC0
        sta     $03CC,x
        lda     $033C,x
        sta     $036C,x
LCBC0:  jsr     USERINPUT
        ldy     #$0F
        cmp     #$2A
        bne     LCBCB
        ldy     #$00
LCBCB:  jsr     LC2AF
        sta     $033C,x
        tya
        sta     $039C,x
        rts
LCBD6:  sta     $B4
        lsr
        lsr
        lsr
        lsr
        eor     $036C,y
        and     $03CC,y
        and     #$0F
        bne     LCBF0
        lda     $B4
        eor     $033C,y
        and     $039C,y
        and     #$0F
LCBF0:  rts
; TRACE (T)
TRACE:  pla
        pla
        jsr     CHRIN
        cmp     #$57
        bne     LCBFD
        jmp     LCD56
LCBFD:  cmp     #$42
        bne     LCC04
        jmp     LCDD0
LCC04:  cmp     #$51
        bne     LCC0B
        jmp     LCD4F
LCC0B:  cmp     #$53
        beq     LCC12
        jmp     UNKNOWN
LCC12:  jsr     LC28D
        pha
        jsr     LC28D
        pha
        jsr     LC249
        ldy     #$00
        lda     ($FB),y
        sta     $02BC
        tya
        sta     ($FB),y
        lda     #$36
        sta     BRK_LO
        lda     #$CC
        sta     BRK_HI
        ldx     #$FC
        jmp     LC3EC
        ldx     #$03
LCC38:  pla
        sta     SRSAVE,x
        dex
        bpl     LCC38
        pla
        pla
        tsx
        stx     SPSAVE
        lda     PCHSAVE
        sta     $FC
        lda     PCLSAVE
        sta     $FB
        lda     $02BC
        ldy     #$00
        sta     ($FB),y
        lda     #$14
        sta     BRK_LO
        lda     #$C2
        sta     BRK_HI
        lda     #$52
        jmp     LC2FF
LCC65:  jsr     LC351
        lda     VIC_CTRL1
        ora     #$10
        sta     VIC_CTRL1
        rts
        sta     AKSAVE
        php
        pla
        and     #$EF
        sta     SRSAVE
        stx     XRSAVE
        sty     YSAVE
        pla
        clc
        adc     #$01
        sta     PCLSAVE
        pla
        adc     #$00
        sta     PCHSAVE
        lda     #$80
        sta     $02BC
        bne     LCCA5
        jsr     LCDE5
        jsr     EN_TIMER
        cld
        ldx     #$05
LCC9E:  pla
        sta     PCHSAVE,x
        dex
        bpl     LCC9E
LCCA5:  lda     IRQ_LO
        sta     $02BB
        lda     IRQ_HI
        sta     $02BA
        tsx
        stx     SPSAVE
        cli
        lda     SRSAVE
        and     #$10
        beq     LCCC5
LCCBD:  jsr     LCC65
        lda     #$52
        jmp     LC2FF
LCCC5:  bit     $02BC
        bvc     LCCE9
        sec
        lda     PCLSAVE
        sbc     $02BD
        sta     $02B1
        lda     PCHSAVE
        sbc     $02BE
        ora     $02B1
        bne     LCD46
        lda     $02BF
        bne     LCD43
        lda     #$80
        sta     $02BC
LCCE9:  bmi     LCCFD
        lsr     $02BC
        bcc     LCCBD
        ldx     SPSAVE
        txs
        lda     #$CC
        pha
        lda     #$70
        pha
        jmp     LCDBA
LCCFD:  jsr     LCC65
        lda     #$A8
        sta     $FB
        lda     #$02
        sta     $FC
        jsr     LC34C
        ldy     #$00
LCD0D:  lda     ($FB),y
        jsr     LC32A
        iny
        cpy     #$07
        beq     LCD20
        cpy     #$01
        beq     LCD0D
        jsr     LC34C
        bne     LCD0D
LCD20:  lda     PCLSAVE
        ldx     PCHSAVE
        sta     $FB
        stx     $FC
        jsr     LC349
        jsr     LC4CB
        jsr     LC5C7
LCD33:  jsr     GETIN
        beq     LCD33
        cmp     #$4A
        bne     LCD46
        lda     #$01
        sta     $02BC
        bne     LCD72
LCD43:  dec     $02BF
LCD46:  lda     $91
        cmp     #$7F
        bne     LCD72
        jmp     LCCBD
LCD4F:  jsr     LCDF2
        lda     #$40
        bne     LCD60
LCD56:  jsr     LCDF2
        php
        pla
        sta     SRSAVE
        lda     #$80
LCD60:  sta     $02BC
        tsx
        stx     SPSAVE
        jsr     LC249
        jsr     LCC65
        lda     $02BC
        beq     LCDA9
LCD72:  ldx     #$00
        lda     VIC_CTRL1
        tay
        and     #$10
        beq     LCD8C
        tya
        and     #$EF
        sta     VIC_CTRL1
        nop
        nop
        ldy     #$0C
LCD86:  dex
        bne     LCD86
        dey
        bne     LCD86
LCD8C:  sei
        lda     #$49
        sta     TIMERA_LO
        stx     TIMERA_HI
        lda     CONTROL_REGA
        and     #$80
        ora     #$11
        sta     CONTROL_REGA
        lda     #$95
        ldx     #$CC
        sta     $02BB
        stx     $02BA
LCDA9:  ldx     SPSAVE
        txs
        sei
        lda     $02BB
        ldx     $02BA
        sta     IRQ_LO
        stx     IRQ_HI
LCDBA:  lda     PCHSAVE
        pha
        lda     PCLSAVE
        pha
        lda     SRSAVE
        pha
        lda     AKSAVE
        ldx     XRSAVE
        ldy     YSAVE
        rti
LCDD0:  jsr     LC28D
        sta     $02BE
        jsr     LC28D
        sta     $02BD
        jsr     LC28D
        sta     $02BF
        jmp     LC2D6
LCDE5:  lda     $02B8
        ldx     $02B9
        sta     IRQ_LO
        stx     IRQ_HI
        rts
LCDF2:  lda     IRQ_LO
        ldx     IRQ_HI
        sta     $02B8
        stx     $02B9
        lda     #$95
        sta     BRK_LO
        lda     #$CC
        sta     BRK_HI
        rts
; DMON (Z)
DMON:   lda     #$80
        bit     $00A9
        sta     $AB
        jsr     LC264
LCE13:  bit     $AB
        bpl     LCE1A
        ldx     #$29
!by  $2C
LCE1A:  ldx     #$28
        jsr     LC340
        jsr     LC323
        ldy     #$06
LCE24:  ldx     #$00
        lda     ($FB,x)
LCE28:  asl
        pha
        bcs     LCE2E+1
        lda     #$2E
LCE2E:  bit     $2aa9 
        sta     ($D1),y
        lda     $0286
        sta     ($F3),y
        pla
        iny
        inx
        cpx     #$08
        bne     LCE28
        jsr     LC367
        bit     $AB
        bmi     LCE4A
        cpy     #$1E
        bcc     LCE24
LCE4A:  jsr     LC45D
        bcc     LCE13
        rts
        ldy     #$08
        bit     $18A0
        jsr     LC27E
        jsr     LC2B8
LCE5B:  ldx     #$08
        lda     #$00
        sta     $AA
LCE61:  jsr     USERINPUT
        cmp     #$2E
        beq     LCE6F
        cmp     #$2A
        beq     LCE70
LCE6C:  jmp     UNKNOWN
LCE6F:  clc
LCE70:  rol     $AA
        dey
        dex
        bne     LCE61
        lda     $AA
        sta     ($FB,x)
        cmp     ($FB,x)
        bne     LCE6C
        jsr     LC367
        cpy     #$00
        bne     LCE5B
        rts
        lda     #$80
LCEA1:  bit     $00A9
        sta     $AB
        jsr     LC264
LCE90:  jsr     LC351
        bit     $AB
        bpl     LCEA1+1
        lda     #$21
        jsr     CHROUT
        jsr     LC323
        ldy     #$08
        bit     $00a0   
        ldx     #$00
LCEA6:  lda     ($FB,x)
        jsr     LC44F
        bne     LCEA6
        jsr     LC45D
        bcc     LCE90
        rts
        jsr     LC27E
        ldx     #$00
        ldy     #$08
LCEBA:  lda     ($D1),y
        sta     ($FB,x)
        cmp     ($FB,x)
        bne     LCE6C
        jsr     LC456
        bcc     LCEBA
        rts
        jsr     LC28D
        and     #$F0
        sta     $FF
        jsr     LCF3C
        jsr     LC9D6
        jsr     LCF3C
        lda     #$14
        sta     $FB
        lda     #$02
        ora     $FF
        sta     $FC
        lda     #$D1
        sta     $FD
        lda     #$0F
        ora     $FF
        sta     $FE
        jsr     LCA68
        ldy     #$00
        ldx     #$0D
LCEF3:  lda     LCFF2,x
        ora     $FF
        sta     $FC
        dex
        lda     LCFF2,x
        sta     $FB
        lda     ($FB),y
        and     #$0F
        ora     $FF
        sta     ($FB),y
        dex
        bpl     LCEF3
        lda     #$2B
        sta     $FB
        lda     #$00
        ora     $FF
        sta     $FC
        ldy     #$35
LCF17:  lda     ($FB),y
        and     #$0F
        ora     $FF
        sta     ($FB),y
        dey
        dey
        bpl     LCF17
        lda     #$DE
        sta     $FB
        lda     #$0F
        ora     $FF
        sta     $FC
        ldy     #$13
LCF2F:  lda     ($FB),y
        and     #$0F
        ora     $FF
        sta     ($FB),y
        dey
        dey
        bpl     LCF2F
        rts
LCF3C:  lda     $FF
        sta     $A9
        jsr     LCF43
LCF43:  pla
        pla
        and     #$F0
        sta     $A5
        clc
        adc     #$10
        sta     $A7
        lda     #$00
        sta     $A4
        sta     $A6
        sta     $A8
        rts
        jsr     LC27A
        lda     #$00
        jmp     LC9C7
        jsr     LC27E
        ldy     #$00
        lda     #$D0
        sty     $FD
        sta     $FE
        sei
        lda     #$03
        sta     $01
        ldx     #$10
LCF71:  lda     ($FD),y
        sta     ($FB),y
        iny
        bne     LCF71
        inc     $FC
        inc     $FE
        dex
        bne     LCF71
        lda     #$27
        sta     $01
        cli
        rts
LCF85:  pha
        cmp     #$4A
        bne     LCF9A
        ldy     #$27
LCF8C:  lda     $0200,y
        sta     ($D1),y
        dey
        bpl     LCF8C
        pla
        dec     $D6
        jmp     LC2D6
LCF9A:  ldy     #$06
LCF9C:  cmp     LCFD7,y
        bne     LCFAB
        ldy     #$27
LCFA3:  lda     ($D1),y
        sta     $0200,y
        dey
        bpl     LCFA3
LCFAB:  dey
        bpl     LCF9C
        pla
        jmp     LC2FF
LCFB2:  ldx     #$0A
LCFB4:  cmp     LCFD0,x
        beq     LCFBF
        dex
        bne     LCFB4
        jmp     UNKNOWN
LCFBF:  jsr     LCFC5
        jmp     LC2D6
LCFC5:  txa
        asl
        tax
        lda     LCFDD,x
        pha
        lda     LCFDC,x
        pha
LCFD0:  rts 
        !by   $28,$29,$21,$45,$59,$51
LCFD7:  !by   $48,$5A,$4E,$55,$44
LCFDC:  !by   $4B
LCFDD:  !by   $4D,$52,$CE,$4F,$CE,$B2,$CE,$56
        !by   $CF,$C7,$CE,$5E,$CF,$0B,$CE,$08
        !by   $CE,$85,$CE,$88,$CE
LCFF2:  !by   $06,$00,$87,$03,$2D,$0C,$5C,$0C
        !by   $F5,$0C,$A2,$0D,$04
