@testitem "000_has_close_elements.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "000_has_close_elements.jl"))

    @test has_close_elements([1.0, 2.0, 3.9, 4.0, 5.0, 2.2], 0.3) == true
    @test has_close_elements([1.0, 2.0, 3.9, 4.0, 5.0, 2.2], 0.05) == false
    @test has_close_elements([1.0, 2.0, 5.9, 4.0, 5.0], 0.95) == true
    @test has_close_elements([1.0, 2.0, 5.9, 4.0, 5.0], 0.8) == false
    @test has_close_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.0], 0.1) == true
    @test has_close_elements([1.1, 2.2, 3.1, 4.1, 5.1], 1.0) == true
    @test has_close_elements([1.1, 2.2, 3.1, 4.1, 5.1], 0.5) == false
end
