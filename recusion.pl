code(10) :- nl, write("End").
code(X) :- 
    write(X), nl,
    F is X + 1,
    code(F).