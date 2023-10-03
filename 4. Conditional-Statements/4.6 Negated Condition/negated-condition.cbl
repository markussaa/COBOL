      * Negated condition is given by using the NOT keyword. If a 
      * condition is true and we have given NOT in front of it, then
      * its final value will be false.
      *
      * Syntax:
      * IF NOT [CONDITION] 
      *    COBOL Statements
      * END-IF.
      * 
       IDENTIFICATION DIVISION.
           PROGRAM-ID. NEGATED-CONDITION.

           DATA DIVISION.
               WORKING-STORAGE SECTION.
               01 WS-NUM1 PIC 9(2) VALUE 20.
               01 WS-NUM2 PIC 9(9) VALUE 25.
               
               
       PROCEDURE DIVISION.
           DISPLAY "NEGATED CONDITION STATEMENTS".

           IF NOT WS-NUM1 IS LESS THAN WS-NUM2 THEN
               DISPLAY 'IF-BLOCK'
           ELSE
               DISPLAY 'ELSE-BLOCK'
           END-IF.    
        
       STOP RUN.
       