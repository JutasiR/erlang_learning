-module(practice_functions).
-export([double/1, fac/1, mult/2, convert/2, convert_length/1]).

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
% TUPLES

convert_length({centimeter, X}) ->
  {inch, X / 2.54};

convert_length({inch, Y}) ->
  {centimeter, Y * 2.54}.

% tuples can have more than 2 parts:
% {moscow, {c, -10}} or {paris, {f, 28}}
% here is an example for a city and a second tuple as a 2nd element for temperature unit and value