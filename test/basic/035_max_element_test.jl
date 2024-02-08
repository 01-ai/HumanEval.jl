@testitem "035_max_element.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "035_max_element.jl"))

    @test max_element([1, 2, 3]) == 3
    @test max_element([5, 3, -5, 2, -3, 3, 9, 0, 124, 1, -10]) == 124
end