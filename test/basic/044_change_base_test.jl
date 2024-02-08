@testitem "044_change_base.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "044_change_base.jl"))

    @test change_base(8, 3) == "22"
    @test change_base(9, 3) == "100"
    @test change_base(234, 2) == "11101010"
    @test change_base(16, 2) == "10000"
    @test change_base(8, 2) == "1000"
    @test change_base(7, 2) == "111"

    for x in 2:7
        @test change_base(x, x + 1) == string(x)
    end
end