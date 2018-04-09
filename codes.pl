loves(romeo, juliet).
loves(juliet, romeo) :- loves(romeo, juliet).

male(sam).
male(cam).
male(ram).
male(dan).
male(lan).
male(san).

female(cook).
female(book).
female(moon).
female(soon).

happy(albart).
happy(alice).
happy(bob).
happy(bill).
with_albart(alice).
near_water(bill).

runs(albart) :-
   happy(albart).

dances(alice) :-
    with_albart(alice),
    happy(alice).

does_alice_dance :- 
    dances(alice),
    write('Alice is dance when she\'s with Albart').

swims(bob) :-
    happy(bob) ;
    near_water(bob).

swims(bill) :-
    happy(bill).

swims(bill) :-
    near_water(bill).


happy(albart).
happy(alice).
happy(bob).
happy(bill).
with_albart(alice).
near_water(bill).

dances(alice) :-
    with_albart(alice),
    happy(alice).


male(albart).
male(bob).
male(bill).
male(charlie).
male(carl).
male(dan).
male(edward).

female(alice).
female(besty).
female(diana).

parent(albart, bob).
parent(albart, besty).
parent(albart, bill).

parent(alice, bob).
parent(alice, besty).
parent(alice, bill).

parent(bob, charlie).
parent(bob, carl).


get_grand_child(G) :- 
    parent(G, X),
    parent(X, Y),
    write(G),
    write(" grandchild is "),
    write(Y), nl.

get_grand_parent(C) :-
    parent(Y, C),
    parent(X, Y),
    write(C),
    write(' grand parent is '),
    write(X), nl.

get_grandparent :-
    parent(X, carl),
    parent(X, charlie),
    format('~w ~s grandparent ~n', [X, "is the"]).

brothers(bob, bill).

blushes(X) :- human(X).
human(sadman).

stabs(tybelt, marcutio, sword).
hates(romeo, X) :- stabs(X, marcutio, sword).

what_grade(5) :- 
    write("Go to grade kindergarden").

what_grade(6) :- 
    write("Go to grade 1st Grade").

what_grade(Other) :- 
    Grade is Other - 5,
    format("Go to grade ~w", [Grade]).


has(albart, olive).

owns(albart, pet(cat, olive)).


customer(tom, smith, 20.15).
customer(sally, smith, 120.55).

get_cast_name(FName, LName) :- 
    customer(FName, LName, Bal),
    write(FName), tab(5), 
    format("~w owns us $~2f ~n", [LName, Bal]).

vertical(line(point(X, Y1), point(X, Y2))).
horizontal(line(point(X1, Y), point(X2, Y))).

warm_blooded(penguin).
warm_blooded(human).

produce_milk(penguin).
produce_milk(human).

have_feathers(penguin).
have_hair(human).

mammal(X) :-
    warm_blooded(X),
    produce_milk(X),
    have_hair(X).

    

parent(albart, bob).
parent(albart, besty).
parent(albart, bill).

parent(alice, bob).
parent(alice, besty).
parent(alice, bill).

parent(bob, charlie).
parent(bob, carl).

related(X, Y) :- 
    parent(X, Y).

related(X, Y) :-
    parent(X, Z),
    related(Z, Y), 
    format("~w, relate ~s ~n", [X, Y]).

min(1).

min(X) :-
    X > 0,
    F is X - 1,
    write(F), tab(2),
    min(F).

max(10).
max(X) :-
    F is X + 1,
    write(F), tab(2),
    max(F).

dd(X, Y) :-
    Y is X*2.

is_even(X) :-
    Y is X//2, 
    X =:= 2*Y.


count(10) :- write(10), nl. 

count(X) :- 
    write(X), nl,
    Z is X + 1, 
    count(Z).

count_down(L, H) :-
    between(L, H, Y),
    Z is (H-Y), 
    write(Z), nl.

count_up(L, H) :-
    between(L, H, Y),
    Z is (L+Y), 
    write(Z), nl.


guess_num :- loop(start).

loop(15) :- write("You guess the magic number.").
loop(X) :- 
    X \= 15,
    write("Guess number: "),
    read(G),
    write(G), write(" not the number."), nl,
    loop(G).