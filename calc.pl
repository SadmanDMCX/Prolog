sum(0, 0) :- write("Not applicable.").
sum(_, 0) :- write("Not applicable.").
sum(X, Y) :-
    write("Add "),
    Z1 is X + Y, 
    write(Z1),
    nl,
    write("Sub "),
    Z2 is X - Y, 
    write(Z2),
    nl,
    write("Div "),
    Z3 is X / Y, 
    write(Z3),
    nl,
    write("Div Dec "),
    Z4 is X // Y, 
    write(Z4),
    nl,
    write("Mul "),
    Z5 is X * Y, 
    write(Z5),
    nl,
    write("Pow "),
    Z6 is X** Y, 
    write(Z6),
    nl,
    write("Mod "),
    Z7 is mod(X, Y), 
    write(Z7).