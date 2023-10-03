      * ENVIRONMENT DIVISON
      * 
      * It is used to specify input and output files to the program.
      * It consists of two sections:
      *    - CONFIGURATION SECTION
      *        - provides information about the system on which the
      *          program is written and executed. It consist of:
      *            - SOURCE-COMPUTER: system used to compile the program
      *            - OBJECT-COMPUTER: system used to execute the program
      *    - INPUT-OUTPUT SECTION
      *        - provides information of external data sets used in the
      *          program. it consists of:
      *            - FILE-CONTROL: info of external data sets used
      *            - I-O CONTROL: information of files used
      *
       IDENTIFICATION DIVISION.
           PROGRAM-ID. ENVIRONMENT.
       
       ENVIRONMENT DIVISION.
           CONFIGURATION SECTION.
               SOURCE-COMPUTER. XXX-MAC.
               OBJECT-COMPUTER. XXX-MAC.
      
           INPUT-OUTPUT SECTION.
               FILE-CONTROL.

       PROCEDURE DIVISION.
           DISPLAY "EXECUTE PROGRAM WITH ENVIRONMENT DIVISION".
       STOP RUN.