-module(egithub_meta_SUITE).

-include_lib("mixer/include/mixer.hrl").
-mixin([{ ktn_meta_SUITE
        , [ all/0
          , xref/1
          %% , dialyzer/1
          %% , elvis/1
          ]
        }]).

-export([init_per_suite/1, dialyzer/1, elvis/1]).

-type config() :: [{atom(), term()}].

-spec init_per_suite(config()) -> config().
init_per_suite(Config) ->
  [ {application, egithub}
  %% , {base_dir, "../.."}
  | Config
  ].

-spec dialyzer(config()) -> ok.
dialyzer(_Config) -> ok.

-spec elvis(config()) -> ok.
elvis(_Config) -> ok.
