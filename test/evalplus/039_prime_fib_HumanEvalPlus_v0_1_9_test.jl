@testitem "039_prime_fib_HumanEvalPlus_v0_1_9_test.jl" tags=[:HumanEvalPlus_v0_1_9] begin
    include(joinpath(ENV["GENERATION_DIR"], "039_prime_fib.jl"))
    @test prime_fib(11) == 2971215073
    @test prime_fib(12) == 99194853094755497
end
