"""
    @explain(message::String)

Simply print an verbal explanation.
"""
macro explain(message::String)
    return :(
        print_typewriter($message);
        println("\n");
    )
end


"""
    @explain(args::String...)

Print several lines of explanation.
"""
macro explain(args::String...)
    return :(
        for a in $args
            print_typewriter(a)
            println()
        end;
        println("\n")
    )
end


macro item_list(arr::String...)
    return :(
        for item in $arr
            print("  • ")
            print_typewriter(item)
            println()
        end;
        println();
    )
end
