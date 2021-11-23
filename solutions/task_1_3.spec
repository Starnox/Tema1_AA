0 1 #
start
accept
start # accept # H
start 0 q0 0 R
start 1 q0 1 R
q0 # q1 # L
q0 0 q0 0 R
q0 1 q0 1 R
q1 0 q2 1 L
q1 1 q3 0 L
q1 # q1 # H
q2 0 accept 1 H
q2 1 q4 0 L
q2 # accept 1 H
q4 # accept 1 H
q4 0 accept 1 H
q4 1 q4 0 L
q3 1 q4 1 L
q3 0 q4 0 L
q3 # accept 1 L
