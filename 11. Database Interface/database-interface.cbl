      * In the upcoming examples in this folder, the following terms 
      * will be touched and mentioned:
      *
      *    - Embedded SQL
      *    - DB2 Application Programming
      *    - Host Variables
      *    - SQLCA
      *    - SQL Queries
      *    - Cursors        
      *
      * Embedded SQL:
      *
      * Embedded SQL statements are used in COBOL programs to perform 
      * standard SQL operations. Embedded SQL statements are 
      * preprocessed by the SQL processor before the application program
      * is compiled. COBOL is kown as the Host Language. COBOL-DB2
      * applications that include both COBOL and DB2.
      *
      * Embedded SQL statements work like normal SQL statements with
      * some minor changes. For example, the output of a query is 
      * directed to a predefined set of variables which are reffered as
      * Host Variables. An additional INTO clause is palced in the 
      * SELECT statement (SELECT STUDENT-ID INTO :WS-STUDENT-ID FROM ..)        
      *                    
      * DB2 Application Programming:
      *
      * The following rules should be taken into consideration when 
      * programming a COBOL-DB2 program:        
      *
      *    - All the SQL statements must be delimited between
      *      EXEC SQL and ENDEXEC.
      *
      *    - SQL statements must be coded in Area B.
      *
      *    - All the tables that are used in a program must be declared
      *      in the WORKING-STORAGE SECTION. This is done by using the
      *      INCLUDE statement.
      *
      *    - All SQL statements other than INCLUDE and DECLARE TABLE
      *      must appear in the PROCEDURE DIVISION.
      *
      * Host Variables:
      *
      * Host variables are used for receiving data from a table or 
      * inserting data in a table. Host vaiables must be declared for 
      * all values that are to be passed between the program and the
      * DB2. They are delcared in the WORKING-STORAGE SECTION.
      *
      * Host variables cannot be group items, but they may be grouped
      * together in host structure. They cannot be RENAMED or 
      * REDEFINED. Using host variables with SQL statements, prefix
      * them with a colon (:).
      *    
      * Example:
      *
      * DATA DIVISION.
      *    WORKING-STORAGE SECTION.
      *
      *    EXEC SQL
      *        INCLUDE table-name.
      *    END-EXEC.
      *
      *    EXEC SQL BEGIN DECLARE SECTION
      *    END-EXEC.
      *
      *    01 STUDENT-REC.
      *       05 STUDENT-ID      PIC 9(04).
      *       05 STUDENT-NAME    PIC X(25).
      *       05 STUDENT-ADDRESS PIC X(50).
      *
      *    EXEC SQL END DECLARE SECTION
      *    END-EXEC.
      *
      * And then use SELECT STUDENT-ID INTO :WS-STUDENT-ID FROM ...
      *
      * SQLCA:
      *
      * SQLCA is a SQL communication area through which DB2 passes the
      * feedback of SQL execution to the program. It tells the program
      * whether an execution was successful or not. There are a number
      * of predefined variables under SQLCA like SQLCODE which contains
      * the error code. The value '000' in SQLCODE states a successful
      * execution.
      *
      * Example on how to include it:
      *
      *    DATA DIVISION.
      *        WORKING-STORAGE SECTION.
      *        EXEC SQL
      *            INCLUDE SQLCA
      *        END-EXEC.
      *
       IDENTIFICATION DIVISION.
           PROGRAM-ID. DATABASE-INTERFACE.

       PROCEDURE DIVISION.
           DISPLAY "DATABASE-INTERFACE".
       STOP RUN.
       