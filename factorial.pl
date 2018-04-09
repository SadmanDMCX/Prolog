fact(0, R, R).
fact(V, N, R) :- 
    V > 0,
    Z is V * N,
    X is V - 1,
    fact(X, Z, R).
