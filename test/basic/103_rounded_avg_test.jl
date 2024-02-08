@testitem "103_rounded_avg.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "103_rounded_avg.jl"))

    # Check some simple cases
    @test rounded_avg(1, 5) == "11"
    @test rounded_avg(7, 13) == "1010"
    @test rounded_avg(964,977) == "1111001010"
    @test rounded_avg(996,997) == "1111100100"
    @test rounded_avg(560,851) == "1011000010"
    @test rounded_avg(185,546) == "101101110"
    @test rounded_avg(362,496) == "110101101"
    @test rounded_avg(350,902) == "1001110010"
    @test rounded_avg(197,233) == "11010111"


    # Check some edge cases that are easy to work out by hand.
    @test rounded_avg(7, 5) == -1
    @test rounded_avg(5, 1) == -1
    @test rounded_avg(5, 5) == "101"
end