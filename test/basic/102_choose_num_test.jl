@testitem "102_choose_num.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "102_choose_num.jl"))

    # Check some simple cases
    @test choose_num(12, 15) == 14
    @test choose_num(13, 12) == -1
    @test choose_num(33, 12354) == 12354
    @test choose_num(5234, 5233) == -1
    @test choose_num(6, 29) == 28
    @test choose_num(27, 10) == -1

    # Check some edge cases that are easy to work out by hand.
    @test choose_num(7, 7) == -1
    @test choose_num(546, 546) == 546
end