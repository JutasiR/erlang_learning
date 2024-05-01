-module(practice_functions).
-export([double/1, fac/1, mult/2, convert/2]).

% BASIC FUNCTIONS
% variables must start with capital letters
double(X) ->
  2 * X.

fac(1) ->
  1;

fac(N) ->
  N * fac(N - 1).

mult(X, Y) ->
  X * Y.

% ATOMS - start with small letter
% atoms are simply names, nothiing else, they have no value

convert(M, inch) ->
  M / 2.54;

convert(N, centimeter) ->
  N * 2.54.

% 'convert' does not say much about what it converts from and to