module SightSeeing

# Dependencies
using Random

# User interface
export Slide
export SlideDeck
export play

export @explain
export @item_list
export @code_repl
export @code_snippet  # TODO: doesn't work yet
export @ask_continue
export @new_slide

# Other scripts
include("types.jl")
include("utilities.jl")
include("explanation.jl")
include("code_demo.jl")
include("dividers.jl")

end  # module
