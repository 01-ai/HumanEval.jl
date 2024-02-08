@testitem "066_digitSum.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "066_digitSum.jl"))

    # Check some simple cases
    @test digitSum("") == 0
    @test digitSum("abAB") == 131
    @test digitSum("abcCd") == 67
    @test digitSum("helloE") == 69
    @test digitSum("woArBld") == 131
    @test digitSum("aAaaaXa") == 153

    # Check some edge cases that are easy to work out by hand.
    @test digitSum(" How are yOu?") == 151
    @test digitSum("You arE Very Smart") == 327
end