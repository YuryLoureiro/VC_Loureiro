10 WIDTH 80
20 LINE INPUT "Jogue como (p)retas ou (b)rancas ou (s)air? "; A$
30 IF (A$ = "b") or (A$ = "p") or (A$ = "c") or (A$ = "t") THEN GOTO 140: END ELSE GOTO 40
40 IF A$ = "s" THEN GOTO 500: END ELSE GOTO 50
50 IF A$ = "a" THEN GOTO 510: END ELSE GOTO 60
60 IF A$ = "r" THEN GOTO 70: END ELSE GOTO 20
70 PRINT "b: bispo"
80 PRINT "c: cavalo"
90 PRINT "d: dama"
100 PRINT "p: peao" 
110 PRINT "r: rei"
120 PRINT "t: torre"
130 GOTO 20
140 PRINT "        1     2     3     4     5     6     7     8   "
150 PRINT "      _____ _____ _____ _____ _____ _____ _____ _____ "
160 B = 11
170 FOR y=1 TO 8 STEP 1
180 IF A$ = "c" THEN GOTO 210
190 'PRINT "     |     |     |     |     |     |     |     |     |"
200 GOTO 260
210 FOR z=B TO (B+7) STEP 1
220 IF Z=B THEN PRINT "     |"z; : GOTO 250
230 PRINT " |"z;
240 IF Z=(B+7) THEN PRINT " |" : GOTO 250
250 NEXT
260 PRINT " "y" ";
270 FOR x=1 TO 8 STEP 1
280 IF y = 2 THEN PRINT "|  p  "; : GOTO 430
290 IF y = 7 THEN PRINT "|  P  "; : GOTO 430
300 IF y = 1 GOTO 320
310 IF y = 8 GOTO 370: END ELSE GOTO 420
320 IF (x=1) OR (x=8) THEN PRINT "|  t  "; : GOTO 430
330 IF (x=2) OR (x=7) THEN PRINT "|  c  "; : GOTO 430
340 IF (x=3) OR (x=6) THEN PRINT "|  b  "; : GOTO 430
350 IF (x=4) THEN PRINT "|  d  "; : GOTO 430
360 IF (x=5) THEN PRINT "|  r  "; : GOTO 430
370 IF (x=1) OR (x=8) THEN PRINT "|  T  "; : GOTO 430
380 IF (x=2) OR (x=7) THEN PRINT "|  C  "; : GOTO 430 
390 IF (x=3) OR (x=6) THEN PRINT "|  B  "; : GOTO 430
400 IF (x=4) THEN PRINT "|  D  "; : GOTO 430
410 IF (x=5) THEN PRINT "|  R  "; : GOTO 430
420 PRINT "|     ";
430 NEXT
440 PRINT "| " y
450 PRINT "     |_____|_____|_____|_____|_____|_____|_____|_____|"
460 B = B + 10
470 NEXT
480 PRINT ""
490 PRINT "        1     2     3     4     5     6     7     8   "
500 END
510 PRINT "* a: ajuda, s: sair, t: mostrar tabuleiro, c: mostrar com as coordenadas, r: significado de cada letra"
520 PRINT "* Formato da jogada: yxyx coordenadas ir-para, exemplo: 2118 move (x,y)=(2,1) para (x,y)=(1,8)"
530 GOTO 20