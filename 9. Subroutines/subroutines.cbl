      * Cobol subroutine is a program that can be compiled independently
      * but cannot be executed independently. There are two types of 
      * subroutines: internal subroutines like Perform statements and 
      * external subroutines like CALL verb.
      *
      * CALL verb is used to transfer the control from one program to 
      * another program. The program that contains the CALL verb is the 
      * Calling Program and the program being called is known as the 
      * Called Program. Calling program execution will halt until the 
      * called program finishes the execution. Exit Program statement is
      * used in the Called program to transfer the control back.
      *
      * Called Program Constraints:
      *    
      *    - Linkage section: must be defined in the called program. It 
      *                       consists of data elements passed in the 
      *                       program. The data items should not have 
      *                       Value clause. PIC clause must be 
      *                       compatible with the variables passed 
      *                       through the calling program.
      *
      *    - Procedure division: using has a list of variables passed 
      *                          from the calling program and the order 
      *                          must be same as mentioned in the Call 
      *                          verb.
      *
      *    - Exit program: statement is used in the called program to 
      *                    transfer the control back. It must be the 
      *                    last statement in the called program.
      *
      *  The parameters can be passed between two programs in to ways:
      *
      *    - By Reference
      *    - By Content
      *
       IDENTIFICATION DIVISION.
           PROGRAM-ID. SUBROUTINES.
       
       PROCEDURE DIVISION.
           DISPLAY "SUBROUTINES".
       STOP RUN.
       