"""
    @ask_continue

Prompt user to press any key to continue.
"""
macro ask_continue()
    return quote
        @typewriter "Press ENTER to continue.\n"
        tmp = readline()
    end
end


# TODO: probably doesn't run on Windows -> port
"""
    @new_slide

Start a new slide (start at top of terminal).
"""
macro new_slide()
    return quote
        Base.run(`clear`)
    end
end


