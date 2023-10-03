      * A COBOL program structure consists of divisions as shown below:
      * PROGRAM
      * DIVISIONS
      * SECTIONS
      *    - are the logical subdivison of a program logic
      *    - a section is a collection of PARAGRAPHS
      * PARAGRAPHS:
      *    - are the subdivisions of a SECTION or DIVISION
      *    - it sis either a user-defined or a predefined name follwed
      *      by a period, and consists of zero of more SENTENCES/entries
      * SENTENCE
      *    - are the combination of one more statements
      *    - appear only in the PROCEDURE division
      *    - must end iwth a period
      * STATEMENTS
      *    - are meaningful COBOL statements that perform something
      * CHARACTERS
      *    - are the lowest in the hierarchy and cannot be divisible
      *
       IDENTIFICATION DIVISION.
           PROGRAM-ID. OVERVIEW.
       
       PROCEDURE DIVISION.
      * Example of SECTION, PARAGRAPH, SENTENCE and STATEMENTS
       MAIN SECTION.
       
       EXAMPLE-PARAGRAPH.
      *    SENTENCE 
      *       STATEMENT
           DISPLAY "COBOL"
      *       STATEMENT
           DISPLAY "STRUCTURE"
       .

       STOP RUN.
       