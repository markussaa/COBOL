      * Move verb is used to copy data from source data to destination
      * data. It can be used on both elementary and group items. For
      * group data items, MOVE CORRESPONDING/CORR is used. In try it 
      * option, MOVE CORR is not working; but on a mainframe server, it 
      * will work.
      *
      * For moving data from a string, MOVE(x:l) is used, where x is the
      * starting position, and l is the length. Data will be truncated
      * if the destination data item PIC clause is less than the source
      * data item PIC clause. If the destination data item PIC clause is
      * more than the source data item PIC clause, then ZEROS or SPACES
      * will be added in the extra bytes. 
      *
      * |              |  Alphabetic   |  Alphanumeric |  Numeric  
      * -------------------------------------------------------------
      * | Alphabetic   |   Possible    |    Possible   | Not Possible
      * -------------------------------------------------------------
      * | Alphanumeric |   Possible    |    Possible   |   Possible     
      * -------------------------------------------------------------
      * | Numeric      |  Not Possible |    Possible   |   Possible    
      * -------------------------------------------------------------
      *
       IDENTIFICATION DIVISION.
           PROGRAM-ID. MOVE-VERB.

       DATA DIVISION.
           WORKING-STORAGE SECTION.
               01 WS-NUM1              PIC 9(9).
               01 WS-NUM2              PIC 9(9).
               01 WS-NUM3              PIC 9(5).
               01 WS-NUM4              PIC 9(6).
               01 WS-ADDRESS. 
                   05 WS-HOUSE-NUMBER  PIC 9(3).
                   05 WS-COUNTRY       PIC X(5).
                   05 WS-PINCODE       PIC 9(6).
               01 WS-ADDRESS1. 
                   05 WS-HOUSE-NUMBER1 PIC 9(3).
                   05 WS-COUNTRY1      PIC X(5).
                   05 WS-PINCODE1      PIC 9(6).

       PROCEDURE DIVISION.

           MOVE 123456789 TO WS-NUM1.
           MOVE WS-NUM1 TO WS-NUM2 WS-NUM3.
           MOVE WS-NUM1(3:6) TO WS-NUM4.
           MOVE 123 TO WS-HOUSE-NUMBER.
           MOVE 'INDIA' TO WS-COUNTRY.
           MOVE 112233 TO WS-PINCODE.
           MOVE WS-ADDRESS TO WS-ADDRESS1.
         
           DISPLAY "WS-NUM1     : " WS-NUM1
           DISPLAY "WS-NUM2     : " WS-NUM2
           DISPLAY "WS-NUM3     : " WS-NUM3
           DISPLAY "WS-NUM4     : " WS-NUM4
           DISPLAY "WS-ADDRESS  : " WS-ADDRESS
           DISPLAY "WS-ADDRESS1 : " WS-ADDRESS1

       STOP RUN.
       