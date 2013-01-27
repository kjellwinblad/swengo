-module(swengo_about_controller, [Req]).
-compile(export_all).
 
index('GET', []) ->
    {ok, []}.
