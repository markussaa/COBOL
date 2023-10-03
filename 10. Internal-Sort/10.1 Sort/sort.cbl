      * There are two techniques which are used for sorting 
      * files in COBOL:
      *
      *    - External sort: is used to sort files by using SORT 
      *                        utility in JCL. 
      *
      *    - Internal sort: is used to sort files within a COBOL 
      *                     program. SORT verb is used to sort a file.
      *
      * Three files are used in the sort process in COBOL:
      *
      *    - Input file: is the file which we have to sort either in
      *                  ascending or descending order.
      *
      *    - Work file: is used to hold records while the sort process
      *                 is in progress. Input file records are 
      *                 transferred to the work file for the sorting
      *                 process. This file should be defined in the
      *                 FILE SECTION under SD entry.
      *
      *    - Output file: is the file which we get after the sorting 
      *                   process. It is the final output of the SORT
      *                   verb.
      *
      * Syntax:
      *
      *    SORT work-file ON ASCENDING KEY rec-key1
      *                  [ON DESCENDING KEY rec-key2]
      *    USING input-file GIVING output-file.
      *
      * SORT performs the following operations:
      *
      *    - Opens work-file in I-O mode, input-file in the INPUT mode
      *      and output-file in the OUTPUT mode.
      *
      *    - Transfers the records present in the input-file to the
      *      work-file.
      *
      *    - Sorts the SORT-FILE in ascending/descending sequence 
      *      by rec-key.
      *
      *    - Transfers the sorted records from the work-file to the
      *      output-file.
      *
      *    - Closes the input-file and the output-file and deletes
      *      the work-file.
      *
       IDENTIFICATION DIVISION.
           PROGRAM-ID. SORT.

       ENVIRONMENT DIVISION.
           INPUT-OUTPUT SECTION.
           FILE-CONTROL.
               SELECT INPUT-FILE ASSIGN TO 'input.txt'
               ORGANIZATION IS LINE SEQUENTIAL.
               SELECT OUTPUT-FILE ASSIGN TO 'output.txt'
               ORGANIZATION IS LINE SEQUENTIAL.
               SELECT WORK-FILE ASSIGN TO 'TEMPSORT'.

       DATA DIVISION.
           FILE SECTION.
           FD INPUT-FILE.
               01 INPUT-STUDENT.
                   05 STUDENT-ID-I   PIC 9(05).
                   05 STUDENT-NAME-I PIC 9(25).
                   
           FD OUTPUT-FILE.
               01 OUTPUT-STUDENT.
                   05 STUDENT-ID-O   PIC 9(05).
                   05 STUDENT-NAME-O PIC 9(25).
               
           SD WORK-FILE.
               01 WORK-STUDENT.
                   05 STUDENT-ID-W   PIC 9(05).
                   05 STUDENT-NAME-W PIC 9(25).
               
       
       PROCEDURE DIVISION.
           DISPLAY "SORT".

           SORT WORK-FILE ON ASCENDING KEY STUDENT-ID-W
           USING INPUT-FILE GIVING OUTPUT-FILE.

           DISPLAY 'SORT SUCCESSFUL'.
       STOP RUN.
       