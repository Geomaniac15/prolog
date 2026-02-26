/*
X is a grandparent of Y if
X is a parent of Z
and Z is a parent of Y

grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).
    
*/

parent(alice, bob). % alice is the parent of bob
parent(alice, claire). 
parent(bob, david).
parent(claire, emma).
parent(claire, frank).
parent(david, grace).

share_parent(X, Y) :-
    parent(Z, X), % Z is a parent of X
    parent(Z, Y).

same_people(X, Y) :-
    X \= Y.

sibling(X, Y) :-
    share_parent(X, Y),
    same_people(X, Y).

cousin(X, Y) :-
    parent(PX, X),
    parent(PY, Y),
    sibling(PX, PY),
    same_people(X, Y).