      * Picture clause is used to define the following items:
      *    
      *    Data type: can be numeric, alphabetic, or alphanumeric.
      *    Numeric type consists of only digits 0 to 9. Alphabetic
      *    type consists of letters A to Z and spaces. Alphanumeric
      *    type consists of digits, letters, and special characters.
      *
      *    Sign: can  be used with numberic data. It can be either 
      *    + or -.
      *
      *    Decimal point position: can be used with numeric data.
      *    Assumed position of decimal point and not included in the 
      *    data.
      *
      *    Length: degines the number of bytes used by the data item.
      *
      *    Symbols used in a picture clause:
      *    | Sr.No. |        Level Number & Description
      *     ------------------------------------------------------------
      *    |   1    |     9, Numeric
      *    -------------------------------------------------------------
      *    |   2    |     A, Alphabetic
      *    -------------------------------------------------------------
      *    |   3    |     X, Alphanumeric
      *    -------------------------------------------------------------
      *    |   4    |     V, Implicit Decimal
      *    -------------------------------------------------------------
      *    |   5    |     S, Sign
      *    -------------------------------------------------------------
      *
       IDENTIFICATION DIVISION.
           PROGRAM-ID. PICTURE-CLAUSE.

       DATA DIVISION.
           WORKING-STORAGE SECTION.
               01 WS-NUMERIC          PIC 9(3)      VALUE 125.
               01 WS-ALPHABETIC       PIC A(3)      VALUE 'ABC'.
               01 WS-ALPHANUMERIC     PIC X(6)      VALUE 'ABC123'.   
               01 WS-IMPLICIT-DECIMAL PIC 9(2)V9(2) VALUE 42.42.
               01 WS-SIGN             PIC S9(2)     VALUE -42.
         

       PROCEDURE DIVISION.
           DISPLAY WS-NUMERIC
           DISPLAY WS-ALPHABETIC
           DISPLAY WS-ALPHANUMERIC
           DISPLAY WS-IMPLICIT-DECIMAL
           DISPLAY WS-SIGN
       STOP RUN.
       