@testitem "031_is_prime.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "031_is_prime.jl"))

    @test is_prime(6) == false
    @test is_prime(101) == true
    @test is_prime(11) == true
    @test is_prime(13441) == true
    @test is_prime(61) == true
    @test is_prime(4) == false
    @test is_prime(1) == false
    @test is_prime(5) == true
    @test is_prime(11) == true
    @test is_prime(17) == true
    @test is_prime(5 * 17) == false
    @test is_prime(11 * 7) == false
    @test is_prime(13441 * 19) == false
end