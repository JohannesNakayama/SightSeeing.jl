"""
    @explain args...

Print several lines of explanation.
"""
macro explain(args...)
    return quote
        for a in $args
            @typewriter a
            println()
        end
        println()
    end
end


"""
    @item_list args...

Create a list of items for an explanation.
"""
macro item_list(items...)
    return quote
        for item in $items
            print("  • ")
            @typewriter item
            println()
        end
        println()
    end
end
