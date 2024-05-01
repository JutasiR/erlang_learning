-module(lists_and_tuples).
-export([convert_length/1]).

% TUPLES

convert_length({centimeter, X}) ->
  {inch, X / 2.54};

convert_length({inch, Y}) ->
  {centimeter, Y * 2.54}.

% tuples can have more than 2 parts:
% {moscow, {c, -10}} or {paris, {f, 28}}
% here is an example for a city and a second tuple as a 2nd element for temperature unit and value

% LISTS
