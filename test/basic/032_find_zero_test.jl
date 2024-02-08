@testitem "032_find_zero.jl" tags=[:HumanEval] retries=3 begin

    include(joinpath(ENV["GENERATION_DIR"], "032_find_zero.jl"))

    using Random
    rng = Random.MersenneTwister(7)
    for _ in 1:100
        ncoeff = 2 * rand(rng, 1:3)
        coeffs = Int[]
        for _ in 1:ncoeff
            coeff = rand(rng, -10:10)
            if coeff == 0
                coeff = 1
            end
            push!(coeffs, coeff)
        end
        solution = find_zero(coeffs)
        @test abs(poly(coeffs, solution)) < 1e-4
    end
end