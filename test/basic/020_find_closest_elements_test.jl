@testitem "020_find_closest_elements.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "020_find_closest_elements.jl"))

    @test find_closest_elements([1.0, 2.0, 3.9, 4.0, 5.0, 2.2]) == (3.9, 4.0)
    @test find_closest_elements([1.0, 2.0, 5.9, 4.0, 5.0]) == (5.0, 5.9)
    @test find_closest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.2]) == (2.0, 2.2)
    @test find_closest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.0]) == (2.0, 2.0)
    @test find_closest_elements([1.1, 2.2, 3.1, 4.1, 5.1]) == (2.2, 3.1)
end