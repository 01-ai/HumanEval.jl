@testitem "067_fruit_distribution.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "067_fruit_distribution.jl"))

    # Check some simple cases
    @test fruit_distribution("5 apples and 6 oranges",19) == 8
    @test fruit_distribution("5 apples and 6 oranges",21) == 10
    @test fruit_distribution("0 apples and 1 oranges",3) == 2
    @test fruit_distribution("1 apples and 0 oranges",3) == 2
    @test fruit_distribution("2 apples and 3 oranges",100) == 95
    @test fruit_distribution("2 apples and 3 oranges",5) == 0
    @test fruit_distribution("1 apples and 100 oranges",120) == 19
end