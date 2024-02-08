@testitem "075_is_multiply_prime.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "075_is_multiply_prime.jl"))

    @test is_multiply_prime(5) == false
    @test is_multiply_prime(30) == true
    @test is_multiply_prime(8) == true
    @test is_multiply_prime(10) == false
    @test is_multiply_prime(125) == true
    @test is_multiply_prime(3 * 5 * 7) == true
    @test is_multiply_prime(3 * 6 * 7) == false
    @test is_multiply_prime(9 * 9 * 9) == false
    @test is_multiply_prime(11 * 9 * 9) == false
    @test is_multiply_prime(11 * 13 * 7) == true
end