@testitem "051_remove_vowels.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "051_remove_vowels.jl"))

    @test remove_vowels("") == ""
    @test remove_vowels("abcdef\nghijklm") == "bcdf\nghjklm"
    @test remove_vowels("fedcba") == "fdcb"
    @test remove_vowels("eeeee") == ""
    @test remove_vowels("acBAA") == "cB"
    @test remove_vowels("EcBOO") == "cB"
    @test remove_vowels("ybcd") == "ybcd"
end