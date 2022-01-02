"""
    @typewriter message

Print a message like it's typed.
"""
macro typewriter(message)
    if typeof(message) == Expr
        message = string(message)
    end
    return quote
        for c in $message
            print(c)
            sleep(Random.rand() * 0.05)
        end
    end
end
