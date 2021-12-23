module SightSeeing


# Dependencies
using Random


# User interface
export @code_repl
export @explain
export @code_snippet
export @ask_continue


"""
    print_animate(message::String)

Print out a message with some randomness to simulate keystrokes.
"""
function print_animate(message::String)
    for c in message
        print(c)
        sleep(Random.rand() * 0.05)
    end
    print("\n")
    return nothing
end


"""
    @explain(message::String)

Simply print an verbal explanation.
"""
macro explain(message::String)
    print_animate(message)
    return nothing
end


"""
    @explain(args::String...)

Print several lines of explanation.
"""
macro explain(args::String...)
    for a in args
        print_animate(a)
    end
    return nothing
end


"""
    @code_repl(expr::String)

Demonstrate how a certain piece of code works.
"""
macro code_repl(expr::String)
    print_animate("julia> " * expr)
    sleep(1)
    out = eval(Meta.parse(expr))
    if out != nothing
        print(out, "\n")
    else
        print("\n")
    end
    return nothing
end


"""
    @code_snippet(snippet::String)

If you want to include larger chunks of code, use this function.
"""
macro code_snippet(snippet::String)
    print("\n")
    print_animate(snippet)
    print("\n")
    eval(Meta.parse(snippet))
    return nothing
end


"""
    @ask_continue()

Prompt user to press any key to continue.
"""
macro ask_continue()
    print_animate("Press any key to continue.")
    tmp = readline();
    return nothing
end


end  # module
