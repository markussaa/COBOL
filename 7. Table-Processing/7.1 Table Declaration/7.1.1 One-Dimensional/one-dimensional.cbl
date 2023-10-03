      * In a one-dimensional table, OCCURS clause is used only once in
      * the declaration.
      *
      * Syntax:
      * 01 WS-TABLE.
      *    05 WS-A PIC A(10) OCCURS 10 TIMES.
      *
      * WS-TABLE - group item that contains table.
      * WS-A - names the table elements that occurs.
      * 
       IDENTIFICATION DIVISION.
           PROGRAM-ID. ONE-DIMENSIONAL.

           DATA DIVISION.
           WORKING-STORAGE SECTION.
               01 WS-TABLE.
                   05 WS-A PIC A(10) VALUE 'EXAMPLE' OCCURS 5 TIMES.     
       
       PROCEDURE DIVISION.
             DISPLAY "ONE-D TABLE : " WS-TABLE.
       STOP RUN.
       