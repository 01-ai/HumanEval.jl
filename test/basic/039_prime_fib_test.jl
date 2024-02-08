@testitem "039_prime_fib.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "039_prime_fib.jl"))

    @test prime_fib(1) == 2
    @test prime_fib(2) == 3
    @test prime_fib(3) == 5
    @test prime_fib(4) == 13
    @test prime_fib(5) == 89
    @test prime_fib(6) == 233
    @test prime_fib(7) == 1597
    @test prime_fib(8) == 28657
    @test prime_fib(9) == 514229
    @test prime_fib(10) == 433494437
end