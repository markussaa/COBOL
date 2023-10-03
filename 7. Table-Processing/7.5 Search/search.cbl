      * Search is a linear search method, which is used to find elements
      * inside the table. It can be performed on sorted as well as 
      * unsorted table. It is used only for table declread by Index
      * phrase. It starts with the initial value of index. If the
      * searched elemen is not found, then the index is automatically
      * incremented by 1 and it continues till the end of table.
      * 
       IDENTIFICATION DIVISION.
           PROGRAM-ID. SEARCH.

           DATA DIVISION.
           WORKING-STORAGE SECTION.
               01 WS-TABLE.
                   05 WS-A PIC X(1) OCCURS 18 TIMES INDEXED BY I.
               
               01 WS-SRCH PIC A(1) VALUE 'M'.
       
       PROCEDURE DIVISION.
           MOVE 'ABCDEFGHIJKLMNOPQR' TO WS-TABLE.
           SET I TO 1.
           SEARCH WS-A
              AT END DISPLAY WS-SRCH ' NOT FOUND IN TABLE'
              WHEN WS-A(I) = WS-SRCH
              DISPLAY 'LETTER ' WS-SRCH ' FOUND IN TABLE (' I ')'
           END-SEARCH.  
       
       STOP RUN.
       