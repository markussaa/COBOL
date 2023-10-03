      * Two or more identically sequenced files are combined using Merge
      * statement. Files used in the merge process:
      *
      *    - Input files: Input-1, Input-2
      *    - Work file
      *    - Output file
      *
      * Syntax:
      *
      *    MERGE work-file ON ASCENDING KEY rec-key1
      *                   [ON DESCENDING KEY rec-key2]
      *    USING input-1, input-2 GIVING output-file.
      *
      * Merge performs the following operations:
      *
      *    - Opens the work-file in I-O mode, input-files in the INPUT
      *      mode and output-file in the OUTPUT mode.
      *
      *    - Transfers the records present in the input-files to the
      *      work-file.
      *
      *    - Sorts the SORT-FILE in ascending/descending sequence by 
      *      rec-key.
      *
      *    - Transfers the sorted records from the work-file to the 
      *      output-file.
      *
      *    - Closes the input-files and the output-file and deletes 
      *      the work-file.
      *
       IDENTIFICATION DIVISION.
           PROGRAM-ID. MERGE.

       ENVIRONMENT DIVISION.
           INPUT-OUTPUT SECTION.
           FILE-CONTROL.
            SELECT INPUT1 ASSIGN TO 'input1.txt'
            ORGANIZATION IS LINE SEQUENTIAL.

            SELECT INPUT2 ASSIGN TO 'input2.txt'
            ORGANIZATION IS LINE SEQUENTIAL.

            SELECT OUTPUT-FILE ASSIGN TO 'output.txt'
            ORGANIZATION IS LINE SEQUENTIAL.

            SELECT WORK-FILE ASSIGN TO 'TEMPSORT'.

       DATA DIVISION.
           FILE SECTION.
           FD INPUT1.
               01 INPUT1-STUDENT.
                   05 STUDENT-ID-I1   PIC 9(05).
                   05 STUDENT-NAME-I1 PIC A(25).
       
           FD INPUT2.
               01 INPUT2-STUDENT.
                   05 STUDENT-ID-I2   PIC 9(05).
                   05 STUDENT-NAME-I2 PIC A(25).
       
           FD OUTPUT-FILE.
               01 OUTPUT-STUDENT.
                   05 STUDENT-ID-O    PIC 9(05).
                   05 STUDENT-NAME-O  PIC A(25).
       
           SD WORK-FILE.
               01 WORK-STUDENT.
                   05 STUDENT-ID-W    PIC 9(05).
                   05 STUDENT-NAME-W  PIC A(25).
       
       PROCEDURE DIVISION.
           DISPLAY "MERGE".

           MERGE WORK-FILE ON ASCENDING KEY STUDENT-ID-W
           USING INPUT1, INPUT2 GIVING OUTPUT-FILE.

           DISPLAY "MERGED SUCESSFULLY".
       STOP RUN.
       