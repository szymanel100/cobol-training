       identification division.
       program-id. Pillars.
       data division.
      
       linkage section.
       01  numPill pic 9(4).
       01  dist    pic 9(2).
       01  width   pic 9(2).
       01  result  pic 9(8).
      
       procedure division using numPill dist width result.
      
          initialize result
            IF numPill < 2
              MOVE 0 TO result
            ELSE
              COMPUTE result = (numPill - 1) * dist * 100
                        + (numPill - 2) * width
          goback.
       end program Pillars.
      