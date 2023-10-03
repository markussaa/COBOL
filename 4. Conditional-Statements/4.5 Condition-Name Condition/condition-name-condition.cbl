      * A condition-name is a user-defined name. It contains a set of
      * values specified by the user. It behaves like boolean variables.
      * They are defined with level 88. It will not have a PIC clause.
      *
      * Syntax:
      * 88 [Condition-Name] VALUE [IS, ARE] [LITERAL] [THRU LITERAL].
      * 
       IDENTIFICATION DIVISION.
           PROGRAM-ID. CONDITION-NAME-CONDITION.

           DATA DIVISION.
               WORKING-STORAGE SECTION.
               01 WS-NUM PIC 9(3).
                   88 PASS VALUES ARE 041 THRU 100.
                   88 FAIL VALUES ARE 000 THRU 40.
               
       PROCEDURE DIVISION.
           DISPLAY "CONDITIONAL NAME CONDITION STATEMENTS".

           MOVE 65 TO WS-NUM.
   
           IF PASS 
              DISPLAY 'PASSED WITH ' WS-NUM ' MARKS'.
              
           IF FAIL 
              DISPLAY 'FAILED WITH ' WS-NUM ' MARKS'.
        
       STOP RUN.
       