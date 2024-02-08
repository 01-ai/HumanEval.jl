@testitem "029_filter_by_prefix.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "029_filter_by_prefix.jl"))

    @test filter_by_prefix(String[], "john") == []
    @test filter_by_prefix(["xxx", "asd", "xxy", "john doe", "xxxAAA", "xxx"], "xxx") == ["xxx", "xxxAAA", "xxx"]
end