      * Compute statement is used to write arithmetic expressions in 
      * COBOL. This is a replacement for ADD, SUBTRACT, MULTIPLY and
      * DIVIDE. 
      *
       IDENTIFICATION DIVISION.
           PROGRAM-ID. COMPUTE-VERB.

       DATA DIVISION.
           WORKING-STORAGE SECTION.
              01 WS-NUM1 PIC 9(9) VALUE 10 .
              01 WS-NUM2 PIC 9(9) VALUE 10.
              01 WS-NUM3 PIC 9(9) VALUE 10.
              01 WS-NUMA PIC 9(9) VALUE 50.
              01 WS-NUMB PIC 9(9) VALUE 10.
              01 WS-NUMC PIC 9(9).


       PROCEDURE DIVISION.

           COMPUTE WS-NUMC = (WS-NUM1 * WS-NUM2) - 
                             (WS-NUMA / WS-NUMB) + 
                              WS-NUM3.
                              
            DISPLAY "WS-NUM1     : " WS-NUM1
            DISPLAY "WS-NUM2     : " WS-NUM2
            DISPLAY "WS-NUM3     : " WS-NUM3
            DISPLAY "WS-NUMA     : " WS-NUMA
            DISPLAY "WS-NUMB     : " WS-NUMB
            DISPLAY "WS-NUMC     : " WS-NUMC

       STOP RUN.
       