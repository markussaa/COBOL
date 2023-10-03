      * The source of COBOL must be written in a format acceptable to
      * the compilers. Program are written on COBOL coding sheets.
      * There are 80 characters positions on ech line of a coding sheet.
      * 
      * Position |      Field     | Description
      * ----------------------------------------------------------------
      *    1-6   | Column Numbers | Reserved for line numbers
      * ----------------------------------------------------------------
      *     7    |    Indicator   | * indicating comment
      *                             - indicating continuation
      *                             / indicating form feed
      * ----------------------------------------------------------------
      *          |                | All DIVISIONS, SECTIONS, PARAGRAPHS
      *    8-11  |     Area A     | and some special entries must 
      *          |                | begin in Area A
      * ----------------------------------------------------------------
      *   12-72  |     Area B     | All statements must begin in area B
      * ----------------------------------------------------------------
      *   73-80  | Identification | It can be used as needed
      *          |     Area       |
      * ----------------------------------------------------------------
      *
000023 IDENTIFICATION DIVISION.
000024     PROGRAM-ID. CHARACTERS.
000025
000026 PROCEDURE DIVISION.
000027* POSTITION 1-6 ARE COLUMN NUMBERS
000028* <- THE COMMENT STARTS HERE AT POSITION 7
000029*8-11 <- AREA A
000030*    AREA B (12-72):
000031*    -------------------------------------------------------------
000032*                                    IDENTIFICATION AREA: 73-80 ->-------
000033     DISPLAY "SEE THE ABOVE LINES TO SEE THE SECTIONS".
000034 STOP RUN.
000035       