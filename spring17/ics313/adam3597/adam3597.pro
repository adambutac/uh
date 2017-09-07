% -*- mode: Prolog;   -*-
% Source Dr. Reed (prolog/color.pro)
% Adam Butac, April 21, 2017
% ICS 313, Assignment # 7
% File: adam3597.pro

ball(X, Y) :-
  X \= Y.

ball(X, Y, Z) :-
  (ball(X, Y), ball(Y, Z));
  ((X==black, Y==black) -> Z\=black);
  ((Y==black, Z==black) -> X\=black).

ball(V, W, X, Y, Z) :-
  ball(V, W, X), ball(X, Y, Z).

ball(U, V, W, X, Y, Z) :-
  ball(U, V, W), ball(V, W, X), ball(W, X, Y), ball(X, Y, Z).

ball(S, T, U, V, W, X, Y, Z) :-
  % position two and three not green
  (T\=green), (U\=green),
  % pos 4 & 8 are the same
  (V==Z),
  % pos 1 & 7 are not the same
  (S\=Y),
  % green to the left of red
  (S\=red),
  (T==red -> S==green; T\==red),
  (U==red -> T==green; U\==red),
  (V==red -> U==green; V\==red),
  (W==red -> V==green; W\==red),
  (X==red -> W==green; X\==red),
  (Y==red -> X==green; Y\==red),
  (Z==red -> Y==green; Z\==red),
  % neither first nor last are white
  (S\=white), (Z\=white),
  % pos 6 & 7 not red
  (X\=red), (y\=red).

solution_1 :-
  permutation([green, green, blue, blue, yellow], [A, B, C, D, E]),
  ball(A, B, C, D, E),
  print([A, B, C, D, E]).

solution_2 :-
  permutation([black, black, black, black, red, blue], [A, B, C, D, E, F]),
  ball(A, B, C, D, E, F),
  print([A, B, C, D, E, F]).

solution_3 :-
  permutation(
    [black, white, white, red, red, green, green, green],
    [A, B, C, D, E, F, G, H]),
  ball(A, B, C, D, E, F, G, H),
  print([A, B, C, D, E, F, G, H]).
