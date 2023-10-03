      * The concept of files in COBOL is different from that in C/C++/C# 
      * While learning the basics of 'File' in COBOL, the concepts of 
      * both languages should not be corelated. Simple text files cannot
      * be used in COBOL, instead PS (Physical Sequential) and VSAM 
      * files are used. 
      *
      * To understand file handling in COBOL, one must know the basic 
      * terms. These terms only serve to understand the fundamentals of 
      * file handling. Further in depth terminology would be discussed 
      * in the chapter 'File Handling Verbs'. 
      *
      * To help with the understanding of the terms and concepts,
      * take a look at that following table/"file":
      *
      *  ------------------------------------------------------
      * | STUDENT ID | NAME | MARKS | TOTAL MARKS | PERCENTAGE |
      *  ------------------------------------------------------
      * | 100        | TIM  | 50    | 100         | 50         |
      *  ------------------------------------------------------
      * | 101        | JOE  | 75    | 100         | 75         |
      *  ------------------------------------------------------
      * | 101        | ZOE  | 55    | 100         | 55         |
      *  ------------------------------------------------------
      *
      * Then, the following File Structure could be declared in 
      * the FILE SECTION:
      * 
      * 01 STUDENT-MARKSHEET.
      *    05 STUDENT-ID  PIC 9(3).
      *    05 NAME        PIC 9(3).
      *    05 MARKS       PIC 9(2).
      *    05 TOTAL-MARKS PIC 9(3).
      *    05 PERCENTAGE  PIC 9(3).
      *
      * Using the information above, the follwing will be covered:
      *    - Field
      *    - Record
      *    - Physical Record
      *    - Logical Record
      *    - File
      * 
      * Field:
      *
      * Field is used to indicate the data stored about an element. It 
      * represents a single element as shown in the above example such 
      * as student id, name, marks, total marks, and percentage. The 
      * number of characters in any field is known as field size, for 
      * example, student name can have 10 characters. Fields can have 
      * the following attributes:
      *
      * - Primary keys: are those fields that are unique to each record
      *                 and are used to identify a particular record. 
      *                 For example, in students marks file, each 
      *                 student will be having a unique student id which
      *                 forms the primary key.
      *
      * - Secondary keys: are unique or non-unique fields that are used 
      *                   to search for related data. For example, in 
      *                   students marks file, full name of student can
      *                   be used as secondary key when student id is 
      *                   not known.
      *
      * - Descriptors: are fields used to describe an entity. For 
      *                example, in students marks file, marks and 
      *                percentage fields that add meaning to the record 
      *                are known descriptors.
      *
      * Record: 
      *
      * Record is a collection of fields that is used to describe an 
      * entity. One or more fields together form a record. For example, 
      * in students marks file, student id, name, marks, total marks, 
      * and percentage form one record. The cumulative size of all the 
      * fields in a record is known as the record size. The records 
      * present in a file may be of fixed length or variable length.
      *
      * Physical Record:
      *
      * Physical record is the information that exists on the external 
      * device. It is also known as a block.
      *
      * Logical Record:
      *
      * Logical record is the information used by the program. In COBOL 
      * programs, only one record can be handled at any point of time 
      * and it is called as logical record.
      *
      * File:
      *
      * File is a collection of related records. For example, the 
      * students marks file consists of records of all the students.
      *
       IDENTIFICATION DIVISION.
           PROGRAM-ID. FILE-HANDLING.
       
       PROCEDURE DIVISION.
           DISPLAY "FILE-HANDLING".
       STOP RUN.
       