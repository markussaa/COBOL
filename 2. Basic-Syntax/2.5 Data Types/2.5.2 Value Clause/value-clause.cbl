      * Value claues is an optinal cluse which is ued to intitialize 
      * the data items. The values can be numeric literal, alphanumeric
      * literal, or figurative constant. It can be used in both group
      * and elementary items.
      *
       IDENTIFICATION DIVISION.
           PROGRAM-ID. VALUE-CLAUSE.

       DATA DIVISION.
           WORKING-STORAGE SECTION.
               01 WS-NUMBER    PIC 9(3)  VALUE IS 125.
               01 WS-NAME      PIC A(15) VALUE 'MARKUS'.
               01 WS-ID        PIC 99    VALUE ZERO.
               
         

       PROCEDURE DIVISION.
           DISPLAY WS-NUMBER.
           DISPLAY WS-NAME.
           DISPLAY WS-ID.
       STOP RUN.
       