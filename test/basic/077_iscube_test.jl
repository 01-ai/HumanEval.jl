@testitem "077_iscube.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "077_iscube.jl"))

    # Check some simple cases
    @test iscube(1) == true
    @test iscube(2) == false
    @test iscube(-1) == true
    @test iscube(64) == true
    @test iscube(180) == false
    @test iscube(1000) == true


    # Check some edge cases that are easy to work out by hand.
    @test iscube(0) == true
    @test iscube(1729) == false
end