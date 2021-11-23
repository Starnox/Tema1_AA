01Xz.

start   X      H      accept
        #      H      accept
        *      R      goEnd

goEnd   #   L   init
        *   R   goEnd

init    *   Pz,H loop(*)

loop(f)     *   H    goStart(f)

goStart(f)  #   R   foundLast(f)
            X   R   foundLast(f)
            *   L   goStart(f)

foundLast(f)    1   PX,H   rewind(found(1,f))
                0   PX,H   rewind(found(0,f))
                z   PX,H   rewind(lastwrite(f))

rewind(S)   #   H   S
            *   R   rewind(S)

found(c,f)  *   Pc,L    loop(f)

lastwrite(f)    *   Pf,H    accept  
