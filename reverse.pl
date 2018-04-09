%Input = list_show([1,2,3,4,5])

list_show(X) :- 
    reverse(X, Y),
    write(Y).
