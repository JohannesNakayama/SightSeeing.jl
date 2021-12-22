module SightSeeing

using Random

export @demonstrate
export @explain
export @write_code
export @ask_continue


function print_animate(message::String)
    for c in message
        print(c)
        sleep(Random.rand() * 0.1)
    end
    print("\n")
end


macro demonstrate(expr::String)
    print_animate("julia> " * expr)
    sleep(1)
    out = eval(Meta.parse(expr))
    if out != nothing
        print(out, "\n")
    else
        print("\n")
    end
end

macro explain(message::String)
    print_animate(message)
end

macro explain(args::String...)
    for a in args
        print_animate(a)
    end
end

macro write_code(code_snippet::String)
    print("\n")
    print_animate(code_snippet)
    print("\n")
    eval(Meta.parse(code_snippet))
end

macro ask_continue()
    print_animate("Press any key to continue.")
    tmp = readline();
    return nothing
end



end  # module
