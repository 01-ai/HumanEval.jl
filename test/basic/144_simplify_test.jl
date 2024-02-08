@testitem "144_simplify.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "144_simplify.jl"))

    # Check some simple cases
    @test simplify("1/5", "5/1") == true
    @test simplify("1/6", "2/1") == false
    @test simplify("5/1", "3/1") == true
    @test simplify("7/10", "10/2") == false
    @test simplify("2/10", "50/10") == true
    @test simplify("7/2", "4/2") == true
    @test simplify("11/6", "6/1") == true
    @test simplify("2/3", "5/2") == false
    @test simplify("5/2", "3/5") == false
    @test simplify("2/4", "8/4") == true


    # Check some edge cases that are easy to work out by hand.
    @test simplify("2/4", "4/2") == true
    @test simplify("1/5", "5/1") == true
    @test simplify("1/5", "1/5") == false
end