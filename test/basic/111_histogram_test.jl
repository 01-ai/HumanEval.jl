@testitem "111_histogram.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "111_histogram.jl"))

    # Check some simple cases
    @test histogram("a b b a") == Dict("a"=>2,"b"=> 2)
    @test histogram("a b c a b") == Dict("a"=> 2, "b"=> 2)
    @test histogram("a b c d g") == Dict("a"=> 1, "b"=> 1, "c"=> 1, "d"=> 1, "g"=> 1)
    @test histogram("r t g") == Dict("r"=> 1,"t"=> 1,"g"=> 1)
    @test histogram("b b b b a") == Dict("b"=> 4)
    @test histogram("r t g") == Dict("r"=> 1,"t"=> 1,"g"=> 1)
    
    
    # Check some edge cases that are easy to work out by hand.
    @test histogram("") == Dict()
    @test histogram("a") == Dict("a"=> 1)
end