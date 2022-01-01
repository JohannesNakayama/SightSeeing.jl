"""
    @code_repl(expr::String)

Demonstrate how a certain piece of code works.
"""
macro code_repl(expr::String)
    out = @eval Meta.parse($expr)
    return :(
        print_typewriter("julia> " * $expr);
        println();
        sleep(1);
        show($out);
        println("\n");
    )
end


"""
    @code_snippet(snippet::String)

If you want to include larger chunks of code, use this function.
"""
macro code_snippet(snippet::String)
    out = @eval Meta.parse($snippet)
    return :(
        print_typewriter($snippet);
        println();
        sleep(1);
        show($out);
        println("\n");
    )
end


# TODO: dispatch for Expr objects
