@testitem "134_check_if_last_char_is_a_letter.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "134_check_if_last_char_is_a_letter.jl"))

    # Check some simple cases
    @test check_if_last_char_is_a_letter("apple") == false
    @test check_if_last_char_is_a_letter("apple pi e") == false
    @test check_if_last_char_is_a_letter("eeeee") == false
    @test check_if_last_char_is_a_letter("A") == true
    @test check_if_last_char_is_a_letter("Pumpkin pie ") == false
    @test check_if_last_char_is_a_letter("Pumpkin pie 1") == false
    @test check_if_last_char_is_a_letter("") == false
    @test check_if_last_char_is_a_letter("eeeee e ") == false
    @test check_if_last_char_is_a_letter("apple pie") == false
    @test check_if_last_char_is_a_letter("apple pi e ") == false
end