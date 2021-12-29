"""
    print_animate(message::String)

Print out a message with some randomness to simulate keystrokes.
"""
function print_typewriter(message::Union{String, Expr})
    if typeof(message) == Expr
        message = string(message)
    end
    for c in message
        print(c)
        sleep(Random.rand() * 0.05)  # TODO: expose `speed` argument to user interface
    end
end
