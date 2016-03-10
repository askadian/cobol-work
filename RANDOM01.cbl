      ******************************************************************
      * Author: AMRESH KADIAN.
      * Date: 03/10/2016.
      * Purpose: THIS PROGRAM CREATES A RANDOM NUMBER AND RETRUNS IT
      *          BACK TO THE CALLING MODULE.
      *          MODE:
      *                 01 - RETURN PIC 9(09)
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       PROGRAM-ID. RANDOM01.
       ENVIRONMENT DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       CONFIGURATION SECTION.
      *-----------------------
       INPUT-OUTPUT SECTION.
      *-----------------------
       DATA DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       FILE SECTION.
      *-----------------------
       WORKING-STORAGE SECTION.
      *-----------------------
       01 WS-VARIBALES.
           10 WS-TIME   PIC 999999999.
           10 WS-TIME2  PIC S9(15).
           10 CurrentTime.
               20  CurrentHour     PIC 99.
               20  CurrentMinute   PIC 99.
               20  CurrentMS       PIC 9(4).
       LINKAGE SECTION.
       01 LS-VARIABLES.
           10 LS-PARMS.
               15 LS-LENGTH   PIC S9(04) COMP.
               15 LS-DATA     PIC X.
           10 LS-RETURN-AREA.
               15 LS-RND-VAR  PIC 9(09).
       PROCEDURE DIVISION USING LS-VARIABLES.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       MAIN-PROCEDURE.
      **
      * The main procedure of the program
      **
           INITIALIZE WS-TIME
            ACCEPT CURRENTTIME FROM TIME
            MOVE CURRENTTIME TO WS-TIME
            MOVE WS-TIME TO WS-TIME2
            COMPUTE WS-TIME2 = WS-TIME2 * 1000/CurrentMS
                               + 100*CurrentMS
            MOVE WS-TIME2 TO WS-TIME
            STOP RUN.
      ** add other procedures here
       END PROGRAM RANDOM01.
