/*
X is required for Y if X is a direct prerequisite of Y.

X is required for Y if X is a prerequisite of Z
and Z is required for Y.
*/
/*
X is a grandparent of Y if
X is a parent of Z
and Z is a parent of Y

grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).
    
*/

% prereq(A, B): A must be completed before B
prereq(programming, data_structures).
prereq(data_structures, algorithms).
prereq(algorithms, machine_learning).
prereq(linear_algebra, machine_learning).
prereq(calculus, machine_learning).

required_for(X, Y) :-
    prereq(X, Y).

required_for(X, Y) :-
    prereq(Z, Y),
    required_for(X, Z).
    