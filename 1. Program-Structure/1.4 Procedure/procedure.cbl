      * PROCEDURE DIVISON
      * 
      * It is used to include the logic of a program. It consists of
      * executable statements using variables defined in the data
      * division. in this division, paragraph and section names are 
      * user-defined.
      *
      * There must be at least one statement in the procedure division.
      * The last statement to end the execution in this division is
      * either STOP RUN which is used in the calling programs or 
      * EXIT PROGRAM which is used in the called programs.
      *
       IDENTIFICATION DIVISION.
           PROGRAM-ID. PROCEDURE.

       DATA DIVISION.
           WORKING-STORAGE SECTION.
           01 WS-NAME PIC A(30).
           01 WS-ID PIC 9(5) VALUE 12345.

       PROCEDURE DIVISION.
           A-MAIN.
           DISPLAY 'HELLO WORLD FROM PROCEDUCE DIVISION'
           MOVE 'MARKUS' TO WS-NAME
           DISPLAY 'MY NAME IS: ' WS-NAME
           DISPLAY 'MY ID IS: ' WS-ID
       STOP RUN.