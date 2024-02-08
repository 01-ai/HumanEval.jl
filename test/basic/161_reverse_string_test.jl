@testitem "161_reverse_string.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "161_reverse_string.jl"))

    # Check some simple cases
    @test reverse_string("AsDf") == "aSdF"
    @test reverse_string("1234") == "4321"
    @test reverse_string("ab") == "AB"
    @test reverse_string("#a@C") == "#A@c"
    @test reverse_string("#AsdfW^45") == "#aSDFw^45"
    @test reverse_string("#6@2") == "2@6#"

    # Check some edge cases that are easy to work out by hand.
    @test reverse_string("#\$a^D") == "#\$A^d"
    @test reverse_string("#ccc") == "#CCC"
end