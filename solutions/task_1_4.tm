01X.

start                   #   H       accept
                        *   H       init

// plec de pe #
init                    1   L       init
                        0   L       init
                        #   PX,L    start_loop

start_loop              *   H       verificare_primul_grup

// ma duc la inceputul benzii si apelez S
rewind_#(S)             #   R       S
                        *   L       rewind_#(S)

// ma duc la primul X din stanga si apelez S
// daca dau de # sunt la primul grup
rewind_X(S)             X   R       S
                        #   R       verificare_primul_grup
                        *   L       rewind_X(S)

// plec de pe #
verificare_primul_grup  #   R       verificare_primul_grup
                        X   R       verificare_grup // am #X....
                        *   H       grup1_verificare_5

grup1_bit1              *   R       grup1_bit2

grup1_bit2              X   R       verificare_grup
                        *   R       grup1_bit3

grup1_bit3              X   R       verificare_grup
                        *   R       bit4(S)

grup1_bit4              X   R       verficarea_grup
                        *   R       adauga_x_inceput

// adauga x la inceput si treci la urmatorul grup si fa verificareea
adauga_x_inceput        #   PX,R    go_to_next_x(verificare_grup)
                        *   L       adauga_x_inceput

go_to_next_x(S)         X   R       S
                        *   R       go_to_next_x(S)       

// parcurg fiecare grupulet de 4 biti si sa verific daca sunt mai mari ca 5
// folosesc rutine de la exercitiul 1.2

// probabil trebuie facut o stare speciala pentru primul grup in caz
// ca trebuie sa verificam daca mai apare un bit dupa shiftare caz in care
// mai trebuie pus in x la inceput

verificare_grup         #   L       rewind_#(shift) // daca ajung la final ma duc la inceput sa fac shiftul
                        X   L       rewind_X(verificare_5)
                        *   R       verificare_grup

// daca se mai adauga un bit trebuie sa fac din nou 
grup1_verificare_5      #   R       grup1_verificare_5

verificare_5            1   R       S1
                        0   R       S1

// in timp ce fac verficarea de 5 adaug 3 la gruparile aflate intre un # si un X
// sau intre doua X-uri

adunare_3

// la final o sa am functii care elimina x-urile si fac padding
// fir de executie
// start -> init (pune X la inceputul sirului) -> start_loop (face rewind la inceput
si da drumul la functia care verifica grupuri situate intre X) -> rewind_#(verificare_primul_grup)
-> se verifica daca primul grup are mai mult de 4 biti pentru a se adauga x
-> se verifica daca primul grup e mai mare decat 5, se actualizeza in caz pozitiv dupa care 
    daca primul grup are mai mult de 4 biti se adauga inca un X la inceput sirului, 
    se duce acul la urmatorul x cu starea "go_to_next_x" dupa care se incepe verificarea
    celorlate grupuri cu "verificare_grup"
-> se verifica celalalte grupuri cu "verificare_grup" daca nu este ultimul grup 
    atunci se verifica grupul cu "verificare_5"
-> daca grupul este mai mare ca 5 se aduna 3 cu "adunare_3" si se duce 
    cursorul la urmatorul grup cu "go_to_next_x" care dupa cheama "verificare_grup"
-> cand verificare_grup gaseste ultimul grup (da de # la final) se reintoarce
la # cu "rewind_#(shift)" -> dupa ce cursorul ajunge la # se apeleaza shift care 
transporta fiecare X la dreapta cu o pozitie -> se foloseste de "go_to_next_x"
-> daca ultimul X e langa # se da drumul la operatiile de final si anume stergerea
X-silor si paddingul pentru cifra cea mai semnificativa
-> daca nu se reia procedeul cu "rewind_#(start_loop)"    