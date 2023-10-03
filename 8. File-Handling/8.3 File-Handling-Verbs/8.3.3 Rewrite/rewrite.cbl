      * Rewrite verb is used to update the records. File should be 
      * opened in I-O mode for rewrite operations. It can be used only 
      * after a successful Read operation. Rewrite verb overwrites the 
      * last record read.
      *
      * Syntax:
      *
      *    (The file organization is sequential)  
      *
      *    REWRITE record-buffer [FROM ws-file-structure]
      *    END-REWRITE.
      *
      *    (The file organization is indexed or relative)
      *
      *    REWRITE record-buffer [FROM ws-file-structure]
      *        INVALID KEY DISPLAY 'Invalid Key'
      *        NOT INVALID KEY DISPLAY 'Record Updated'
      *    END-REWRITE.
      *
       IDENTIFICATION DIVISION.
           PROGRAM-ID. REWRITE.

       ENVIRONMENT DIVISION.
           INPUT-OUTPUT SECTION.
           FILE-CONTROL.
              SELECT STUDENT ASSIGN TO 'file'
                 ORGANIZATION IS INDEXED
                 ACCESS IS RANDOM
                 RECORD KEY IS STUDENT-ID
                 FILE STATUS IS WS-FS.

       DATA DIVISION.
           FILE SECTION.
           FD STUDENT.
               01 STUDENT-FILE.
                   05 STUDENT-ID    PIC 9(05).
                   05 STUDENT-NAME  PIC A(25).

           WORKING-STORAGE SECTION.
               01 WS-FS             PIC X(02).
       
       PROCEDURE DIVISION.
           DISPLAY "REWRITE".
      
      *    Run the commented out code below the first round to get
      *    data in a file and re-run it again to see the data changed.
      *
      *     OPEN OUTPUT STUDENT.
      *     IF WS-FS NOT EQUAL '00'
      *        DISPLAY "Error in opening file. File Status: " WS-FS
      *        STOP RUN
      *     END-IF.

      *     DISPLAY "OPENED FILE".

      *     MOVE '20001' TO STUDENT-ID.
      *     MOVE 'John Doe' TO STUDENT-NAME.
      *     WRITE STUDENT-FILE
      *     INVALID KEY DISPLAY 'Error writing record.'.

      *     DISPLAY 'ADDED JOHN DOE'.

      *     MOVE '20002' TO STUDENT-ID.
      *     MOVE 'Jane Smith' TO STUDENT-NAME.
      *     WRITE STUDENT-FILE
      *     INVALID KEY DISPLAY 'Error writing record.'.

      *     DISPLAY 'ADDED JANE SMITH'.

      *     CLOSE STUDENT.

           OPEN I-O STUDENT.

           IF WS-FS NOT EQUAL '00'
              DISPLAY "Error in opening file. File Status: " WS-FS
              STOP RUN
           END-IF.

           MOVE '20002' TO STUDENT-ID.
  
           READ STUDENT
              KEY IS STUDENT-ID
              INVALID KEY DISPLAY 'KEY IS NOT EXISTING'
           END-READ.

           DISPLAY 'OLD STUDENT NAME: ' STUDENT-NAME.
  
           MOVE 'Addie Minstra' TO STUDENT-NAME.

           REWRITE STUDENT-FILE
           END-REWRITE.

           DISPLAY 'UPDATED STUDENT NAME'

           CLOSE STUDENT.
       STOP RUN.
       