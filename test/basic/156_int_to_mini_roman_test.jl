@testitem "156_int_to_mini_roman.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "156_int_to_mini_roman.jl"))

    # Check some simple cases
    @test int_to_mini_roman(19) == "xix"
    @test int_to_mini_roman(152) == "clii"
    @test int_to_mini_roman(251) == "ccli"
    @test int_to_mini_roman(426) == "cdxxvi"
    @test int_to_mini_roman(500) == "d"
    @test int_to_mini_roman(1) == "i"
    @test int_to_mini_roman(4) == "iv"
    @test int_to_mini_roman(43) == "xliii"
    @test int_to_mini_roman(90) == "xc"
    @test int_to_mini_roman(94) == "xciv"
    @test int_to_mini_roman(532) == "dxxxii"
    @test int_to_mini_roman(900) == "cm"
    @test int_to_mini_roman(994) == "cmxciv"
    @test int_to_mini_roman(1000) == "m"
end