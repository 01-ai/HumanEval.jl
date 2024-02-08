@testitem "055_fib.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "055_fib.jl"))

    @test fib(1) == 1
    @test fib(2) == 1
    @test fib(3) == 2
    @test fib(4) == 3
    @test fib(5) == 5
    @test fib(6) == 8
    @test fib(7) == 13
    @test fib(8) == 21
    @test fib(9) == 34
    @test fib(10) == 55
    @test fib(11) == 89
    @test fib(12) == 144
    @test fib(13) == 233
    @test fib(14) == 377
    @test fib(15) == 610
    @test fib(16) == 987
    @test fib(17) == 1597
    @test fib(18) == 2584
    @test fib(19) == 4181
    @test fib(20) == 6765
    @test fib(21) == 10946
    @test fib(22) == 17711
    @test fib(23) == 28657
    @test fib(24) == 46368
    @test fib(25) == 75025
    @test fib(26) == 121393
    @test fib(27) == 196418
    @test fib(28) == 317811
    @test fib(29) == 514229
    @test fib(30) == 832040
    @test fib(31) == 1346269
    @test fib(32) == 2178309
end