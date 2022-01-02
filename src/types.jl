mutable struct Slide
    content::Expr
end


mutable struct SlideDeck
    slides::Array{Slide}
    function SlideDeck(slides)
        new(slides)
    end
end


SlideDeck() = new(Slide[])


function play(slide::Slide)
    eval(slide.content)
    return
end


function play(deck::SlideDeck)
    for slide in deck.slides
        play(slide)
    end
    return
end
