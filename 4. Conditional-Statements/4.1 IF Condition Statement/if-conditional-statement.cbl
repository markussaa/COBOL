      * IF statment checks for conditions. If a condition is true,
      * the IF block is executed; and if the condtion is false,
      * the ELSE block is executed.
      *
      * END-IF is used to end the IF block. To end the IF block, a 
      * period can be used instead of END-IF. But it is always 
      * preferable to use END-IF for multiple IF blocks.
      *
      * There is no limit on nested IF blocks apearing inside another
      * IF block.
      *
      * Syntax:
      *    IF [condition] THEN
      *        [COBOL statements]
      *    ELSE
      *        [COBOL statements]
      *    END-IF.
      * 
       IDENTIFICATION DIVISION.
           PROGRAM-ID. IF-CONDITIONAL-STATEMENT.

           DATA DIVISION.
               WORKING-STORAGE SECTION.
               01 WS-NUM1 PIC 9(9) VALUE 1.
               01 WS-NUM2 PIC 9(9).
               01 WS-REMAINDER PIC 9(9).
              
       
       PROCEDURE DIVISION.
           DISPLAY "IF CONDITIONAL STATEMENTS".

           IF WS-NUM1 EQUALS 1 THEN 
               DISPLAY 'WS-NUM1 IS EQUAL TO ONE'
           END-IF.

           IF WS-NUM1 EQUALS 2 THEN 
               DISPLAY 'WS-NUM1 IS EQUAL TO ONE'
           ELSE 
               DISPLAY 'WS-NUM1 IS NOT EQUAL TO TWO'
           END-IF.

           DIVIDE WS-NUM1 BY 2 GIVING WS-NUM2 REMAINDER WS-REMAINDER.

           IF WS-REMAINDER = 0 THEN 
               DISPLAY 'WS-NUM1 IS EVEN'
           ELSE 
               DISPLAY 'WS-NUM1 IS ODD'
           END-IF.
       STOP RUN.
       