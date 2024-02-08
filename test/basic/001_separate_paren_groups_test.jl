@testitem "001_separate_paren_groups.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "001_separate_paren_groups.jl"))

    @test separate_paren_groups("(()()) ((())) () ((())()())") == [ "(()())", "((()))", "()", "((())()())" ]
    @test separate_paren_groups("() (()) ((())) (((())))") == ["()", "(())", "((()))", "(((())))"]
    @test separate_paren_groups("(()(())((())))") == ["(()(())((())))"]
    @test separate_paren_groups("( ) (( )) (( )( ))") == ["()", "(())", "(()())"]
end