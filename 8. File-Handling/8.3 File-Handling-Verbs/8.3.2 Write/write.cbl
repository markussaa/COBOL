      * Write verb is used to insert records in a file. Once the record 
      * is written, it is no longer available in the record buffer. 
      * Before inserting records into the file, move the values into the
      * record buffer and then perform write verb.
      *
      * Write statement can be used with FROM option to directly write 
      * records from the working storage variables. From is an optional 
      * clause. If the access mode is sequential, then to write a 
      * record, the file must open in Output mode or Extend mode. If the
      * access mode is random or dynamic, then to write a record, the 
      * file must open in Output mode or I-O mode.
      *
      * Syntax:
      *
      *    (The file organization is sequential)  
      *
      *    WRITE record-buffer [FROM ws-file-structure]
      *    END-WRITE.
      *
      *    (The file organization is indexed or relative)
      *
      *    WRITE record-buffer [FROM ws-file-structure]
      *        INVALID KEY DISPLAY 'Invalid Key'
      *        NOT INVALID KEY DISPLAY 'Record Inserted'
      *    END-WRITE.
      *
       IDENTIFICATION DIVISION.
           PROGRAM-ID. WRITE.

       ENVIRONMENT DIVISION.
           INPUT-OUTPUT SECTION.
           FILE-CONTROL.
               SELECT STUDENT ASSIGN TO 'output.txt'
                   ORGANIZATION IS SEQUENTIAL
                   ACCESS IS SEQUENTIAL
                   FILE STATUS IS WS-FS.

       DATA DIVISION.
           FILE SECTION.
           FD STUDENT.
               01 STUDENT-FILE.
                   05 STUDENT-ID    PIC 9(05).
                   05 STUDENT-NAME  PIC A(25).
                   05 STUDENT-CLASS PIC X(03).

           WORKING-STORAGE SECTION.
               01 WS-FS             PIC X(02).
       
       PROCEDURE DIVISION.
           DISPLAY "WRITE".

           OPEN EXTEND STUDENT.

               IF WS-FS NOT EQUAL '00'
                   DISPLAY "Error in opening file. File Status: " WS-FS
                   STOP RUN
               END-IF.

               MOVE 1000 TO STUDENT-ID.
               MOVE 'Tim' TO STUDENT-NAME.
               MOVE '10' TO STUDENT-CLASS.
               WRITE STUDENT-FILE
               END-WRITE.	

           CLOSE STUDENT.
       STOP RUN.
       