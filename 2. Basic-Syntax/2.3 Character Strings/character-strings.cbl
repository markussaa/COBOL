      * Character strings are formed by combining individual characters.
      * a character string can be a:
      *    - Comment
      *    - Literal, or
      *    - COBOL word.
      * All character strings myst be ended with seperators. A separator
      * is used to separate character strings. Frequently used
      * seperator - Space, Comma, Period, Apostrophe, Left/Right
      * Parenthesis, and Quatation mark.
      *
       IDENTIFICATION DIVISION.
           PROGRAM-ID. CHARACTER-STRINGS.
       
       DATA DIVISION.
           WORKING-STORAGE SECTION.
           01 WS-THESE      PIC X(6)  VALUE 'THESE '.
           01 WS-ARE        PIC X(4)  VALUE 'ARE '.
           01 WS-CHARACTER  PIC X(10) VALUE 'CHARACTER '.
           01 WS-STRINGS    PIC X(8)  VALUE 'STRINGS '.
           
       PROCEDURE DIVISION.
           DISPLAY WS-THESE WS-ARE WS-CHARACTER WS-STRINGS
       STOP RUN.
       