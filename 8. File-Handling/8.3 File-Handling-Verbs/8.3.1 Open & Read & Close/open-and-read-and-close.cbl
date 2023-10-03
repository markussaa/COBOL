      * Open is the first file operation that must be performed. If
      * Open is successful, then only further operations are possible on
      * a file. ONly after opening a file, the variables in the file
      * structure are available for processing. FILE STATUS variable is
      * updated after each file operation.
      *
      * Syntax:
      *
      *    OPEN "mode" file-name.
      *
      * Here, file-name is  string literal, which you will use to name 
      * your file. A file can be opened in the following modes:
      *
      *    - Input: Input mode is used for existing files. In this mode,
      *             we can only read the file, no other operatinos are 
      *             allowed on the file.
      *
      *    - Output: Output mode is used to insert records in file. If
      *              a sequential files is used and the file is holding
      *              some records, then the existing records will be 
      *              deleted first and then new records will be 
      *              inserted in the file. It will not happen so in case
      *              of an indexed file or a relative file.
      *
      *    - Extend: Extend mode is used to append records in a 
      *              sequential file. In this mode, records are inserted
      *              at the end. If file access mode is Random or 
      *              Dynamic, then extend mode cannot be used.
      *
      *    - I-O: Input-Output mode is used to read an rewrite the 
      *           records of a file.
      *
      * Read verb is used to read the file records. The function of 
      * read is to fetch records from a file. At each read verb, only 
      * one record can be read into the file structure. To perform a
      * read operation, open the file in INPUT or I-O mode. At each read
      * statement, the file pointer is incremented and hence the 
      * successive records are read.
      *
      * Syntax:
      *
      *    READ file-name NEXT RECORD INTO ws-file-structure
      *        AT END DISPLAY 'End of File'
      *        NOT AT END DISPLAY 'Record Details:' ws-file-structure
      *    END-READ.
      *
      *    - NEXT RECORD is optional and is specified when an indexed
      *                  sequential file is being read sequentially.
      *
      *    - INTO clause is optional. ws-file-structure is defined in
      *           the WORKING STORAGE section to get values from the 
      *           READ statement.
      *
      *    - AT END condition becomes TRUE when the end of file is 
      *             reached.
      *
      * Close verb is used to close a file. After performing Close 
      * operation, the variables in the file structure will not be 
      * available for processing. The link between program and file 
      * is lost.
      *
      * Syntax:
      *
      *    CLOSE file-name.
      *
       IDENTIFICATION DIVISION.
           PROGRAM-ID. OPEN-AND-READ.

       ENVIRONMENT DIVISION.
           INPUT-OUTPUT SECTION.
               FILE-CONTROL.
               SELECT STUDENT ASSIGN TO 'input.txt'
               ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
           FILE SECTION.
               FD STUDENT.
               01 STUDENT-FILE.
                   05 STUDENT-ID    PIC 9(05).
                   05 NAME          PIC A(25).
           
           WORKING-STORAGE SECTION.
               01 WS-STUDENT.
                   05 WS-STUDENT-ID PIC 9(05).
                   05 WS-NAME       PIC A(25).
               01 WS-EOF            PIC A(01).
       
       PROCEDURE DIVISION.
           DISPLAY "OPEN & READ".

           OPEN INPUT STUDENT.
               PERFORM UNTIL WS-EOF='Y'
                   READ STUDENT INTO WS-STUDENT
                       AT END MOVE 'Y' TO WS-EOF
                       NOT AT END DISPLAY WS-STUDENT
                   END-READ
               END-PERFORM.
           CLOSE STUDENT.

       STOP RUN.
       