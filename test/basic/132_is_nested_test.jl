@testitem "132_is_nested.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "132_is_nested.jl"))

    # Check some simple cases
    @test is_nested("[[]]") == true
    @test is_nested("[]]]]]]][[[[[]") == false
    @test is_nested("[][]") == false
    @test is_nested(("[]")) == false
    @test is_nested("[[[[]]]]") == true
    @test is_nested("[]]]]]]]]]]") == false
    @test is_nested("[][][[]]") == true
    @test is_nested("[[]") == false
    @test is_nested("[]]") == false
    @test is_nested("[[]][[") == true
    @test is_nested("[[][]]") == true

    # Check some edge cases that are easy to work out by hand.
    @test is_nested("") == false
    @test is_nested("[[[[[[[[") == false
    @test is_nested("]]]]]]]]") == false
end