01.

start   #   H   accept
        *   R   goEnd

goEnd   #   L   S1
        *   R   goEnd

S1  1   P0,L    S2
    0   P1,L    S3

S2  1   P0,H    rewind(clear_leading_zeroes)
    0   P1,L    carry_simplu

carry_simplu    1   P0,H    rewind(clear_leading_zeroes)
                0   P1,L    carry_simplu

S3  1   P1,L    carry_simplu
    0   P0,L    carry_simplu

rewind(S)   #   R   S
            *   L   rewind(S)

clear_leading_zeroes    0   P#,R    clear_leading_zeroes
                        1   H       accept
