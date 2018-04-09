mem(X, [X|_]) :- write("Found "), write(X).
mem(X, [_|T]) :-
    mem(X, T).