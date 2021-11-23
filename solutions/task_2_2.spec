0 1 #
start
accept
start # accept # H
start 0 q0 0 R
start 1 q0 1 R
q0 # q1 # L
q0 0 q0 0 R
q0 1 q0 1 R
q1 1 q2 0 L
q1 0 q3 1 L
q1 # q1 # H
q2 1 q4 0 H
q2 0 q5 1 L
q2 # q2 # H
q5 1 q4 0 H
q5 0 q5 1 L
q5 # q5 # H
q3 1 q5 1 L
q3 0 q5 0 L
q3 # q3 # H
q6 0 q6 # R
q6 1 accept 1 H
q6 # q6 # H
q4 # q6 # R
q4 0 q4 0 L
q4 1 q4 1 L
