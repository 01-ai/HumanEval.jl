@testitem "002_truncate_number.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "002_truncate_number.jl"))

    @test truncate_number(3.5) == 0.5
    @test abs(truncate_number(1.33) - 0.33) < 1e-6
    @test abs(truncate_number(123.456) - 0.456) < 1e-6
end
