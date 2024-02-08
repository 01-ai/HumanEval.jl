@testitem "078_hex_key.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "078_hex_key.jl"))

    # Check some simple cases
    @test hex_key("AB") == 1
    @test hex_key("1077E") == 2
    @test hex_key("ABED1A33") == 4
    @test hex_key("2020") == 2
    @test hex_key("123456789ABCDEF0") == 6
    @test hex_key("112233445566778899AABBCCDDEEFF00") == 12


    # Check some edge cases that are easy to work out by hand.
    @test hex_key("") == 0
end