-module(swengo_index_controller, [Req]).
-compile(export_all).
 
hello('GET', []) ->
    {output, "<strong>Swengo says hello!</strong>"}.
