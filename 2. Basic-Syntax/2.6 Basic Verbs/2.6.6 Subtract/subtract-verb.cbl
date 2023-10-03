      * Subtract verb is used for subtraction operations.
      *
       IDENTIFICATION DIVISION.
           PROGRAM-ID. SUBTRACT-VERB.

       DATA DIVISION.
           WORKING-STORAGE SECTION.
               01 WS-NUM1 PIC 9(9) VALUE 10.
               01 WS-NUM2 PIC 9(9) VALUE 10.
               01 WS-NUM3 PIC 9(9) VALUE 100.
               01 WS-NUM4 PIC 9(9) VALUE 100.
               01 WS-NUMA PIC 9(9) VALUE 10.
               01 WS-NUMB PIC 9(9) VALUE 10.
               01 WS-NUMC PIC 9(9) VALUE 10.
               01 WS-NUMD PIC 9(9) VALUE 100.
               01 WS-NUME PIC 9(9) VALUE 10.

       PROCEDURE DIVISION.

           SUBTRACT WS-NUM1 WS-NUM2 FROM WS-NUM3 WS-NUM4.
           SUBTRACT WS-NUMA WS-NUMB WS-NUMC FROM WS-NUMD GIVING WS-NUME.
         
           DISPLAY "WS-NUM1     : " WS-NUM1
           DISPLAY "WS-NUM2     : " WS-NUM2
           DISPLAY "WS-NUM3     : " WS-NUM3
           DISPLAY "WS-NUM4     : " WS-NUM4
           DISPLAY "WS-NUMA     : " WS-NUMA
           DISPLAY "WS-NUMB     : " WS-NUMB
           DISPLAY "WS-NUMC     : " WS-NUMC
           DISPLAY "WS-NUMD     : " WS-NUMD
           DISPLAY "WS-NUME     : " WS-NUME

       STOP RUN.
       