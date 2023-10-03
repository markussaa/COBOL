      * Display verb is used to display the output of a cobol program.
      *
       IDENTIFICATION DIVISION.
           PROGRAM-ID. DISPLAY-VERB.

       DATA DIVISION.
           WORKING-STORAGE SECTION.
               01 WS-TEXT   PIC A(20) VALUE 'TEXT TO BE PRINTED'.

       PROCEDURE DIVISION.
           DISPLAY WS-TEXT.
       STOP RUN.
       