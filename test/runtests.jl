using Test
using SightSeeing

ex_01 = quote
    @new_slide
    @explain "This is a generic explanation text."
    @item_list "a" "b" "c"
    @ask_continue
end

ex_02 = quote
    @new_slide
    @explain "This is an example of a REPL code demo."
    @code_repl :(1 + 1)
    @ask_continue
end

# ex_03 = quote
#     @new_slide
#     @code_snippet begin
#         a = "halo "
#         b = "i bims"
#         print(a * b)
#     end
# end

slide_01 = Slide(ex_01)
slide_02 = Slide(ex_02)
# slide_03 = Slide(ex_03)
deck = SlideDeck([
    slide_01,
    slide_02,
    # slide_03
])

@test slide_01.content == ex_01
@test deck.slides[1] == slide_01

play(deck)
