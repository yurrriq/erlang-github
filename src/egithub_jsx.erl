%% @doc Implementation jsx module for <code>egithub_json</code> behavior.
%% @hidden
-module(egithub_jsx).

-behaviour(egithub_json).

-export([
         encode/1,
         decode/1
        ]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% egithub_json callbacks
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-spec encode(map()) -> binary().
encode(Map) ->
  jsx:encode(Map).

-spec decode(binary()) -> map().
decode(Json) ->
  jsx:decode(Json, [return_maps]).
