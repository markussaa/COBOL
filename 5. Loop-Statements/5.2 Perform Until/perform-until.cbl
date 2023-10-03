      * In perform until, a paragraph is executed until the given 
      * condition becomes true. "With test before" is the default 
      * condition and it indicates that the condition is checked before 
      * the execution of statements in a paragraph.
      *
      * Syntax:
      * PERFORM A-PARA UNTIL COUNT=5
      * PERFORM A-PARA WITH TEST BEFORE UNTIL COUNT=5
      * PERFORM A-PARA WITH TEST AFTER UNTIL COUNT=5
      * 
       IDENTIFICATION DIVISION.
           PROGRAM-ID. PERFORM-UNTIL.

           DATA DIVISION.
           WORKING-STORAGE SECTION.
           01 WS-COUNT PIC 9(1) VALUE 0.
       
       PROCEDURE DIVISION.
           DISPLAY "PERFORM-THRU".
       
           A-PARA.
               PERFORM B-PARA WITH TEST AFTER UNTIL WS-COUNT > 3.
               STOP RUN.
           
           B-PARA.
               DISPLAY 'WS-COUNT : ' WS-COUNT.
               ADD 1 TO WS-COUNT.
       