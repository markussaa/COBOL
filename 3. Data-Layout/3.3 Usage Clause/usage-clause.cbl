      * Usage clause specifies the operating system in which format is
      * stored. It cannot be used with level numbers 66 or 88. If usage
      * clause is specified on a group, then all the elementary items
      * will have the same usage clause. The different options available
      * with usage cluase are as follows:
      *
      * - Display: Data item is stored in ASCII format and each 
      *            character will take 1 byte. It is the default usage.
      *
      * - COMPUTATIONAL / COMP: Data item is stored in binary format.
      *                         Here, data items must be integers.
      *
      * - COMP-1: Data item is similar to Real or Float and is 
      *           represented as a single precision floating number.
      *           Internally, data is stored in hexadecimal format.
      *           COMP-1 does not accept PIC clause. Here 1 word is
      *           equal to 4 bytes.
      *
      * - COMP-2: Data item is similar to Long or Double and is
      *           represented as double precision floating point number.
      *           Internally, data is stored in hexadeciaml format.
      *           COMP-2 does not specify PIC clause. Here 2 word
      *           is equal to 8 bytes.
      *
      * - COMP-3: Data item is stored in packed decimal format. Each
      *           digit occupies half a byte (1 nibble) and the sign is
      *           stored at the rightmost nibble.
      * 
       IDENTIFICATION DIVISION.
           PROGRAM-ID. USAGE-CLAUSE.

           DATA DIVISION.
           WORKING-STORAGE SECTION.
      *        Display:
      *        It requires 8 bytes as sign and decimal 
      *        doesn't require any byte.
               01 WS-NUM PIC S9(5)V9(3) USAGE IS DISPLAY.
      *        It requires 5 bytes as sign.
               01 WS-NUM PIC 9(5) USAGE IS DISPLAY.

      *        Computational / Comp:
      *        IF N = 1 to 4   -> it takes 2 bytes
      *        IF N = 5 to 9   -> it takes 4 bytes
      *        IF N = 10 to 18 -> it takes 8 bytes
      *        01 WS-NUM PIC(n) USAGE IS COMP.

       
       PROCEDURE DIVISION.
          
           DISPLAY "USAGE CLAUSE".
           
       STOP RUN.
       