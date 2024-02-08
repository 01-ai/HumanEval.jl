@testitem "092_any_int.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "092_any_int.jl"))

    # Check some simple cases
    @test any_int(2, 3, 1)==true
    @test any_int(2.5, 2, 3)==false
    @test any_int(1.5, 5, 3.5)==false
    @test any_int(2, 6, 2)== false
    @test any_int(4, 2, 2)==true
    @test any_int(2.2, 2.2, 2.2)==false
    @test any_int(-4, 6, 2)==true

    # Check some edge cases that are easy to work out by hand.
    @test any_int(2,1,1)==true
    @test any_int(3,4,7)==true
    @test any_int(3.0,4,7)==false
end