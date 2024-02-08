@testitem "048_is_palindrome.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "048_is_palindrome.jl"))

    @test is_palindrome("") == true
    @test is_palindrome("aba") == true
    @test is_palindrome("aaaaa") == true
    @test is_palindrome("zbcd") == false
    @test is_palindrome("xywyx") == true
    @test is_palindrome("xywyz") == false
    @test is_palindrome("xywzx") == false
end