@testitem "053_add.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "053_add.jl"))

    @test add(0, 1) == 1
    @test add(1, 0) == 1
    @test add(2, 3) == 5
    @test add(5, 7) == 12
    @test add(7, 5) == 12

    for i in 1:100
        x, y = rand(0:1000), rand(0:1000)
        @test add(x, y) == x + y
    end
end