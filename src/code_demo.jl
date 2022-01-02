"""
    @code_repl expr

Demonstrate how a certain piece of code works.
"""
macro code_repl(expr)
    return quote
        out = "julia> " * string($expr)
        @typewriter out
        println()
        sleep(1)
        println(eval($expr))
        println()
    end
end


# TODO: refactor (not working properly)
"""
    @code_snippet snippet

If you want to include larger chunks of code, use this function.
"""
macro code_snippet(snippet)
    return quote
        @typewriter $snippet
        println()
        sleep(1)
        println("Output:")
        println(eval($snippet))
        println()
    end
end

