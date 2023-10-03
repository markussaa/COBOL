      * Arrays in COBOL are known as tables. An array is linear data
      * structure and is a collection of individual data items of same
      * type. Data items of a table are internally sorted.
      *
      * Table is declared in Data Division. Occurs clause is used to 
      * define a table. Occurs clause indicates the repetition of data
      * name definition. It can be used only with level numbers 
      * starting from 02 to 49. Do not use occurs clause with Redegines.
      * Description of one- and two-dimensional tables can be found in
      * section 7.1 Table Declaration.
      * 
       IDENTIFICATION DIVISION.
           PROGRAM-ID. TABLE-PROCESSING.
       
       PROCEDURE DIVISION.
           DISPLAY "TABLE-PROCESSING".
       STOP RUN.
       