       >>SOURCE FORMAT FREE
*>*********************************
*>
*> Project Euler Problem 01
*>
*>*********************************

IDENTIFICATION DIVISION.
PROGRAM-ID. PROJECT-EULER-01.
*> AUTHOR. github.com/brunomerod.
*> DATE-WRITTEN. May 2nd 2020.

ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 Ind  PIC 9(4)    VALUE 0.
01 MAXN PIC 9(4)    VALUE 1000.
01 SUMN PIC 9(6)    VALUE 0.

PROCEDURE DIVISION.
    PERFORM Loop-1 VARYING Ind FROM 1 BY 1 UNTIL Ind = MAXN

    DISPLAY SUMN.
STOP RUN.

Loop-1.
        IF FUNCTION MOD(Ind,3) = 0 
        OR FUNCTION MOD(Ind,5) = 0 THEN
            PERFORM Loop-2
        END-IF.

Loop-2.
        COMPUTE SUMN = SUMN + Ind.
