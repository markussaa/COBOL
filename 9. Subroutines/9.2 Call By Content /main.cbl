      * If the values of variables in the called program are modified, 
      * then their new values will not reflect in the calling program.
      *
      * Syntax:
      *
      *    CALL sub-prog-name USING 
      *    BY CONTENT variable-1, BY CONTENT variable-2.
      *
      * Use the following to compile with subroutine (firstly complie
      * subroutine):
      *
      *    cobc main.cbl util.o -x
      *
      *
       IDENTIFICATION DIVISION.
           PROGRAM-ID. CALL-BY-CONTENT.
       
       DATA DIVISION.
           WORKING-STORAGE SECTION.
               01 WS-STUDENT-ID PIC 9(4) VALUE 1000.
               01 WS-STUDENT-NAME PIC A(15) VALUE 'Tim'.

       PROCEDURE DIVISION.
       
           DISPLAY "CALL-BY-CONTENT".

           CALL 'UTIL' USING BY CONTENT WS-STUDENT-ID, 
                             BY CONTENT WS-STUDENT-NAME.

           DISPLAY 'Student Id : ' WS-STUDENT-ID
           DISPLAY 'Student Name : ' WS-STUDENT-NAME
           
       STOP RUN.
       