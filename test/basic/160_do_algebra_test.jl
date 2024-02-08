@testitem "160_do_algebra.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "160_do_algebra.jl"))

    # Check some simple cases
    @test do_algebra(["^", "*", "+"], [2, 3, 4, 5]) == 37
    @test do_algebra(["+", "*", "-"], [2, 3, 4, 5]) == 9
    @test do_algebra(["÷", "*"], [7, 3, 4]) == 8
end