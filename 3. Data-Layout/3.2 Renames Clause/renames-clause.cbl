      * Renames clause is used to give different names to existing
      * items. It is used to re-group the data names and give a new name
      * to them. The new data names can rename across groups or 
      * elementary items. Level number 66 is reserved renames.
      *
      * Renaming is possible at same level only. Renames definition must
      * be the next data description you want to rename. Do not use 
      * Renames with the level numbers 01 or 77. The data names must 
      * come in sequence. Data items with occur clause cannot be
      * renamed.
      * 
       IDENTIFICATION DIVISION.
           PROGRAM-ID. RENAMES-CLAUSE.

           DATA DIVISION.
           WORKING-STORAGE SECTION.
               01 WS-DESCRIPTION.
                   05 WS-NUM.
                       10 WS-NUM1 PIC 9(2) VALUE 20.
                       10 WS-NUM2 PIC 9(2) VALUE 56.
                   05 WS-CHAR.
                       10 WS-CHAR1 PIC X(2) VALUE 'AA'.
                       10 WS-CHAR2 PIC X(2) VALUE 'BB'.
               66 WS-RENAME RENAMES WS-NUM2 THRU WS-CHAR2.
       
       PROCEDURE DIVISION.
          
           DISPLAY "WS-RENAME : " WS-RENAME.
           
       STOP RUN.
       