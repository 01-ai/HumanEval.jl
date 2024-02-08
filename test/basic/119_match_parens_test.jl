@testitem "119_match_parens.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "119_match_parens.jl"))

    # Check some simple cases
    @test match_parens(["()(", ")"]) == "Yes"
    @test match_parens([")", ")"]) == "No"
    @test match_parens(["(()(())", "())())"]) == "No"
    @test match_parens([")())", "(()()("]) == "Yes"
    @test match_parens(["(())))", "(()())(("]) == "Yes"
    @test match_parens(["()", "())"]) == "No"
    @test match_parens(["(()(", "()))()"]) == "Yes"
    @test match_parens(["((((", "((())"]) == "No"
    @test match_parens([")(()", "(()("]) == "No"
    @test match_parens([")(", ")("]) == "No"
    

    # Check some edge cases that are easy to work out by hand.
    @test match_parens(["(", ")"]) == "Yes"
    @test match_parens([")", "("]) == "Yes" 
end