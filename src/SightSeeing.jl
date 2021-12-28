module SightSeeing


# Dependencies
using Random


# User interface
export @code_repl
export @explain
export @code_snippet
export @ask_continue
export @end_paragraph
export @new_slide


"""
    print_animate(message::String)

Print out a message with some randomness to simulate keystrokes.
"""
function print_typewriter(message::String)
    for c in message
        print(c)
        sleep(Random.rand() * 0.05)  # TODO: expose `speed` argument to user interface
    end
    return nothing
end


"""
    @explain(message::String)

Simply print an verbal explanation.
"""
macro explain(message::String)
    print_typewriter(message)
    print("\n")
    return nothing
end


"""
    @explain(args::String...)

Print several lines of explanation.
"""
macro explain(args::String...)
    for a in args
        print_typewriter(a)
    end
    print("\n")
    return nothing
end


"""
    @code_repl(expr::String)

Demonstrate how a certain piece of code works.
"""
macro code_repl(expr::String)
    print_typewriter("julia> " * expr)
    print("\n")
    sleep(1)
    out = eval(Meta.parse(expr))
    if out != nothing
        print(out, "\n")
    else
        print("\n")
    end
    print("\n")
    return nothing
end


"""
    @code_snippet(snippet::String)

If you want to include larger chunks of code, use this function.
"""
macro code_snippet(snippet::String)
    print_typewriter(snippet)
    print("\n")
    sleep(1)
    out = eval(Meta.parse(snippet))
    print(out, "\n")
    return nothing
end


"""
    @ask_continue()

Prompt user to press any key to continue.
"""
macro ask_continue()
    print_typewriter("Press any key to continue.\n")
    tmp = readline();
    return nothing
end


"""
    @ end_paragraph()

Print a divider to mark the end of a chapter or paragraph.
"""
macro end_paragraph()
    print("\n\n")
    return nothing
end


macro new_slide()
    Base.run(`clear`)
end  # probably doesn't run on Windows


end  # module
