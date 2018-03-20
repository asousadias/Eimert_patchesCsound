<CsoundSynthesizer>
<CsOptions>
</CsOptions>
<CsInstruments>
; Eimert ex 1.6: montagem por pescadinha (bandschleif)
sr	= 44100
kr	= 441
ksmps	= 100
nchnls	= 1

instr 1	; instrumento gen�rico
idur	= p3
iamp	= p4
ifreq	= p5
ifn	= p6	; onda a utilizar
irel	= p7	; dura��o real da nota para facilitar score

kamp	linseg	0, 0.005, iamp , irel , 0 , (idur - irel -0.005), 0
aout	oscili	kamp, ifreq, ifn
	out	aout
endin

</CsInstruments>
<CsScore>
; Eimert ex 1.6: montagem por pescadinha (bandschleif)

; som puro
f1  0	4096	10	1
; dente de serra (aprox)
f2  0	4096	10	1  0.5  0.3333  0.25  0.20  0.1667  0.1429  0.125  0.1111
; quadrada (aprox)
f3  0	4096	10	1  0  0.3333  0  0.20  0  0.1429  0  0.1111
; triangular (aprox)
f4  0	4096	10	1  0  0.1111  0  0.0400  0  0.0204  0  0.0123

; p7 = dura��o real da nota para facilitar escrita da partitura (SCORE)
; p3 = dura��o do ciclo ou dist�ncia entre repeti��es

; a partitura pode ser organizada por eventos
;p1	p2	p3	p4	p5	p6	p7
; inst	st	dur	amp	freq	FN	dur nota
i1	0	4.08	6000	220	4	1	; A2 (aprox.)
i1	+	
i1	+	
i1	+	
i1	+	
i1	+	
i1	+	
i1	+	

i1	4.39	4.08	6000	554.4	4	1	; C#4 (aprox.)
i1	+	
i1	+	
i1	+	
i1	+	
i1	+	
i1	+	

i1	8.77	4.08	6000	130.8	4	1	; C2 (aprox.)
i1	+	
i1	+	
i1	+	
i1	+	
i1	+	

i1	14.39	4.08	6000	392.0	4	1	; G3 (aprox.)
i1	+	
i1	+	
i1	+	
i1	+	

i1	18.88	4.08	6000	1976	4	1	; B5 (aprox.)
i1	+	
i1	+	
i1	+	

i1	20.17	4.08	6000	1397	4	1	; F5 (aprox.)
i1	+	
i1	+	

i1	24.94	4.08	6000	880	4	1	; A4 (aprox.)
i1	+	

i1	30.05	4.08	6000	87.31	4	1	; F2 (aprox.)
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
