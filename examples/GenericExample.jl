include("../src/SightSeeing.jl")
using Main.SightSeeing

begin
    @new_slide
    @explain "This is a generic explanation text."
    @code_snippet :(
        # This is some example code for a code snippet
        b = 24;
        function greet(x)
            print(x)
        end;
    )
    @ask_continue
end

begin
    @new_slide
    @explain "Some more generic explanation."
    @item_list "This" "is" "an" "item" "list"
    @ask_continue
end

begin
    @new_slide
    @explain "Some generic introductory remarks."
    @code_repl "arr = [1, 2, 3, 4, 5, 6] .* 5"
    @ask_continue
end
