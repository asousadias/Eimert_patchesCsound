<CsoundSynthesizer>
<CsOptions>
</CsOptions>
<CsInstruments>
; Eimert modula��o em anel, exemplo 6.2.1
   sr =   44100
   kr =     441
   ksmps =  100
   nchnls =   1

; instrumento base � modula��o em anel

instr 1
kline	linseg	p6, 3*p3/4, p7,p3/4, p7
apuls	oscil	1, kline, 1

asig	oscil	p5 , p4, 2
	out	asig * apuls
endin


</CsInstruments>
<CsScore>
; Eimert modula��o em anel, ex. 6.2.1
 
f1 0 4096 10 1	; moduladora (sinusoidal)

f2 0 4096 10 1 0 .33 0 .20 0 0.14 0 0.11	; apoxima��o a
								; onda quadrada
;p1	p2	p3	p4	p5	p6	p7
i1	0	20	400	16000	400	0
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
