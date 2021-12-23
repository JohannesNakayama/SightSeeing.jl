using Agents

@explain "First, you need to define an agent type."

@code_snippet """
    mutable struct ExampleAgent <: AbstractAgent
        id::Int
        pos::Int
        weight::Float64
        happy::Bool
    end
"""

@ask_continue

@explain "We now have an agent type."
@explain "Next, we will need a space where the agents will live."

@code_repl "using Graphs"
@code_repl "space = Agents.GraphSpace(Graphs.complete_graph(10))"

