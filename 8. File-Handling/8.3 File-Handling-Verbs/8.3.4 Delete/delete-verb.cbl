      * Delete verb can be performed only on indexed and relative files.
      * The file must be opened in I-O mode. In sequential file 
      * organization, records cannot be deleted. The record last read by
      * the Read statement is deleted in case of sequential access mode.
      * In random access mode, specify the record key and then perform 
      * the Delete operation.
      *
      * Syntax:
      *
      *    DELETE file-name RECORD
      *        INVALID KEY DISPLAY 'Invalid Key'
      *        NOT INVALID KEY DISPLAY 'Record Deleted'
      *    END-DELETE.
      *
       IDENTIFICATION DIVISION.
           PROGRAM-ID. DELETE.

       ENVIRONMENT DIVISION.
           INPUT-OUTPUT SECTION.
           FILE-CONTROL.
           SELECT STUDENT ASSIGN TO 'delete-file'
               ORGANIZATION IS INDEXED
               ACCESS IS RANDOM
               RECORD KEY IS STUDENT-ID
               FILE STATUS IS WS-FS.

       DATA DIVISION.
           FILE SECTION.
           FD STUDENT.
           01 STUDENT-FILE.
               05 STUDENT-ID   PIC 9(05).
               05 STUDENT-NAME PIC A(25).

           WORKING-STORAGE SECTION.
           01 WS-FS            PIC X(02).
       
       PROCEDURE DIVISION.
           DISPLAY "DELETE".

      *    In order to make this work down below, we need to create 
      *    some records which can be deleted.
      *
           OPEN OUTPUT STUDENT.
           IF WS-FS NOT EQUAL '00'
              DISPLAY "Error in opening file. File Status: " WS-FS
              STOP RUN
           END-IF.

           DISPLAY "OPENED FILE".

           MOVE '20001' TO STUDENT-ID.
           MOVE 'John Doe' TO STUDENT-NAME.
           WRITE STUDENT-FILE
           INVALID KEY DISPLAY 'Error writing record.'.

           DISPLAY 'ADDED JOHN DOE'.

           MOVE '20002' TO STUDENT-ID.
           MOVE 'Jane Smith' TO STUDENT-NAME.
           WRITE STUDENT-FILE
           INVALID KEY DISPLAY 'Error writing record.'.

           DISPLAY 'ADDED JANE SMITH'.

           CLOSE STUDENT.

      *    Here starts the example of deleting a record
      
           OPEN I-O STUDENT.

           IF WS-FS NOT EQUAL '00'
              DISPLAY "Error in opening file. File Status: " WS-FS
              STOP RUN
           END-IF.

           MOVE '20002' TO STUDENT-ID.
           
           DELETE STUDENT RECORD
              INVALID KEY DISPLAY 'Invalid Key'
              NOT INVALID KEY DISPLAY 'Record Deleted'
           END-DELETE.
   
           CLOSE STUDENT.
       STOP RUN.
       