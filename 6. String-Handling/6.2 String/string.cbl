      * String verb is used to concatenate strings. Using STRING
      * statement, two or more strings of characters can be combined
      * to form a longer string. 'Delimited By' clause is compulsory.
      *
      *    Syntax:
      *    STRING ws-string1 DELIMITED BY SPACE
      *        ws-string2 DELIMITED BY SIZE
      *        INTO ws-destination-string
      *        WITH POINTER ws-count
      *        ON OVERFLOW DISPLAY message1
      *        NOT ON OVERFLOW DISPLAY message2
      *    END-STRING.
      *
      *    ws-string1 and ws-string2 - Input strings to be concatenated
      *    ws-string - Output string
      *    ws-count - Used to count the length of new concatenated string
      *    Delimited - specifies the end of string
      *    Pointer and Overflow - are optional
      * 
       IDENTIFICATION DIVISION.
           PROGRAM-ID. STRING.
           
           DATA DIVISION.
               WORKING-STORAGE SECTION.
               01 WS-RESULT PIC A(37).
               01 WS-STR1   PIC A(12) VALUE 'FIRST STRING'.
               01 WS-STR2   PIC A(13) VALUE 'SECOND STRING'.
               01 WS-STR3   PIC A(12) VALUE 'THIRD STRING'.
               01 WS-COUNT  PIC 9(02) VALUE 1.
           
       PROCEDURE DIVISION.
           DISPLAY "STRING-HANDLING".

           STRING WS-STR1 DELIMITED BY SIZE
                  WS-STR2 DELIMITED BY SPACE
                  WS-STR3 DELIMITED BY SIZE
                  INTO WS-RESULT
                  WITH POINTER WS-COUNT
                  ON OVERFLOW DISPLAY 'OVERFLOW!' 
           END-STRING.
   
           DISPLAY 'WS-RESULT : ' WS-RESULT.
           DISPLAY 'WS-COUNT : ' WS-COUNT.

       STOP RUN.
       