"""
    @ask_continue()

Prompt user to press any key to continue.
"""
macro ask_continue()
    return :(
        print_typewriter("Press any key to continue.\n");
        tmp = readline();
    )
end


"""
    @end_paragraph()

Print a divider to mark the end of a chapter or paragraph.
"""
macro end_paragraph()
    return :(
        print("\n\n");
    )
end


macro new_slide()
    return :(Base.run(`clear`))
end  # probably doesn't run on Windows

