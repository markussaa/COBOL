      * Search All is a binary search method, which is used to find 
      * elements inside a table. Table must be in sroted order for 
      * Search All option. The index does not require initialization.
      * In binary search, the table is divided into two halves and it
      * determines in which half the searched element is present. This 
      * process repeats till the element is found or the end is reached.
      * 
       IDENTIFICATION DIVISION.
           PROGRAM-ID. SEARCH-ALL.

           DATA DIVISION.
           WORKING-STORAGE SECTION.
               01 WS-TABLE.
                   05 WS-RECORD OCCURS 10 TIMES ASCENDING 
                                KEY IS WS-NUM INDEXED BY I.
                       10 WS-NUM PIC 9(2).
                       10 WS-NAME PIC A(3).

               01 WS-SRCH PIC A(2) VALUE '93'.
       
       PROCEDURE DIVISION.
           MOVE '12ABC56DEF34GHI78JKL93MNO11PQR' TO WS-TABLE.
           SEARCH ALL WS-RECORD
               AT END DISPLAY 'RECORD NOT FOUND'
               WHEN WS-NUM(I) = WS-SRCH
               DISPLAY 'RECORD FOUND: ' WS-SRCH
               DISPLAY WS-NUM(I)
               DISPLAY WS-NAME(I)
       
       STOP RUN.
       