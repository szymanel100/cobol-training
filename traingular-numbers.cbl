IDENTIFICATION DIVISION.
       PROGRAM-ID. SUM-TRIANGULAR-NUMBERS.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 I            PIC 9(8).
       LINKAGE SECTION.
       01 N            PIC S9(08).
       01 RESULT       PIC S9(20).
       PROCEDURE DIVISION USING N RESULT.

            SET RESULT TO 0.
      
            IF N GREATER THAN 1 THEN
              ADD 1 TO RESULT
              PERFORM VARYING I FROM 2 BY 1 UNTIL I IS GREATER THAN N
                COMPUTE RESULT = RESULT + (I * (I + 1)) / 2
              END-PERFORM
            END-IF.
      
            GOBACK.
       END PROGRAM SUM-TRIANGULAR-NUMBERS.