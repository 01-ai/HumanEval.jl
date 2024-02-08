@testitem "081_numerical_letter_grade.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "081_numerical_letter_grade.jl"))

    # Check some simple cases
    @test numerical_letter_grade([4.0, 3, 1.7, 2, 3.5]) == ["A", "B", "C-", "C", "A-"]
    @test numerical_letter_grade([1.2]) == ["D+"]
    @test numerical_letter_grade([0.5]) == ["D-"]
    @test numerical_letter_grade([0.0]) == ["E"]
    @test numerical_letter_grade([1, 0.3, 1.5, 2.8, 3.3]) == ["D", "D-", "C-", "B", "B+"]
    @test numerical_letter_grade([0, 0.7]) == ["E", "D-"]
end