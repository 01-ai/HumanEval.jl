@testitem "113_odd_count.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "113_odd_count.jl"))

    # Check some simple cases
    @test odd_count(["1234567"]) == ["the number of odd elements 4n the str4ng 4 of the 4nput."]
    @test odd_count(["3","11111111"]) == ["the number of odd elements 1n the str1ng 1 of the 1nput.", "the number of odd elements 8n the str8ng 8 of the 8nput."]
    @test odd_count(["271", "137", "314"]) == [
        "the number of odd elements 2n the str2ng 2 of the 2nput.",
        "the number of odd elements 3n the str3ng 3 of the 3nput.",
        "the number of odd elements 2n the str2ng 2 of the 2nput."
    ]
end