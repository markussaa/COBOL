      * Till now, file organization schemes have been discussed. For 
      * each file organization scheme, different access modes can be 
      * used. Following are the types of file access modes:
      *
      *    - Sequential Access
      *    - Random Access
      *    - Dynamic Access
      *
      * The syntaxes in this module, mentioned along with their 
      * respective terms, only refer to their usage in the program.
      * The complete programs using these syntaxes would be discussed
      * later.
      *
      * Sequential Access:
      *
      * When the access mode is sequential, the method of record 
      * retrieval changes as per the selected file organization.
      *
      *    - For sequential files, records are accessed in the same 
      *      order in which they were inserted.
      *
      *    - For indexed files, the parameter used to fetch the records
      *      are the record key values.
      *
      *    - For relative files, relative record keys are used to 
      *      retrieve the records.
      *
      * Syntax:
      *
      *    ENVIRONMENT DIVISION.
      *    INPUT-OUTPUT SECTION.
      *    FILE-CONTROL.
      *        SELECT file-name ASSIGN TO dd-name
      *        ORGANIZATION IS SEQUENTIAL
      *        ACCESS MODE IS SEQUENTIAL
      * 
      *    ENVIRONMENT DIVISION.
      *    INPUT-OUTPUT SECTION.
      *       FILE-CONTROL.
      *       SELECT file-name ASSIGN TO dd-name
      *       ORGANIZATION IS INDEXED
      *       ACCESS MODE IS SEQUENTIAL
      *       RECORD KEY IS rec-key1
      *       ALTERNATE RECORD KEY IS rec-key2
      *    
      *    ENVIRONMENT DIVISION.
      *    INPUT-OUTPUT SECTION.
      *       FILE-CONTROL.
      *       SELECT file-name ASSIGN TO dd-name
      *       ORGANIZATION IS RELATIVE
      *       ACCESS MODE IS SEQUENTIAL
      *       RELATIVE KEY IS rec-key1
      *
      * Random Access:
      *
      * When the access mode is RANDOM, the method of record retrieval
      * changes as per the selected file organization.
      *
      *    - For indexed files, records are accessed according to the 
      *      value placed in a key field which can be primary or 
      *      alternate key. There can be one or more alternate indexes.
      *
      *    - For relative files, records are retrieved through relative
      *      record keys.
      *
      * Syntax:
      *
      *    ENVIRONMENT DIVISION.
      *    INPUT-OUTPUT SECTION.
      *       FILE-CONTROL.
      *       SELECT file-name ASSIGN TO dd-name
      *       ORGANIZATION IS INDEXED
      *       ACCESS MODE IS RANDOM
      *       RECORD KEY IS rec-key1
      *       ALTERNATE RECORD KEY IS rec-key2
      *    	
      *    ENVIRONMENT DIVISION.
      *    INPUT-OUTPUT SECTION.
      *       FILE-CONTROL.
      *       SELECT file-name ASSIGN TO dd-name
      *       ORGANIZATION IS RELATIVE
      *       ACCESS MODE IS RANDOM
      *       RELATIVE KEY IS rec-key1
      *
      * Dynamic Access:
      *
      * Dynamic access supports both sequential and random access in 
      * the same program. With dynamic access, one file definition is 
      * used to perform both sequential and random processing like 
      * accessing some records in sequential order and other records 
      * by their keys.
      *
      * With relative and indexed files, the dynamic access mode allows 
      * you to switch back and forth between sequential access mode and 
      * random access mode while reading a file by using the NEXT phrase
      * on the READ statement. NEXT and READ functionalities will be 
      * discussed in File Handling Verbs.
      *
      * Syntax:
      *
      *    ENVIRONMENT DIVISION.
      *    INPUT-OUTPUT SECTION.
      *       FILE-CONTROL.
      *       SELECT file-name ASSIGN TO dd-name
      *       ORGANIZATION IS SEQUENTIAL
      *       ACCESS MODE IS DYNAMIC
      *       RECORD KEY IS rec-key1
      *       ALTERNATE RECORD KEY IS rec-key2
      *    
      *    ENVIRONMENT DIVISION.
      *    INPUT-OUTPUT SECTION.
      *       FILE-CONTROL.
      *       SELECT file-name ASSIGN TO dd-name
      *       ORGANIZATION IS RELATIVE
      *       ACCESS MODE IS DYNAMIC
      *       RELATIVE KEY IS rec-key1
      *
       IDENTIFICATION DIVISION.
           PROGRAM-ID. FILE-ACCESS-MODE.
       
       PROCEDURE DIVISION.
           DISPLAY "FILE-ACCESS-MODE".
       STOP RUN.
       