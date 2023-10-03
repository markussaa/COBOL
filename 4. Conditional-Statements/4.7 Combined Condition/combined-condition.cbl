      * A combined condition contains two or more conditions connected
      * using the logical operators AND or OR.
      *
      * Syntax:
      * IF [CONDITION] [AND/OR] [CONDITION]
      *    COBOL Statements
      * END-IF.
      * 
       IDENTIFICATION DIVISION.
           PROGRAM-ID. NEGATED-CONDITION.

           DATA DIVISION.
               WORKING-STORAGE SECTION.
               01 WS-NUM1 PIC 9(2) VALUE 20.
               01 WS-NUM2 PIC 9(2) VALUE 25.
               01 WS-NUM3 PIC 9(2) VALUE 20.
               
               
       PROCEDURE DIVISION.
           DISPLAY "COMBINED CONDITION STATEMENTS".

           IF WS-NUM1 IS LESS THAN WS-NUM2 AND WS-NUM1=WS-NUM3 THEN
               DISPLAY 'BOTH CONDITIONS OK'
           ELSE
               DISPLAY 'ERROR'
           END-IF.

       STOP RUN.
       