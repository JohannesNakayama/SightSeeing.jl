"""
    @explain(message::String)

Simply print an verbal explanation.
"""
macro explain(message::String)
    return :(
        print_typewriter($message);
        print("\n\n");
    )
end


"""
    @explain(args::String...)

Print several lines of explanation.
"""
macro explain(args::String...)
    return :(
        for a in args
            print_typewriter(a)
        end;
        print("\n\n")
    )
end


macro item_list(arr::String...)
    return :(
        for item in $arr
            print("  • ")
            print_typewriter(item)
            print("\n")
        end;
    )
end
