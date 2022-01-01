using Test

include("../src/SightSeeing.jl")
using Main.SightSeeing

println("TEST 1")
@explain "halo I bims"

println("TEST 2")
@explain "halo" "I" "bims"


println("TEST 3")
@code_repl "for i in 1:5 print(i*5, \"\\n\") end"


println("TEST 4")
@code_repl for i in 1:5 print(i*5, "\n") end


