@testitem "061_correct_bracketing.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "061_correct_bracketing.jl"))

    @test correct_bracketing("()")
    @test correct_bracketing("(()())")
    @test correct_bracketing("()()(()())()")
    @test correct_bracketing("()()((()()())())(()()(()))")
    @test !correct_bracketing("((()())))")
    @test !correct_bracketing(")(()")
    @test !correct_bracketing("(")
    @test !correct_bracketing("((((")
    @test !correct_bracketing(")")
    @test !correct_bracketing("(()")
    @test !correct_bracketing("()()(()())())(()")
    @test !correct_bracketing("()()(()())()))()")
end