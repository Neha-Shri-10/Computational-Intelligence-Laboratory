% ============CALCULATOR=============

% Addition
calc(add, X, Y, R) :-
    R is X + Y.

% Subtraction
calc(subtract, X, Y, R) :-
    R is X - Y.

% Multiplication
calc(multiply, X, Y, R) :-
    R is X * Y.

% Division
calc(divide, X, Y, R) :-
    Y \= 0,
    R is X / Y.

% Modulus
calc(modulus, X, Y, R) :-
    R is X mod Y.

% Power
calc(power, X, Y, R) :-
    R is X ** Y.

% Average
calc(average, X, Y, R) :-
    R is (X + Y) / 2.
