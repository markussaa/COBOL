      * Start verb can be performed only on indexed and relative files. 
      * It is used to place the file pointer at a specific record. The 
      * access mode must be sequential or dynamic. File must be opened 
      * in I-O or Input mode.
      *
      * Syntax:
      *
      *    START file-name KEY IS [=, >, <, NOT, <= or >=] rec-key
      *        INVALID KEY DISPLAY 'Invalid Key'
      *        NOT INVALID KEY DISPLAY 'File Pointer Updated'
      *    END-START.
      *
       IDENTIFICATION DIVISION.
           PROGRAM-ID. START.
       
       PROCEDURE DIVISION.
           DISPLAY "START".
       STOP RUN.
       