"""
    @code_repl(expr::String)

Demonstrate how a certain piece of code works.
"""
macro code_repl(expr::String)
    out = @eval Meta.parse($expr)
    return :(
        print_typewriter("julia> " * $expr);
        print("\n");
        sleep(1);
        print(eval($out));
        print("\n");
    )
end


"""
    @code_repl(expr::Expr)

Demonstrate how a certain piece of code works.
"""
macro code_repl(expr::Expr)
    expr_as_string = repr(expr)
    out = @eval expr;
    if out != nothing
        out_add = "\n"
    else
        out = ""
        out_add = ""
    end
    return :(
        print_typewriter("julia> " * $expr_as_string);
        print("\n");
        sleep(1);
        print($out);
        print($out_add);
        print("\n");
    )
end

"""
    @code_snippet(snippet::String)

If you want to include larger chunks of code, use this function.
"""
macro code_snippet(snippet::String)
    out = eval(Meta.parse(snippet))
    return :(
        print_typewriter($snippet);
        print("\n");
        sleep(1);
        print($out, "\n");
    )
end


"""
    @code_snippet(snippet::Expr)

If you want to include larger chunks of code, use this function.
"""
macro code_snippet(snippet::Expr)
    out = eval(snippet)
    return :(
        print_typewriter($snippet);
        print("\n");
        sleep(1);
        print($out, "\n");
    )
end
