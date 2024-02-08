@testitem "027_flip_case.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "027_flip_case.jl"))

    @test flip_case("") == ""
    @test flip_case("Hello!") == "hELLO!"
    @test flip_case("These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS"
end