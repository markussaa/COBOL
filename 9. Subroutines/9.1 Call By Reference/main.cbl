      * If the values of variables in the called program are modified, 
      * then their new values will reflect in the calling program. If 
      * BY clause is not specified, then variables are always passed by 
      * reference.
      *
      * Syntax:
      *
      *    CALL sub-prog-name USING variable-1, variable-2.
      *
      * Use the following to compile with subroutine (firstly complie
      * subroutine):
      *
      *    cobc main.cbl util.o -x
      *
       IDENTIFICATION DIVISION.
           PROGRAM-ID. CALL-BY-REFERENCE.
       
       DATA DIVISION.
           WORKING-STORAGE SECTION.
               01 WS-STUDENT-ID PIC 9(4) VALUE 1000.
               01 WS-STUDENT-NAME PIC A(15) VALUE 'Tim'.

       PROCEDURE DIVISION.
       
           DISPLAY "CALL-BY-REFERENCE".

           CALL 'UTIL' USING WS-STUDENT-ID, WS-STUDENT-NAME.

           DISPLAY 'Student Id : ' WS-STUDENT-ID
           DISPLAY 'Student Name : ' WS-STUDENT-NAME
           
       STOP RUN.
       