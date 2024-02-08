@testitem "133_sum_squares_round.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "133_sum_squares_round.jl"))

    # Check some simple cases
    @test sum_squares_round([1,2,3])==14
    @test sum_squares_round([1.0,2,3])==14
    @test sum_squares_round([1,3,5,7])==84
    @test sum_squares_round([1.4,4.2,0])==29
    @test sum_squares_round([-2.4,1,1])==6

    @test sum_squares_round([100,1,15,2])==10230
    @test sum_squares_round([10000,10000])==200000000
    @test sum_squares_round([-1.4,4.6,6.3])==75
    @test sum_squares_round([-1.4,17.9,18.9,19.9])==1086


    # Check some edge cases that are easy to work out by hand.
    @test sum_squares_round([0])==0
    @test sum_squares_round([-1])==1
    @test sum_squares_round([-1,1,0])==2

end