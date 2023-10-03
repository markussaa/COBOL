      * This is only an example for a INSERT statement. 
       IDENTIFICATION DIVISION.
           PROGRAM-ID. INSERT-EXAMPLE.

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
           MOVE 'JOHN DOE' TO WS-STUDENT-NAME.
           MOVE 'STREET 99' TO WS-STUDENT-ADDRESS.
          
           EXEC SQL
              INSERT INTO 
                   STUDENT(STUDENT-ID, STUDENT-NAME, STUDENT-ADDRESS)
              VALUES 
                  (:WS-STUDENT-ID, :WS-STUDENT-NAME, WS-STUDENT-ADDRESS)
           END-EXEC.
          
           IF SQLCODE = 0 
              DISPLAY 'Record Inserted Successfully'
              DISPLAY WS-STUDENT-REC
           ELSE DISPLAY 'Error'
           END-IF.
       STOP RUN.
