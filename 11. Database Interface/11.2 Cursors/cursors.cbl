      * Cursors are used to handle multiple row selections at a time. 
      * They are data structures that hold all the results of a query. 
      * They can be defined in the Working-Storage Section or the 
      * Procedure Division. Following are the operations associated 
      * with Cursor:
      *
      *    - Declare
      *    - Open
      *    - Close
      *    - Fetch
      *
      * Declare cursor:
      *
      * Cursor declaration can be done in the Working-Storage Section or
      * the Procedure Division. The first statement is the DECLARE 
      * statement which is a nonexecutable statement.
      *
      * Syntax: 
      *
      *    EXEC SQL
      *        DECLARE STUDCUR CURSOR FOR
      *        SELECT STUDENT-ID, 
      *               STUDENT-NAME, 
      *               STUDENT-ADDRESS 
      *        FROM STUDENT
      *        WHERE STUDENT-ID >:WS-STUDENT-ID
      *    END-EXEC.
      *
      * Open cursor:
      *
      * Before using a cursor, Open statement must be performed. The 
      * Open statement prepares the SELECT for execution.
      *
      * Syntax: 
      *
      *    EXEC SQL
      *        OPEN STUDCUR
      *    END-EXEC.
      *
      * Close cursor:
      *
      * Close statement releases all the memory occupied by the cursor. 
      * It is mandatory to close a cursor before ending a program.
      *
      * Syntax:
      *
      *    EXEC SQL
      *        CLOSE STUDCUR
      *    END-EXEC.
      *
      * Fetch cursor:
      *
      * Fetch statement identifies the cursor and puts the value in the 
      * INTO clause. A Fetch statement is coded in loop as we get one 
      * row at a time.
      *
      * Syntax:
      *
      *    EXEC SQL
      *        FETCH STUDCUR
      *        INTO :WS-STUDENT-ID, :WS-STUDENT-NAME, WS-STUDENT-ADDRESS
      *    END-EXEC.
      *
      * And then one could loop over all the records:
      *
      *    DATA DIVISION.
      *    WORKING-STORAGE SECTION.
      *    
      *    EXEC SQL
      *    INCLUDE SQLCA
      *    END-EXEC.
      *    
      *    EXEC SQL
      *    INCLUDE STUDENT
      *    END-EXEC.
      *    
      *    EXEC SQL BEGIN DECLARE SECTION
      *    END-EXEC.
      *      01 WS-STUDENT-REC.
      *          05 WS-STUDENT-ID PIC 9(4).
      *          05 WS-STUDENT-NAME PIC X(25).
      *          05 WS-STUDENT-ADDRESS X(50).
      *    EXEC SQL END DECLARE SECTION
      *    END-EXEC.
      *    
      *    EXEC SQL
      *       DECLARE STUDCUR CURSOR FOR
      *       SELECT STUDENT-ID, 
      *              STUDENT-NAME, 
      *              STUDENT-ADDRESS 
      *       FROM STUDENT
      *       WHERE STUDENT-ID >:WS-STUDENT-ID
      *    END-EXEC.
      *
      *    PROCEDURE DIVISION.
      *        MOVE 1001 TO WS-STUDENT-ID.
      *
      *        PERFORM UNTIL SQLCODE = 100
      * 
      *        EXEC SQL
      *            FETCH STUDCUR
      *            INTO :WS-STUDENT-ID, 
      *                 :WS-STUDENT-NAME, 
      *                 :WS-STUDENT-ADDRESS
      *        END-EXEC
      *    
      *        DISPLAY WS-STUDENT-REC
      *    
      *    END-PERFORM	
      *    STOP-RUN.
      *
       IDENTIFICATION DIVISION.
           PROGRAM-ID. CURSORS.

       PROCEDURE DIVISION.
           DISPLAY "CURSORS".
       STOP RUN.
       