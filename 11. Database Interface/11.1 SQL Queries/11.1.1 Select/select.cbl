      * This is only an example for a SELECT statement. 
       IDENTIFICATION DIVISION.
           PROGRAM-ID. SELECT-EXAMPLE.

       DATA DIVISION.
           WORKING-STORAGE SECTION.
           EXEC SQL
              INCLUDE SQLCA
           END-EXEC.
          
           EXEC SQL
              INCLUDE STUDENT
           END-EXEC.
           
           EXEC SQL BEGIN DECLARE SECTION
           END-EXEC.
              01 WS-STUDENT-REC.
                 05 WS-STUDENT-ID PIC 9(4).
                 05 WS-STUDENT-NAME PIC X(25).
                 05 WS-STUDENT-ADDRESS PIC X(50).
           EXEC SQL END DECLARE SECTION
           END-EXEC.

       PROCEDURE DIVISION.
           EXEC SQL
              SELECT STUDENT-ID, STUDENT-NAME, STUDENT-ADDRESS
              INTO :WS-STUDENT-ID, 
                   :WS-STUDENT-NAME, WS-STUDENT-ADDRESS FROM STUDENT
              WHERE STUDENT-ID=1004
           END-EXEC.
   
           IF SQLCODE = 0 
              DISPLAY WS-STUDENT-RECORD
           ELSE DISPLAY 'Error'
           END-IF.

       STOP RUN.
       