      * File organization indicates how the records are organized in a
      * file. There are different types of organizations for files so as
      * to increase their efficiency of accessing the records. Follwing
      * are the types of file organization:                             
      *
      *    - Sequential file organization
      *    - Indexed sequential file organization
      *    - Relative file organization                                    
      * 
      * The syntaxes used here, mentioned along with their respective 
      * terms, only refer to their usage in the program. The complete 
      * programs using these syntaxes would be covered in 'File
      * Handling Verbs'.                                                 
      *
      * Sequential file organization:
      *
      * A sequential file consists of records that are stored and 
      * accessed in sequential order. Following are the key attributes
      * of sequential organization:
      *
      *    - Records can be read in sequential order. For reading the 
      *      10th record, all the previous 9 records should be read.
      * 
      *    - Records are written in sequential order. A new record 
      *      cannot be inserted in between. A new record is always 
      *      inserted at the end of the file.
      *
      *    - After placing a record into a sequential file, it is not 
      *      possible to delete, shorten, or lengthen a record.
      *
      *    - Order of the records, once inserted, can never be changed.
      *
      *    - Updation of record is possible. A record can be 
      *      overwritten, if the new record length is same as the old 
      *      record length.
      *
      *    - Sequential output files are good option for printing.
      *
      * Syntax:
      *    
      *    INPUT-OUTPUT SECTION.
      *    FILE-CONTROL.
      *        SELECT file-name ASSIGN TO dd-name-jcl
      *        ORGANIZATION IS SEQUENTIAL
      *    
      * Indexed sequential file organization:
      *
      * An indexed sequential file consists of records that can be
      * accessed sequentially. Direct access is also possible. It 
      * consists of two parts:
      *
      *    - Data File: contains records in sequential scheme.
      *
      *    - Index File: contains the primary key and its address in
      *                  the data file.
      *
      * Following are the key attributes of sequential organization:
      *
      *    - Records can be read in sequential order just like in 
      *      sequential organization.
      *
      *    - records can be accessed ramdonly if the primary key
      *      is unkown. Index file is used to get the address of a 
      *      record and then the record is fetched from the data file.
      *
      *    - Sorted index is maintained in this file system which 
      *      relates the key value to the position of the record in
      *      the file.
      *
      *    - Alternative index can also be created to fetch the records.
      *
      * Syntax:
      *
      *    INPUT-OUTPUT SECTION.
      *    FILE-CONTROL.
      *        SELECT file-name ASSIGN TO dd-name-jcl
      *        ORGANIZATION IS INDEXED
      *        RECORD KEY IS primary-key
      *        ALTERNATE RECORD KEY IS rec-key
      *
      * Relative file organization:
      *
      * A relative file consists of records ordered by their by their
      * relative address. Following are the key attributes of relative
      * file organization:
      *
      *    - Records can be read in sequential order just like in
      *      sequential and indexed file organization.
      *
      *    - Records can be accessed using relative key. Relative key
      *      represents the record's location relative to the address of
      *      the start of the file.
      *
      *    - Records can be inserted using relative key. Relative 
      *      address is calculated using relative key. 
      *
      *    - Relative file provides the fastest access to the records.
      *
      *    - The main disadvantage of this file system is that if some 
      *      intermidiate records are missing, they will also occupy 
      *      space.
      *
      * Syntax:
      *
      *    INPUT-OUTPUT SECTION.
      *    FILE-CONTROL.
      *       SELECT file-name ASSIGN TO dd-name-jcl
      *       ORGANIZATION IS RELATIVE
      *       RELATIVE KEY IS rec-key
      *
       IDENTIFICATION DIVISION.
           PROGRAM-ID. FILE-ORGANIZATION.
       
       PROCEDURE DIVISION.
           DISPLAY "FILE-HANDLING".
       STOP RUN.
       