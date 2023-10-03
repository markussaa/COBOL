      * Inspect verb is used to count or replace the characters in a 
      * string. String operations can be performed on alphanumeric,
      * numeric, or alphabetic values. Inspect operations are performed
      * from left to right. 
      * 
      * The options are:
      *    
      *    - Tallying, option is used to count string characters.
      *    
      *    Syntax: 
      *    INSPECT input-string
      *    TALLYING output-count FOR ALL CHARACTERS
      *
      *    input-string − The string whose characters are to be counted.
      *    output-count − Data item to hold the count of characters.
      *
      *    - Replacing, option is used to replace string characters.
      *    
      *    Syntax:
      *    INSPECT input-string REPLACING ALL char1 BY char2.
      *
      *    input-string − The string whose characters are to be 
      *                   replaced from char1 to char2.
      *
      *    - String, verb is used to concatenate strings. Using STRING
      *              statement, two or more strings of characters can
      *              be combined to form a longer string. "Delimited
      *              By" clauuse is compulsory.
      *
      * 
       IDENTIFICATION DIVISION.
           PROGRAM-ID. INSPECT.
           
           DATA DIVISION.
               WORKING-STORAGE SECTION.
               01 WS-CNT1   PIC 9(02) VALUE 0.
               01 WS-CNT2   PIC 9(02) VALUE 0.
               01 WS-STRING PIC X(15) VALUE 'ABCDACDADEAAAFF'.
           
       PROCEDURE DIVISION.
           DISPLAY "INSPECT-HANDLING".

      *    Example of Tallying: 
           INSPECT WS-STRING TALLYING WS-CNT1 FOR ALL CHARACTERS.

           DISPLAY "TALLYING WS-CNT1 : " WS-CNT1.

           INSPECT WS-STRING TALLYING WS-CNT2 FOR ALL 'A'.

           DISPLAY "TALLYING WS-CNT2 : " WS-CNT2.
           
      *    Example of Replacing:
           DISPLAY "OLD STRING BEFORE REPLACING : " WS-STRING.

           INSPECT WS-STRING REPLACING ALL 'A' BY 'X'.

           DISPLAY "NEW STRING AFTER REPLACING: " WS-STRING.

       STOP RUN.
       