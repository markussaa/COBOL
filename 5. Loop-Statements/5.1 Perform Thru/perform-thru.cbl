      * Perform thru is used to execute a series of paragraph by giving
      * the first and last paragraph names in the sequence. After 
      * executing the last paragraph, the control is returned back.
      *
      * In-line Perform:
      * Statements inside the PERFORM will be executed till END-PERFORM
      * is reached.
      *
      * Syntax:
      * PERFORM 
      *    DISPLAY 'HELLO WORLD'
      * END-PERFORM.
      *
      * Out-of-line Perform:
      * Here, a statement is executed in one paragraph and then the 
      * control is transferred to other paragraph or section.
      *
      * Syntax:
      * PERFORM PARAGRAPH1 THRU PARAGRAPH2
      * 
       IDENTIFICATION DIVISION.
           PROGRAM-ID. PERFORM-THRU.
       
       PROCEDURE DIVISION.
           DISPLAY "PERFORM-THRU".

           A-PARA.
               PERFORM 
                   DISPLAY 'IN A-PARA'
               END-PERFORM.
               PERFORM C-PARA THRU E-PARA.
           
           B-PARA.
               DISPLAY 'IN B-PARA'.
               STOP RUN.
           
           C-PARA.
               DISPLAY 'IN C-PARA'.
           
           D-PARA.
               DISPLAY 'IN D-PARA'.
           
           E-PARA.
               DISPLAY 'IN E-PARA'.

       