parent(alice, bob).
parent(bob, carol).

grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).