<CsoundSynthesizer>
<CsOptions>
</CsOptions>
<CsInstruments>
; Eimert: Ex.7.9: do impulso � altura definida � ORCHESTRA

   sr =   44100
   kr =    441
   ksmps =  100
   nchnls =   1

; instrumento base � gerador de impulsos

instr 1
idur	= p3
iamp	= p4
ifreq1	= p5
ifreq2	= p6

ifim	= 2
igliss	= idur - 2

kline	expseg	ifreq1, igliss, ifreq2, ifim, ifreq2	; freq dos impulsos

kamp	linen	iamp, 0.5, idur, 0.5	; GE para evitar clique
apuls	oscili	kamp, kline, 1	; FN=1: onda tipo impulso
	out	apuls
endin


</CsInstruments>
<CsScore>
; Eimert: Ex.7.9: do impulso � altura definida � SCORE
 
f1 0 4096 7 0 256 1 512 -1 256 0 3072 0	; "impulso"

;p1	p2	p3	p4	p5	p6
;		dur	amp	freq1	freq2
i1	0	20	10000	3	128	; aprox D�2
i1	.	.	.	4	171	; aprox Mi2
i1	.	.	.	5	213	; aprox Sol2
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
