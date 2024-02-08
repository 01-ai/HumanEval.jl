@testitem "085_add_even_eles_at_odd_inds.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "085_add_even_eles_at_odd_inds.jl"))

    # Check some simple cases
    @test add_even_eles_at_odd_inds([4, 88]) == 4
    @test add_even_eles_at_odd_inds([4, 5, 6, 7, 2, 122]) == 12
    @test add_even_eles_at_odd_inds([4, 0, 6, 7]) == 10
    @test add_even_eles_at_odd_inds([4, 4, 6, 8]) == 10
end