@testitem "148_bf.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "148_bf.jl"))

    # Check some simple cases
    @test bf("Jupiter", "Neptune") == ("Saturn", "Uranus")
    @test bf("Earth", "Mercury") == ("Venus",)
    @test bf("Mercury", "Uranus") == ("Venus", "Earth", "Mars", "Jupiter", "Saturn")
    @test bf("Neptune", "Venus") == ("Earth", "Mars", "Jupiter", "Saturn", "Uranus")


    # Check some edge cases that are easy to work out by hand.
    @test bf("Earth", "Earth") == ()
    @test bf("Mars", "Earth") == ()
    @test bf("Jupiter", "Makemake") == ()

end