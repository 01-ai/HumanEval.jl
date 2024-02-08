@testitem "076_is_simple_power.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "076_is_simple_power.jl"))

    # Check some simple cases
    @test is_simple_power(16, 2)== true
    @test is_simple_power(143214, 16)== false
    @test is_simple_power(4, 2)==true
    @test is_simple_power(9, 3)==true
    @test is_simple_power(16, 4)==true
    @test is_simple_power(24, 2)==false
    @test is_simple_power(128, 4)==false
    @test is_simple_power(12, 6)==false

    # Check some edge cases that are easy to work out by hand.
    @test is_simple_power(1, 1)==true
    @test is_simple_power(1, 12)==true
end