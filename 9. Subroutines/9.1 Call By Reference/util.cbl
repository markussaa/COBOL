      * Use the following to compile a subroutine:
      *
      *    cobc util.cbl -c
      * 
       IDENTIFICATION DIVISION.
       PROGRAM-ID. UTIL.
       
       DATA DIVISION.
           LINKAGE SECTION.
               01 LS-STUDENT-ID PIC 9(4).
               01 LS-STUDENT-NAME PIC A(15).
       
       PROCEDURE DIVISION USING LS-STUDENT-ID, LS-STUDENT-NAME.

          DISPLAY 'IN CALLED PROGRAM'.
          MOVE 1111 TO LS-STUDENT-ID.

       EXIT PROGRAM.
