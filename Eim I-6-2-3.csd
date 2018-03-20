<CsoundSynthesizer>
<CsOptions>
</CsOptions>
<CsInstruments>
; Eimert ex 6.2.3-5: MOTIVO e Modula��o em Anel
sr	= 44100
kr	= 441
ksmps	= 100
nchnls	= 1

gaout	init	0


; modulador
instr 1
idur	= p3
ifm	= p4
ifn	= p5
kamp	linen	1, 0.01, p3, 0.05	; GE para evitar clique
aout	oscili	kamp, ifm, ifn

gaout	= gaout + aout
endin

; instrumento que realiza o motivo
instr 10
idur	= p3
iamp	= p4
ifreq	= p5
ifn	= p6
ibal	= p7	; =0 s/ modula��o,  =1 c/ modula��o

kamp	linen	iamp, 0.01, p3, 0.05	; GE para evitar clique
aout	oscili	kamp, ifreq, ifn

amod	= aout * gaout

	out	(1-ibal)*aout  +  ibal*amod
gaout	= 0
endin



</CsInstruments>
<CsScore>
; Eimert ex 6.2.3-5: MOTIVO e Modula��o em Anel
f1	0	4096	10	1
f2	0	4096	10	1 .5 .333 .25 .2 .16667 .143 .125 .111 .1 .091 .083


t	0	100
; MOTIVO
;p1	p2	p3	p4	p5	p6	p7
;inst	st	dur	amp	freq	fn�	mod
i10	0	1.25	20000	604	2	0
i10	+	.25	.	540	2
i10	+	.25	.	604	2
i10	+	.25	.	540	2
i10	+	.50	.	506	2
i10	+	.50	.	460	2
i10	+	.50	.	506
i10	+	.25	.	409
i10	+	1.25	.	540

f0	7
s
t	0	100
; Modula��o
;p1	p2	p3	p4	p5
;inst	st	dur	freq	fn�
i1	0	5	604	1

; MOTIVO
;p1	p2	p3	p4	p5	p6	p7
;inst	st	dur	amp	freq	fn�	mod
i10	0	1.25	20000	604	2	1
i10	+	.25	.	540
i10	+	.25	.	604
i10	+	.25	.	540
i10	+	.50	.	506
i10	+	.50	.	460
i10	+	.50	.	506
i10	+	.25	.	409
i10	+	1.25	.	540

f0	7
s
t	0	100
; Modula��o
;p1	p2	p3	p4	p5
;inst	st	dur	freq	fn�
i1	0	5	202	1

; MOTIVO
;p1	p2	p3	p4	p5	p6	p7
;inst	st	dur	amp	freq	fn�	mod
i10	0	1.25	20000	604	2	1
i10	+	.25	.	540
i10	+	.25	.	604
i10	+	.25	.	540
i10	+	.50	.	506
i10	+	.50	.	460
i10	+	.50	.	506
i10	+	.25	.	409
i10	+	1.25	.	540

f0	7
s
t	0	100
; Modula��o
;p1	p2	p3	p4	p5
;inst	st	dur	freq	fn�
i1	0	5	101	1

; MOTIVO
;p1	p2	p3	p4	p5	p6	p7
;inst	st	dur	amp	freq	fn�	mod
i10	0	1.25	20000	604	2	1
i10	+	.25	.	540
i10	+	.25	.	604
i10	+	.25	.	540
i10	+	.50	.	506
i10	+	.50	.	460
i10	+	.50	.	506
i10	+	.25	.	409
i10	+	1.25	.	540

e
</CsScore>
</CsoundSynthesizer>
<bsbPanel>
 <label>Widgets</label>
 <objectName/>
 <x>0</x>
 <y>0</y>
 <width>0</width>
 <height>0</height>
 <visible>true</visible>
 <uuid/>
 <bgcolor mode="nobackground">
  <r>255</r>
  <g>255</g>
  <b>255</b>
 </bgcolor>
</bsbPanel>
<bsbPresets>
</bsbPresets>
