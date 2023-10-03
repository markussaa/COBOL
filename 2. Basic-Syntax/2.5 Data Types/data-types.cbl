      * Data division is used to degine the variables in a program.
      * To describe data in COBOL, one must understand the following
      * items:
      *    01        TOTAL-STUDENTS   PIC9(5)      VALUE 125.
      *    |               |             |              |
      *    |               |             |              |
      *    |               |             |              | 
      * Level Number   Data Name   Picture Clause  Value Clause
      *
      * Data names must be defined in the data division before using
      * them in the procedure division. They must have a user-defined
      * name; reserved words cannot be used here. Data names give 
      * reference to the memory locations where actual data is stored.
      * They can be elementery or group type.
      *
      * Level Numbers:
      * 
      * Level number is used to specify the level of data in a record.
      * they are used to differentiate between elementary items and
      * group items. Elementary items can be grouped toegether to create
      * groups of items.
      *
      * | Sr.No. |        Level Number & Description
      * -------------------------------------------------------------
      * |   1    |     01, record description entries
      * -------------------------------------------------------------
      * |   2    |     02 to 49, Group of elementery items
      * -------------------------------------------------------------
      * |   3    |     66, Rename clause items
      * -------------------------------------------------------------
      * |   4    |     77, Items which cannot be sub-devided
      * -------------------------------------------------------------
      * |   5    |     88, Condition name entry
      * -------------------------------------------------------------
      *
      * Elementary items cannot be divided further. Level number, Data 
      * name Picture clause, and Value clause (optional) are used to 
      * describe an elementary item.
      *
      * Group items consist of one or more elementary items. Level
      * number, Data name, and Value clause (optional) are used to 
      * describe a group item. Group level number is always 01.
      *
       IDENTIFICATION DIVISION.
           PROGRAM-ID. DATA-TYPES.

       DATA DIVISION.
           WORKING-STORAGE SECTION.
               01 WS-TOTAL-STUDENTS   PIC 9(3) VALUE 125.

               01 WS-ADDRESS.
                  05 WS-HOUSE-NUMBER PIC 9(3)   VALUE 5.
                  05 WS-STREET       PIC X(15)  VALUE 'FJARDINGSGATAN'.
                  05 WS-CITY         PIC X(15)  VALUE 'GOTEBORG'.
                  05 WS-ZIPCODE      PIC 9(5)   VALUE 41722.
                  05 WS-COUNTRY      PIC X(15)  VALUE 'SWEDEN'.

       PROCEDURE DIVISION.
           DISPLAY "TOTAL STUDENTS " WS-TOTAL-STUDENTS.
           
           DISPLAY "ADRESS:".
           DISPLAY WS-STREET " " WS-HOUSE-NUMBER " " WS-CITY " "
                   WS-ZIPCODE " " WS-COUNTRY.
       STOP RUN.
       