@testitem "089_encrypt.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "089_encrypt.jl"))

    # Check some simple cases
    @test encrypt("hi") == "lm"
    @test encrypt("asdfghjkl") == "ewhjklnop"
    @test encrypt("gf") == "kj"
    @test encrypt("et") == "ix"

    @test encrypt("faewfawefaewg")=="jeiajeaijeiak"
    @test encrypt("hellomyfriend")=="lippsqcjvmirh"
    @test encrypt("dxzdlmnilfuhmilufhlihufnmlimnufhlimnufhfucufh")=="hbdhpqrmpjylqmpyjlpmlyjrqpmqryjlpmqryjljygyjl"

    # Check some edge cases that are easy to work out by hand.
    @test encrypt("a")=="e"
end