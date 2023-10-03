      * Accept verb is used to get data such as date, time, and day from
      * the operating system or directly from the user. If a program is
      * is accepting data from the user, then it needs to be passed 
      * through JCL. While getting data from the operating system, FROM
      * option is included.
      *
       IDENTIFICATION DIVISION.
           PROGRAM-ID. ACCEPT-VERB.

       DATA DIVISION.
           WORKING-STORAGE SECTION.
               01 WS-NAME   PIC A(20).
               01 WS-DATE   PIC X(10).

       PROCEDURE DIVISION.
           DISPLAY "PLEASE ENTER YOUR NAME:".
           ACCEPT WS-NAME.
           DISPLAY "HELLO " WS-NAME.
           ACCEPT WS-DATE FROM DATE.
           DISPLAY "DATE: " WS-DATE.
       STOP RUN.
       