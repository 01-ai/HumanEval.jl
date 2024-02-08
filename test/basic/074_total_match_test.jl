@testitem "074_total_match.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "074_total_match.jl"))

    # Check some simple cases
    @test total_match(String[], String[]) == []
    @test total_match(["hi", "admin"], ["hi", "hi"]) == ["hi", "hi"]
    @test total_match(["hi", "admin"], ["hi", "hi", "admin", "project"]) == ["hi", "admin"]
    @test total_match(["4"], ["1", "2", "3", "4", "5"]) == ["4"]
    @test total_match(["hi", "admin"], ["hI", "Hi"]) == ["hI", "Hi"]
    @test total_match(["hi", "admin"], ["hI", "hi", "hi"]) == ["hI", "hi", "hi"]
    @test total_match(["hi", "admin"], ["hI", "hi", "hii"]) == ["hi", "admin"]


    # Check some edge cases that are easy to work out by hand.
    @test total_match(String[], ["this"]) == []
    @test total_match(["this"], String[]) == []
end