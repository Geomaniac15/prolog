edge(a, b).
edge(b, c).
edge(c, d).
edge(a, e).
edge(e, d).
edge(d, f).
/*
this line creates a cycle
which creates a recursive issue
-> edge(f, a).
*/

path(X, Y) :-
    edge(X, Y).

path(X, Y) :-
    edge(X, Z),
    path(Z, Y).

base_case(X, Y) :-
    edge