@testitem "062_derivative.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "062_derivative.jl"))

    @test derivative([3, 1, 2, 4, 5]) == [1, 4, 12, 20]
    @test derivative([1, 2, 3]) == [2, 6]
    @test derivative([3, 2, 1]) == [2, 2]
    @test derivative([3, 2, 1, 0, 4]) == [2, 2, 0, 16]
    @test derivative([1]) == []
end