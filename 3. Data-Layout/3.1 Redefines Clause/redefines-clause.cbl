      * Redefines clause is ued to define a storage with different data
      * description. If one or more data items are not used 
      * simultaneously, then the same storage can be utuilized for
      * another data item. So the same storage can be referred with
      * different data items.
      *
      * Level numbers of redefined item and redefining item must be the
      * same and it cannot be 66 or 88 level number. Do not use VALUE
      * clause with a redefining item. In file Section, do not use a 
      * redefines clause with 01 level number. Redefines definition
      * must be the next data description you want to redefine. A 
      * redefining item will always have the same value as a redefined
      * item.
      * 
       IDENTIFICATION DIVISION.
           PROGRAM-ID. REDEFINES-CLAUSE.

           DATA DIVISION.
           WORKING-STORAGE SECTION.
               01 WS-DESCRIPTION.
                   05 WS-DATE1 VALUE '20140831'.
                       10 WS-YEAR PIC X(4).
                       10 WS-MONTH PIC X(2).
                       10 WS-DATE PIC X(2).
               05 WS-DATE2 REDEFINES WS-DATE1 PIC 9(8).
       
       PROCEDURE DIVISION.
          
           DISPLAY "WS-DATE1 : " WS-DATE1.
           DISPLAY "WS-DATE2 : " WS-DATE2.

       STOP RUN.
       