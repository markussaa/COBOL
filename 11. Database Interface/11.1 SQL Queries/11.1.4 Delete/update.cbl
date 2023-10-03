      * This is only an example for a DELETE statement. 
       IDENTIFICATION DIVISION.
           PROGRAM-ID. DELETE-EXAMPLE.

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
           MOVE 1005 TO WS-STUDENT-ID.
          
           EXEC SQL
               DELETE FROM STUDENT
               WHERE STUDENT-ID=:WS-STUDENT-ID
           END-EXEC.
          
           IF SQLCODE = 0 
               DISPLAY 'Record Deleted Successfully'
           ELSE DISPLAY 'Error'
           END-IF.
       STOP RUN.

