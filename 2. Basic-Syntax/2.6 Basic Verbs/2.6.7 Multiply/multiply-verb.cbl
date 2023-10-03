      * Multiply verb is used for multiplication operations.
      *
       IDENTIFICATION DIVISION.
           PROGRAM-ID. MULTIPLY-VERB.

       DATA DIVISION.
           WORKING-STORAGE SECTION.
               01 WS-NUM1 PIC 9(9) VALUE 10.
               01 WS-NUM2 PIC 9(9) VALUE 10.
               01 WS-NUM3 PIC 9(9) VALUE 10.
               01 WS-NUMA PIC 9(9) VALUE 10.
               01 WS-NUMB PIC 9(9) VALUE 10.
               01 WS-NUMC PIC 9(9) VALUE 10.

       PROCEDURE DIVISION.

           MULTIPLY WS-NUM1 BY WS-NUM2 WS-NUM3.
           MULTIPLY WS-NUMA BY WS-NUMB GIVING WS-NUMC.
            
           DISPLAY "WS-NUM1     : " WS-NUM1
           DISPLAY "WS-NUM2     : " WS-NUM2
           DISPLAY "WS-NUM3     : " WS-NUM3
           DISPLAY "WS-NUMA     : " WS-NUMA
           DISPLAY "WS-NUMB     : " WS-NUMB
           DISPLAY "WS-NUMC     : " WS-NUMC

       STOP RUN.
       