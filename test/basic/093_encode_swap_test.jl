@testitem "093_encode_swap.jl" tags = [:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "093_encode_swap.jl"))

    # Check some simple cases
    @test encode_swap("TEST") == "tgst"
    @test encode_swap("Mudasir") == "mWDCSKR"
    @test encode_swap("YES") == "ygs"
    
    # Check some edge cases that are easy to work out by hand.
    @test encode_swap("This is a message") == "tHKS KS C MGSSCGG"
    @test encode_swap("I DoNt KnOw WhAt tO WrItE") == "k dQnT kNqW wHcT Tq wRkTg"
end