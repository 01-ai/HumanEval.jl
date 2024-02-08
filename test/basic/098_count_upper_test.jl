@testitem "098_count_upper.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "098_count_upper.jl"))

    # Check some simple cases
    @test count_upper("aBCdEf")  == 1
    @test count_upper("abcdefg") == 0
    @test count_upper("dBBE") == 0
    @test count_upper("B")  == 0
    @test count_upper("U")  == 1
    @test count_upper("") == 0
    @test count_upper("EEEE") == 2
end