      * This is only an example for a UPDATE statement. 
       IDENTIFICATION DIVISION.
           PROGRAM-ID. UPDATE-EXAMPLE.

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
           MOVE 'STREET 1' TO WS-STUDENT-ADDRESS.
           EXEC SQL
               UPDATE STUDENT SET STUDENT-ADDRESS=:WS-STUDENT-ADDRESS
               WHERE STUDENT-ID = 1003
           END-EXEC.
          
           IF SQLCODE = 0 
               DISPLAY 'Record Updated Successfully'
           ELSE DISPLAY 'Error'
           END-IF.
       STOP RUN.

