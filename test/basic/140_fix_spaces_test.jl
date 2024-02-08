@testitem "140_fix_spaces.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "140_fix_spaces.jl"))

    # Check some simple cases
    @test fix_spaces("Example") == "Example"
    @test fix_spaces("Mudasir Hanif ") == "Mudasir_Hanif_"
    @test fix_spaces("Yellow Yellow  Dirty  Fellow") == "Yellow_Yellow-Dirty-Fellow"
    
    # Check some edge cases that are easy to work out by hand.
    @test fix_spaces("Exa   mple") == "Exa-mple"
    @test fix_spaces("   Exa 1 2 2 mple") == "-Exa_1_2_2_mple"
end