/*
factorial(N, F) :-
    N > 0,
    compute N-1,
    compute factorial of that,
    multiply result by N.
*/

factorial(0, 1).

factorial(N, F) :-
    N > 0,
    N1 is N - 1,
    factorial(N1, F1),
    F is N * F1.

