parent(alice, bob). % Alice is the parent of Bob
parent(bob, carol). % Bob is the parent of Carol

/*
X is a grandparent of Y if
X is a parent of Z
and Z is a parent of Y
*/

grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).