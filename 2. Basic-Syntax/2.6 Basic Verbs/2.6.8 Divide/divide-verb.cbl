      * Devide verb is used for division operations.
      *
       IDENTIFICATION DIVISION.
           PROGRAM-ID. DIVIDE-VERB.

       DATA DIVISION.
           WORKING-STORAGE SECTION.
              01 WS-NUM1 PIC 9(9) VALUE 5.
              01 WS-NUM2 PIC 9(9) VALUE 250.
              01 WS-NUMA PIC 9(9) VALUE 100.
              01 WS-NUMB PIC 9(9) VALUE 15.
              01 WS-NUMC PIC 9(9).
              01 WS-REM  PIC 9(9). 


       PROCEDURE DIVISION.

           DIVIDE WS-NUM1 INTO WS-NUM2.
           DIVIDE WS-NUMA BY WS-NUMB GIVING WS-NUMC REMAINDER WS-REM.
           
           DISPLAY "WS-NUM1     : " WS-NUM1
           DISPLAY "WS-NUM2     : " WS-NUM2
           DISPLAY "WS-NUMA     : " WS-NUMA
           DISPLAY "WS-NUMB     : " WS-NUMB
           DISPLAY "WS-NUMC     : " WS-NUMC
           DISPLAY "WS-REM      : " WS-REM

       STOP RUN.
       