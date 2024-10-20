DECLARE SUB rc (row, col, txt$)
SCREEN 12
PALETTE 15, 0
DEF SEG = &HA000
BLOAD "plan.dat", 0
DEF SEG
DIM zahl0(1 TO 76) AS INTEGER
DIM zahl1(1 TO 76) AS INTEGER
DIM zahl2(1 TO 76) AS INTEGER
DIM zahl3(1 TO 76) AS INTEGER
DIM zahl4(1 TO 76) AS INTEGER
DIM zahl5(1 TO 76) AS INTEGER
DIM zahl6(1 TO 76) AS INTEGER
DIM zahl7(1 TO 76) AS INTEGER
DIM zahl8(1 TO 76) AS INTEGER
DIM zahl9(1 TO 76) AS INTEGER
DIM buste(1 TO 76) AS INTEGER
DIM bustk(1 TO 76) AS INTEGER
DIM bustf(1 TO 76) AS INTEGER
DIM busts(1 TO 76) AS INTEGER
DIM bustx(1 TO 76) AS INTEGER
DIM zeic1(1 TO 624) AS INTEGER
DIM zeic2(1 TO 624) AS INTEGER
DIM zeic3(1 TO 624) AS INTEGER
DIM zeic4(1 TO 624) AS INTEGER
DIM zeic5(1 TO 624) AS INTEGER
DIM zeic6(1 TO 624) AS INTEGER
DIM zeic7(1 TO 624) AS INTEGER
DIM zeic8(1 TO 748) AS INTEGER
DIM zeic9(1 TO 748) AS INTEGER
DIM zeic10(1 TO 748) AS INTEGER
DIM zeic11(1 TO 748) AS INTEGER
DIM zeic12(1 TO 748) AS INTEGER
DIM zeic13(1 TO 748) AS INTEGER
DIM zeic14(1 TO 748) AS INTEGER
DIM zeic15(1 TO 748) AS INTEGER
DIM zeic16(1 TO 748) AS INTEGER
DIM zeic17(1 TO 748) AS INTEGER
DIM zeic18(1 TO 748) AS INTEGER
DIM zuz1(1 TO 624) AS INTEGER
DIM zuz2(1 TO 624) AS INTEGER
DIM zuz3(1 TO 624) AS INTEGER
DIM zuz4(1 TO 624) AS INTEGER
DIM zuz5(1 TO 624) AS INTEGER
DIM zuz6(1 TO 624) AS INTEGER
DIM zuz7(1 TO 624) AS INTEGER
DIM zuz8(1 TO 624) AS INTEGER
DIM zuz9(1 TO 624) AS INTEGER
DIM zuz10(1 TO 624) AS INTEGER
DIM zuz11(1 TO 624) AS INTEGER
GET (2, 3)-(5, 20), zahl0
GET (8, 3)-(11, 20), zahl1
GET (14, 3)-(17, 20), zahl2
GET (20, 3)-(23, 20), zahl3
GET (26, 3)-(29, 20), zahl4
GET (32, 3)-(35, 20), zahl5
GET (38, 3)-(41, 20), zahl6
GET (44, 3)-(47, 20), zahl7
GET (50, 3)-(53, 20), zahl8
GET (56, 3)-(59, 20), zahl9
GET (62, 3)-(65, 20), buste
GET (68, 3)-(71, 20), bustk
GET (74, 3)-(77, 20), bustf
GET (80, 3)-(83, 20), busts
GET (86, 3)-(89, 20), bustx
GET (92, 3)-(130, 33), zeic1
GET (133, 3)-(171, 33), zeic2
GET (174, 3)-(212, 33), zeic3
GET (215, 3)-(253, 33), zeic4
GET (256, 3)-(294, 33), zeic5
GET (297, 3)-(335, 33), zeic6
GET (338, 3)-(376, 33), zeic7
GET (379, 3)-(424, 33), zeic8
GET (427, 3)-(472, 33), zeic9
GET (475, 3)-(520, 33), zeic10
GET (523, 3)-(568, 33), zeic11
GET (571, 3)-(616, 33), zeic12
GET (2, 23)-(47, 53), zeic13
GET (50, 36)-(95, 66), zeic14
GET (98, 36)-(143, 66), zeic15
GET (146, 36)-(191, 66), zeic16
GET (194, 36)-(239, 66), zeic17
GET (242, 36)-(287, 66), zeic18
GET (385, 3)-(423, 33), zuz1
GET (433, 3)-(471, 33), zuz2
GET (481, 3)-(519, 33), zuz3
GET (529, 3)-(567, 33), zuz4
GET (577, 3)-(615, 33), zuz5
GET (8, 23)-(46, 53), zuz6
GET (56, 36)-(94, 66), zuz7
GET (104, 36)-(142, 66), zuz8
GET (152, 36)-(190, 66), zuz9
GET (200, 36)-(238, 66), zuz10
GET (248, 36)-(286, 66), zuz11
CLS
PALETTE
x = 0
y = 15
FOR i = 1 TO 195
LINE (x, y)-(x + 45, y + 30), 4, B
x = x + 45
IF x = 585 THEN x = 0: y = y + 30
NEXT i
LINE (588, 17)-(637, 463), 15, BF
f = 1
GOSUB zeichen
GOSUB rand
a = 0
B = 1
c = 23
x = 0
y = 15
z = 1
LINE (590, c)-(634, c + 36), 5, B
LINE (589, c - 1)-(635, c + 37), 5, B
LINE (x, y)-(x + 45, y + 30), 2, B
DO
Esc$ = INKEY$
IF Esc$ = "" THEN GOTO 10
IF Esc$ = CHR$(0) + "H" AND y = 15 THEN LINE (x, y)-(x + 45, y + 30), 4, B: y = 435: GOTO 10
IF Esc$ = CHR$(0) + "P" AND y = 435 THEN LINE (x, y)-(x + 45, y + 30), 4, B: y = 15: GOTO 10
IF Esc$ = CHR$(0) + "H" AND y > 15 THEN LINE (x, y)-(x + 45, y + 30), 4, B: y = y - 30: GOTO 10
IF Esc$ = CHR$(0) + "P" AND y < 435 THEN LINE (x, y)-(x + 45, y + 30), 4, B: y = y + 30: GOTO 10
IF Esc$ = CHR$(0) + "M" AND x = 540 THEN LINE (x, y)-(x + 45, y + 30), 4, B: x = 0: GOTO 10
IF Esc$ = CHR$(0) + "K" AND x = 0 THEN LINE (x, y)-(x + 45, y + 30), 4, B: x = 540: GOTO 10
IF Esc$ = CHR$(0) + "M" AND x < 540 THEN LINE (x, y)-(x + 45, y + 30), 4, B: x = x + 45: GOTO 10
IF Esc$ = CHR$(0) + "K" AND x > 0 THEN LINE (x, y)-(x + 45, y + 30), 4, B: x = x - 45: GOTO 10
IF Esc$ = "1" AND z = 1 THEN PUT (x + 1, y), buste, PSET: PUT (x + 6, y), zeic1, PSET: PUT (x + 6, y), zahl1, PSET
IF Esc$ = "2" AND z = 1 THEN PUT (x + 1, y), buste, PSET: PUT (x + 6, y), zeic1, PSET: PUT (x + 6, y), zahl2, PSET
IF Esc$ = "1" AND z = 2 THEN PUT (x + 1, y), bustk, PSET: PUT (x + 6, y), zeic2, PSET: PUT (x + 6, y), zahl1, PSET
IF Esc$ = "2" AND z = 2 THEN PUT (x + 1, y), bustk, PSET: PUT (x + 6, y), zeic2, PSET: PUT (x + 6, y), zahl2, PSET
IF Esc$ = "1" AND z = 3 THEN PUT (x + 1, y), bustk, PSET: PUT (x + 6, y), zeic3, PSET: PUT (x + 6, y), zahl1, PSET
IF Esc$ = "2" AND z = 3 THEN PUT (x + 1, y), bustk, PSET: PUT (x + 6, y), zeic3, PSET: PUT (x + 6, y), zahl2, PSET
IF Esc$ = "1" AND z = 4 THEN PUT (x + 1, y), bustf, PSET: PUT (x + 6, y), zeic4, PSET: PUT (x + 6, y), zahl1, PSET
IF Esc$ = "2" AND z = 4 THEN PUT (x + 1, y), bustf, PSET: PUT (x + 6, y), zeic4, PSET: PUT (x + 6, y), zahl2, PSET
IF Esc$ = "1" AND z = 5 THEN PUT (x, y), busts, PSET: PUT (x + 6, y), zeic5, PSET: PUT (x + 5, y), zahl1, PSET
IF Esc$ = "2" AND z = 5 THEN PUT (x, y), busts, PSET: PUT (x + 6, y), zeic5, PSET: PUT (x + 5, y), zahl2, PSET
IF Esc$ = "1" AND z = 6 THEN PUT (x, y), busts, PSET: PUT (x + 6, y), zeic6, PSET: PUT (x + 5, y), zahl1, PSET
IF Esc$ = "2" AND z = 6 THEN PUT (x, y), busts, PSET: PUT (x + 6, y), zeic6, PSET: PUT (x + 5, y), zahl2, PSET
IF Esc$ = "1" AND z = 7 THEN PUT (x + 1, y), bustk, PSET: PUT (x + 6, y), zeic7, PSET: PUT (x + 6, y), zahl1, PSET
IF Esc$ = "2" AND z = 7 THEN PUT (x + 1, y), bustk, PSET: PUT (x + 6, y), zeic7, PSET: PUT (x + 6, y), zahl2, PSET
IF Esc$ = "1" AND z = 8 THEN PUT (x, y), zeic8, PSET
IF Esc$ = "1" AND z = 9 THEN PUT (x, y), zeic9, PSET
IF Esc$ = "1" AND z = 10 THEN PUT (x, y), zeic10, PSET
IF Esc$ = "1" AND z = 11 THEN PUT (x, y), zeic11, PSET
IF Esc$ = "1" AND z = 12 THEN PUT (x, y), zeic12, PSET
IF Esc$ = "1" AND z = 13 THEN PUT (x, y), zeic13, PSET
IF Esc$ = "1" AND z = 14 THEN PUT (x, y), zeic14, PSET
IF Esc$ = "1" AND z = 15 THEN PUT (x, y), zeic15, PSET
IF Esc$ = "1" AND z = 16 THEN PUT (x, y), zeic16, PSET
IF Esc$ = "1" AND z = 17 THEN PUT (x, y), zeic17, PSET
IF Esc$ = "1" AND z = 18 THEN PUT (x, y), zeic18, PSET
IF Esc$ = CHR$(9) THEN GOSUB wahl
IF Esc$ = CHR$(27) THEN SCREEN 9: SCREEN 0: END
10
LINE (x, y)-(x + 45, y + 30), 2, B
PALETTE 5, a
a = a + B
IF a = 63 THEN B = -1
IF a = 0 THEN B = 1
LOOP

wahl:
LINE (x, y)-(x + 45, y + 30), 4, B
DO
Esc$ = INKEY$
IF Esc$ = CHR$(0) + "P" AND z >= 10 + f AND z < 18 THEN z = z + 1: f = f + 1: GOSUB zeichen: GOTO 20
IF Esc$ = CHR$(0) + "P" AND z < 10 + f THEN z = z + 1: GOSUB lazl: c = c + 40: GOSUB laz: GOTO 20
IF Esc$ = CHR$(0) + "H" AND z > f THEN z = z - 1: GOSUB lazl: c = c - 40: GOSUB laz: GOTO 20
IF Esc$ = CHR$(0) + "H" AND z <= f AND z > 1 THEN z = z - 1: f = f - 1: GOSUB zeichen: GOTO 20
IF Esc$ = CHR$(9) THEN RETURN
IF Esc$ = CHR$(27) THEN SCREEN 9: SCREEN 0: END
20
PALETTE 5, a
a = a + B
IF a = 63 THEN B = -1
IF a = 0 THEN B = 1
LOOP

laz:
LINE (590, c)-(634, c + 36), 5, B
LINE (589, c - 1)-(635, c + 37), 5, B
RETURN

lazl:
LINE (590, c)-(634, c + 36), 15, B
LINE (589, c - 1)-(635, c + 37), 15, B
RETURN

zeichen:
e = f
d = 26
FOR i = 1 TO 11
IF e = 1 THEN PUT (593, d), zeic1, PSET
IF e = 2 THEN PUT (593, d), zeic2, PSET
IF e = 3 THEN PUT (593, d), zeic3, PSET
IF e = 4 THEN PUT (593, d), zeic4, PSET
IF e = 5 THEN PUT (593, d), zeic5, PSET
IF e = 6 THEN PUT (593, d), zeic6, PSET
IF e = 7 THEN PUT (593, d), zeic7, PSET
IF e = 8 THEN PUT (593, d), zuz1, PSET
IF e = 9 THEN PUT (593, d), zuz2, PSET
IF e = 10 THEN PUT (593, d), zuz3, PSET
IF e = 11 THEN PUT (593, d), zuz4, PSET
IF e = 12 THEN PUT (593, d), zuz5, PSET
IF e = 13 THEN PUT (593, d), zuz6, PSET
IF e = 14 THEN PUT (593, d), zuz7, PSET
IF e = 15 THEN PUT (593, d), zuz8, PSET
IF e = 16 THEN PUT (593, d), zuz9, PSET
IF e = 17 THEN PUT (593, d), zuz10, PSET
IF e = 18 THEN PUT (593, d), zuz11, PSET
d = d + 40
e = e + 1
NEXT i
RETURN

rand:
LINE (586, 15)-(639, 465), 8, B
LINE (587, 16)-(638, 464), 7, B
LINE (591, 24)-(633, 58), 7, B
LINE (592, 25)-(632, 57), 8, B
LINE (591, 64)-(633, 98), 7, B
LINE (592, 65)-(632, 97), 8, B
LINE (591, 104)-(633, 138), 7, B
LINE (592, 105)-(632, 137), 8, B
LINE (591, 144)-(633, 178), 7, B
LINE (592, 145)-(632, 177), 8, B
LINE (591, 184)-(633, 218), 7, B
LINE (592, 185)-(632, 217), 8, B
LINE (591, 224)-(633, 258), 7, B
LINE (592, 225)-(632, 257), 8, B
LINE (591, 264)-(633, 298), 7, B
LINE (592, 265)-(632, 297), 8, B
LINE (591, 304)-(633, 338), 7, B
LINE (592, 305)-(632, 337), 8, B
LINE (591, 344)-(633, 378), 7, B
LINE (592, 345)-(632, 377), 8, B
LINE (591, 384)-(633, 418), 7, B
LINE (592, 385)-(632, 417), 8, B
LINE (591, 424)-(633, 458), 7, B
LINE (592, 425)-(632, 457), 8, B
RETURN

SUB rc (row, col, txt$)
LOCATE row, col
PRINT txt$
END SUB

