      * Unstring verb is used to split one string into multiple
      * sub-strings. Delimited By clause is compulsory.
      *
      *    Syntax:
      *    UNSTRING ws-string DELIMITED BY SPACE
      *        INTO ws-str1, ws-str2
      *        WITH POINTER ws-count
      *        ON OVERFLOW DISPLAY message
      *        NOT ON OVERFLOW DISPLAY message
      *    END-UNSTRING.
      *
      *    ws-string - string to be splitted
      *    ws-string1 and ws-string2 - output strings 
      * 
       IDENTIFICATION DIVISION.
           PROGRAM-ID. UNSTRING.
           
           DATA DIVISION.
               WORKING-STORAGE SECTION.
               01 WS-STRING PIC A(30) VALUE 'FIRST SECOND THIRD'.
               01 WS-STR1 PIC A(5).
               01 WS-STR2 PIC A(6).
               01 WS-STR3 PIC A(5).
           
       PROCEDURE DIVISION.
           DISPLAY "UNSTRING-HANDLING".

           UNSTRING WS-STRING DELIMITED BY SPACE
               INTO WS-STR1, 
                    WS-STR2, 
                    WS-STR3
           END-UNSTRING.
   
           DISPLAY 'WS-STR1 : 'WS-STR1.
           DISPLAY 'WS-STR2 : 'WS-STR2.
           DISPLAY 'WS-STR3 : 'WS-STR3.

       STOP RUN.
       