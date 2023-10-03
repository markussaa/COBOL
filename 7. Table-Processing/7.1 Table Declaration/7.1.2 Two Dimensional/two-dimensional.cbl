      * A two-dimensional table is created with both data elements being
      * variable length. For reference, go through the syntac and then
      * try to analyze the table. 
      *
      * Syntax:
      * 01 WS-TABLE.
      *    05 WS-A OCCURS 10 TIMES.
      *        10 WS-B PIC A(10).
      *        10 WS-C OCCURS 5 TIMES.
      *            15 WS-D PIC X(6).
      *
      * The first array (WS-A) can occure from 1 to 10 times and the 
      * inner array (WS-C) can occur from 1 to 5 times. For each entry
      * of WS-A, there will be corresponding 5 entries of WS-C.
      * 
       IDENTIFICATION DIVISION.
           PROGRAM-ID. TWO-DIMENSIONAL.

           DATA DIVISION.
           WORKING-STORAGE SECTION.
               01 WS-TABLE.
                   05 WS-A OCCURS 2 TIMES.
                       10 WS-B PIC A(6) VALUE 'FIRST'.
                       10 WS-C OCCURS 2 TIMES.
                           15 WS-D PIC X(7) VALUE 'SECOND'.    
       
       PROCEDURE DIVISION.
              DISPLAY "TWO-D TABLE : " WS-TABLE.
       STOP RUN.
       