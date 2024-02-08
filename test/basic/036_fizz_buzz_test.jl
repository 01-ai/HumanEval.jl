@testitem "036_fizz_buzz.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "036_fizz_buzz.jl"))

    @test fizz_buzz(50) == 0
    @test fizz_buzz(78) == 2
    @test fizz_buzz(79) == 3
    @test fizz_buzz(100) == 3
    @test fizz_buzz(200) == 6
    @test fizz_buzz(4000) == 192
    @test fizz_buzz(10000) == 639
    @test fizz_buzz(100000) == 8026
end