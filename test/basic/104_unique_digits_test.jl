@testitem "104_unique_digits.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "104_unique_digits.jl"))

    # Check some simple cases
    @test unique_digits([15, 33, 1422, 1]) == [1, 15, 33]
    @test unique_digits([152, 323, 1422, 10]) == []
    @test unique_digits([12345, 2033, 111, 151]) == [111, 151]
    @test unique_digits([135, 103, 31]) == [31, 135]
end