      * Initialize verb is used to initialize a group tiem or an 
      * elementary item. Data names with REMANE clause cannot be 
      * initialized. Numeric data items are replaced by ZEROES. 
      * Alphanumeric or alphabetic data items are replaced by SPACES. 
      * If we include REPLACING term, then data items can be initialized
      * to the given replacing value.
      *
       IDENTIFICATION DIVISION.
           PROGRAM-ID. INITIALIZE-VERB.

       DATA DIVISION.
           WORKING-STORAGE SECTION.
               01 WS-NAME PIC A(30)   VALUE 'MARKUS'.
               01 WS-ID PIC 9(5).
               01 WS-ADDRESS. 
                   05 WS-HOUSE-NUMBER PIC 9(3).
                   05 WS-COUNTRY      PIC X(15).
                   05 WS-PINCODE      PIC 9(6) VALUE 123456.

       PROCEDURE DIVISION.
           INITIALIZE WS-NAME, WS-ADDRESS.
           INITIALIZE WS-ID REPLACING NUMERIC DATA BY 12345.
           DISPLAY "MY NAME IS   : " WS-NAME.
           DISPLAY "MY ID IS     : " WS-ID.
           DISPLAY "ADDRESS      : " WS-ADDRESS.
           DISPLAY "HOUSE NUMBER : " WS-HOUSE-NUMBER.
           DISPLAY "COUNTRY      : " WS-COUNTRY.
           DISPLAY "PINCODE      : " WS-PINCODE.
       STOP RUN.
       