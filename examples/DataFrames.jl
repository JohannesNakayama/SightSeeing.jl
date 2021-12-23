using DataFrames
include("../src/SightSeeing.jl")
using Main.SightSeeing

@explain "The DataFrames package provides convenient types and functionalities to work with tabular data."

@code_repl "using DataFrames"
@code_repl "df = DataFrame()"

@ask_continue

@explain "The previous code creates an empty dataframe."
@explain "Let's create one with some data in it."

@code_repl "df = DataFrame(a = [1, 2], b = [5, 3])"

@ask_continue

@explain "Each argument in the DataFrame initialization above is a list-like object that defines a column of the DataFrame."

@code_snippet """
    df = DataFrame(
        a = [1, 2],
        b = [2, 4],
        c = [true, false],
        d = ["halo", "lol"]
    )
"""

@ask_continue

