      * Relation condition compares two operands, either of which can 
      * be an identifier, literal, or aritmethic expression. Algebraic
      * comparison of numeric fields is done regardless of size and
      * and usage clause.
      *
      * For none-numeric operands:
      * If two non-numeric operands of equal size are compared, then the
      * characters are compared from left with the corresponding 
      * positions till the end is reached. The operand containing
      * greater number of characters is declared greater.
      *
      * If two non-numeric operands of unequal size are compared,
      * then the shorter data item is appended with spaces at the end
      * till the size of the operands becomes equal and then compared
      * according to the rules mentioned in the previous point.
      *
      * Syntax:
      * [Data Name / Arithmetic Operation]
      * 
      * [IS][NOT]
      *
      * [Equal to (=), Greater than (>), Less than (<), 
      *  Greater than or Equal (>=), Less than or equal (<=)]     
      *
      * [Data Name / Arithmetic Operation]        
      * 
       IDENTIFICATION DIVISION.
           PROGRAM-ID. RELATION-CONDITION.

           DATA DIVISION.
               WORKING-STORAGE SECTION.
               01 WS-NUM1 PIC 9(9).
               01 WS-NUM2 PIC 9(9).
               
       PROCEDURE DIVISION.
           DISPLAY "RELATION CONDITIONAL STATEMENTS".

           MOVE 25 TO WS-NUM1.
           MOVE 15 TO WS-NUM2.
   
           IF WS-NUM1 IS GREATER THAN OR EQUAL TO WS-NUM2 THEN
              DISPLAY 'WS-NUM1 IS GREATER THAN WS-NUM2'
           ELSE
              DISPLAY 'WS-NUM1 IS LESS THAN WS-NUM2'
           END-IF.

       STOP RUN.
       