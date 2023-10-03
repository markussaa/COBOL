      * Class condition is used to check if an operand contains only
      * alphabets or numeric data. Spaces are considered ALPHABETIC,
      * ALPHABETIC-LOWER, and ALPHABETIC-UPPER.
      *
      * Syntax:
      * [Data Name/Arithmetic Operation>]
      *
      * [IS] [NOT] 
      *
      * [NUMERIC, ALPHABETIC, ALPHABETIC-LOWER, ALPHABETIC-UPPER]
      *
      * [Data Name/Arithmetic Operation]
      * 
       IDENTIFICATION DIVISION.
           PROGRAM-ID. CLASS-CONDITION.

           DATA DIVISION.
               WORKING-STORAGE SECTION.
               01 WS-NUM1 PIC X(9) VALUE 'ABCD '.
               01 WS-NUM2 PIC 9(9) VALUE 123456789.
               
       PROCEDURE DIVISION.
           DISPLAY "CLASS CONDITIONAL STATEMENTS".

           IF WS-NUM1 IS ALPHABETIC THEN
            DISPLAY 'WS-NUM1 IS ALPHABETIC'.
            
           IF WS-NUM1 IS NUMERIC THEN
            DISPLAY 'WS-NUM1 IS NUMERIC'.
            
           IF WS-NUM2 IS NUMERIC THEN
            DISPLAY 'WS-NUM2 IS NUMERIC'.
        
       STOP RUN.
       