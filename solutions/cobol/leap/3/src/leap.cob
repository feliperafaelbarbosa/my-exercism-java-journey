       IDENTIFICATION DIVISION.
       PROGRAM-ID. LEAP.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-YEAR           PIC 9(4).
       01 WS-REMAINDER-4    PIC 9(2).
       01 WS-REMAINDER-400  PIC 9(3).
       01 WS-REMAINDER-100  PIC 9(3).
       01 WS-QUOTIENT       PIC 9(3).
       01 WS-RESULT         PIC 9(1).

       PROCEDURE DIVISION.
       LEAP.
         DIVIDE WS-YEAR BY 4 GIVING WS-QUOTIENT 
             REMAINDER WS-REMAINDER-4.

         DIVIDE WS-YEAR BY 100 GIVING WS-QUOTIENT
             REMAINDER WS-REMAINDER-100
    
         DIVIDE WS-YEAR BY 400 GIVING WS-QUOTIENT 
             REMAINDER WS-REMAINDER-400.
        
         IF WS-REMAINDER-4 = 0 THEN
           DISPLAY "MAYBE A LEAP YEAR"
           IF WS-REMAINDER-100 NOT = 0 THEN
             DISPLAY "IS A LEAP YEAR"
             MOVE 1 TO WS-RESULT
           ELSE
             IF WS-REMAINDER-400 = 0 THEN
               DISPLAY "LEAP YEAR"
               MOVE 1 TO WS-RESULT
             ELSE
               DISPLAY "NOT LEAP YEAR"
               MOVE 0 TO WS-RESULT
             END-IF
           END-IF
         END-IF.

         CONTINUE.
       LEAP-EXIT.
       EXIT.
