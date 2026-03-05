/*
factorial(N, F) :-
    N > 0,
    compute N-1,
    compute factorial of that,
    multiply result by N.
*/

n is 3.

factorial(N, F) :-
    N > 0,
    N is N - 1,
    F1 is N * F,
    F is F * N.

