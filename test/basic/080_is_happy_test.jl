@testitem "080_is_happy.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "080_is_happy.jl"))

    # Check some simple cases
    @test is_happy("a") == false
    @test is_happy("aa") == false
    @test is_happy("abcd") == true
    @test is_happy("aabb") == false
    @test is_happy("adb") == true
    @test is_happy("xyy") == false
    @test is_happy("iopaxpoi") == true
    @test is_happy("iopaxioi") == false
end