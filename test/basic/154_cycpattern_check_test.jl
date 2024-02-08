@testitem "154_cycpattern_check.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "154_cycpattern_check.jl"))

    @test cycpattern_check("xyzw","xyw") == false 
    @test cycpattern_check("yello","ell") == true 
    @test cycpattern_check("whattup","ptut") == false
    @test cycpattern_check("efef","fee") == true 
    @test cycpattern_check("abab","aabb") == false 
    @test cycpattern_check("winemtt","tinem") == true
end