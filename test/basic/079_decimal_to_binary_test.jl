@testitem "079_decimal_to_binary.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "079_decimal_to_binary.jl"))

    # Check some simple cases
    @test decimal_to_binary(0) == "db0db"
    @test decimal_to_binary(32) == "db100000db"
    @test decimal_to_binary(103) == "db1100111db"
    @test decimal_to_binary(15) == "db1111db"
end