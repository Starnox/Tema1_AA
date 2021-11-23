01Xz.

start   X      H      accept
        #      H      accept
        *      Pz,R   loop(*)
  
loop(f)     *   H    goend(f)
           
goend(f)    #      L      foundlast(f)
            X      L      foundlast(f)
            *      R      goend(f)

foundlast(f)    1   PX,H   rewind(found(1,f))
                0   PX,H   rewind(found(0,f))
                z   PX,H   rewind(lastwrite(f))

rewind(S)   #   H   S
            *   L   rewind(S)

found(c,f)    Pc,R    loop(f)

lastwrite(f)    *   Pf,H    accept   
