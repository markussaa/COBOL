      * Cobol verbs are used in the procedure division for data 
      * processing. A statement always start with a cobol verb. There
      * are several cobol verbs with different types of actions.
      *
       IDENTIFICATION DIVISION.
           PROGRAM-ID. BASIC-VERBS.

       DATA DIVISION.
           WORKING-STORAGE SECTION.
               01 WS-NAME   PIC A(20).

       PROCEDURE DIVISION.
           DISPLAY "PLEASE ENTER YOUR NAME:".
           ACCEPT WS-NAME.
           DISPLAY "HELLO " WS-NAME
       STOP RUN.
       