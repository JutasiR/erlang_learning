-module(lists_and_tuples).
-export([convert_length/1, list_length/1]).

% TUPLES

convert_length({centimeter, X}) ->
  {inch, X / 2.54};

convert_length({inch, Y}) ->
  {centimeter, Y * 2.54}.

% tuples can have more than 2 parts:
% {moscow, {c, -10}} or {paris, {f, 28}}
% here is an example for a city and a second tuple as a 2nd element for temperature unit and value

% LISTS

% Tuples group things together, list hold a list of things
% Example: [{moscow, {c, -10}}, {paris, {f, 28}}]
% unpacking: [First | TheRest] = [1, 2, 3, 4, 5]. -> 'First' will be 1, 'TheRest' is [2, 3, 4, 5]
% [A, B | C] = [1, 2]. -> C will be []

list_length([]) ->
  0;
list_length([First | Rest]) ->
  1 + list_length(Rest).
