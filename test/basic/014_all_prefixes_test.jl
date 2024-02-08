@testitem "014_all_prefixes.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "014_all_prefixes.jl"))

    @test all_prefixes("") == []
    @test all_prefixes("asdfgh") == ["a", "as", "asd", "asdf", "asdfg", "asdfgh"]
    @test all_prefixes("WWW") == ["W", "WW", "WWW"]
end