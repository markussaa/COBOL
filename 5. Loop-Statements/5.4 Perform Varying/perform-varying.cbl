      * In perform varying, a paragraph will be executed till the 
      * condition in Until phrase becomes true.
      *
      * Syntax:
      * PERFORM A-PARA VARYING A FROM 1 BY 1 UNTIL A = 5.
      * 
       IDENTIFICATION DIVISION.
           PROGRAM-ID. PERFORM-VARYING.

           DATA DIVISION.
           WORKING-STORAGE SECTION.
           01 WS-A PIC 9 VALUE 0.
       
       PROCEDURE DIVISION.
           DISPLAY "PERFORM-VARYING".
           
           A-PARA.
               PERFORM B-PARA VARYING WS-A FROM 1 BY 1 UNTIL WS-A=5
               STOP RUN.
               
           B-PARA.
               DISPLAY 'IN B-PARA ' WS-A.
               