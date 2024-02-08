@testitem "019_sort_numbers.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "019_sort_numbers.jl"))

    @test sort_numbers("") == ""
    @test sort_numbers("three") == "three"
    @test sort_numbers("three five nine") == "three five nine"
    @test sort_numbers("five zero four seven nine eight") == "zero four five seven eight nine"
    @test sort_numbers("six five four three two one zero") == "zero one two three four five six"
end