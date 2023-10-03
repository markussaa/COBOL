      * Sign condition is used to check the sign of a numeric operand.
      * It determines whether a given numeric value is greater than,
      * less than, or equal to zero.
      *
      * Syntax: 
      * [Data Name/Arithmetic Operation] 
      * 
      * [IS] [NOT] 
      *
      * [Positive, Negative or Zero]
      *
      * [Data Name/Arithmetic Operation]
      * 
       IDENTIFICATION DIVISION.
           PROGRAM-ID. SIGN-CONDITION.

           DATA DIVISION.
               WORKING-STORAGE SECTION.
               01 WS-NUM1 PIC S9(9) VALUE -1234.
               01 WS-NUM2 PIC S9(9) VALUE 123456.
               
       PROCEDURE DIVISION.
           DISPLAY "SIGN CONDITIONAL STATEMENTS".

           IF WS-NUM1 IS POSITIVE THEN
           DISPLAY 'WS-NUM1 IS POSITIVE'.
      
           IF WS-NUM1 IS NEGATIVE THEN
              DISPLAY 'WS-NUM1 IS NEGATIVE'.
              
           IF WS-NUM1 IS ZERO THEN
              DISPLAY 'WS-NUM1 IS ZERO'.
              
           IF WS-NUM2 IS POSITIVE THEN
              DISPLAY 'WS-NUM2 IS POSITIVE'.
        
       STOP RUN.
       