01.

start   1   P#,R    S1
        *   P0,H    stergeBanda

S1  1   P#,R    expectSucces1
    0   P#,R    S2

expectSucces1   #   P0,H    accept
                *   P1,R    stergeBanda

S2  1   P1,R    stergeBanda
    0   P#,R       expectSucces2

expectSucces2   #   P0,R    accept
                *   P1,R    stergeBanda 

stergeBanda #   H    accept
            *   P#,R    stergeBanda
