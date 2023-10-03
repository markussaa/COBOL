      * A COBOL copybook is a slection of code that defines data
      * structures. If a particular data structure is used in many
      * programs, then instead of writing the same data structure
      * again, we can use copybooks. We use the COPY statement to
      * include a copybook in a program. COPY statement is used in
      * Working Storage section.
      *
      * It can be compared to a interface in other programming languages
      * where one can define the struture and content that one should
      * expect when passing along data between programs.
      * 
       IDENTIFICATION DIVISION.
           PROGRAM-ID. COPYBOOK.

           DATA DIVISION.
           WORKING-STORAGE SECTION.
           COPY "abc.cpy".
       
       PROCEDURE DIVISION.

           MOVE 'MARKUS'     TO FIRSTNAME
           MOVE 'SOMETHING'  TO SECONDNAME
           MOVE '12345'      TO ZIP
           MOVE 'GOTHENBURG' TO CITY
           MOVE 'SOMEROAD'   TO STREET
          
           DISPLAY FIRSTNAME
           DISPLAY SECONDNAME
           DISPLAY ZIP
           DISPLAY CITY
           DISPLAY STREET
           
       STOP RUN.
       