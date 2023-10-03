      * DATA DIVISON
      * 
      * It is used to define the variables used in the program. It
      * consists of four sections:
      *    - FILE SECTION: is used to define the record structure of 
      *      the file
      *    - WORKING-STORAGE SECTION: is used to declare temporary
      *      variables and file structures
      *    - LOCAL-STORAGE SECTION: is similar to W-S. The only
      *      difference is that the variables will be allocated and 
      *      initialized every time a program starts execution.
      *    - LINKAGE SECTION: is used to describe the data names that
      *      are recieved from an external program
      *
       IDENTIFICATION DIVISION.
           PROGRAM-ID. DATA.

       DATA DIVISION.
           WORKING-STORAGE SECTION.
               01 WS-NAME PIC X(20).
               01 WS-AGE  PIC 9(2).

       PROCEDURE DIVISION.
           DISPLAY "EXECUTE PROGRAM WITH DATA DIVISION".
           DISPLAY "PLEASE ENTER YOUR NAME:"
           ACCEPT WS-NAME
           DISPLAY "PLEASE ENTER YOUR AGE:"
           ACCEPT WS-AGE
           DISPLAY "YOUR NAME IS " WS-NAME
           DISPLAY "YOU ARE " WS-AGE " YEARS OLD"
       STOP RUN.