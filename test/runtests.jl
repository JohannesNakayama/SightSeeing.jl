using Test

include("../src/SightSeeing.jl")
using Main.SightSeeing

println("TEST 1")
@code_repl "for i in 1:5 print(i*5, \"\\n\") end"


println("TEST 2")
@code_repl :(for i in 1:5 print(i*5, "\n") end)
