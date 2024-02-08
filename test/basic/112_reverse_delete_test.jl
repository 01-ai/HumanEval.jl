@testitem "112_reverse_delete.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "112_reverse_delete.jl"))

    @test reverse_delete("abcde","ae") == ("bcd",false)
    @test reverse_delete("abcdef", "b") == ("acdef",false)
    @test reverse_delete("abcdedcba","ab") == ("cdedc",true)
    @test reverse_delete("dwik","w") == ("dik",false)
    @test reverse_delete("a","a") == ("",true)
    @test reverse_delete("abcdedcba","") == ("abcdedcba",true)
    @test reverse_delete("abcdedcba","v") == ("abcdedcba",true)
    @test reverse_delete("vabba","v") == ("abba",true)
    @test reverse_delete("mamma", "mia") == ("", true)
end