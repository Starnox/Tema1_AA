01.

start   #   H   accept
        *   R   goEnd

goEnd   #   L   S1
        *   R   goEnd

S1  0   P1,L    S2
    1   P0,L    carry

S2  0   P1,H    accept
    1   P0,L    carry_simplu
    #   P1,H    accept

carry_simplu    #   P1,H    accept
                0   P1,H    accept
                1   P0,L    carry_simplu

carry   1   P1,L    carry_simplu
        0   P0,L    carry_simplu
        *   P1,L    accept    
