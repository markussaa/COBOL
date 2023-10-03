      * In perform times, a paragraph will be executed the number of 
      * times specified.
      *
      * Syntax:
      * PERFORM A-PARA 5 TIMES.
      * 
       IDENTIFICATION DIVISION.
           PROGRAM-ID. PERFORM-TIMES.
       
       PROCEDURE DIVISION.
           DISPLAY "PERFORM-TIMES".
           
           A-PARA.
               PERFORM B-PARA 3 TIMES.
               STOP RUN.
               
           B-PARA.
               DISPLAY 'IN B-PARA'.
               