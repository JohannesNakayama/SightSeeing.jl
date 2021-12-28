module SightSeeing

# Dependencies
using Random

# User interface
export @explain
export @item_list
export @code_repl
export @code_snippet
export @ask_continue
export @end_paragraph
export @new_slide

# Other scripts
include("utilities.jl")
include("explanation.jl")
include("code_demo.jl")
include("dividers.jl")

end  # module
