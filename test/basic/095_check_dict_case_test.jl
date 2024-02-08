@testitem "095_check_dict_case.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "095_check_dict_case.jl"))

    # Check some simple cases
    @test check_dict_case(Dict("p"=>"pineapple", "b"=>"banana")) == true
    @test check_dict_case(Dict("p"=>"pineapple", "A"=>"banana", "B"=>"banana")) == false
    @test check_dict_case(Dict("p"=>"pineapple", "5"=>"banana", "a"=>"apple")) == false
    @test check_dict_case(Dict("Name"=>"John", "Age"=>"36", "City"=>"Houston")) == false
    @test check_dict_case(Dict("STATE"=>"NC", "ZIP"=>"12345" )) == true
    @test check_dict_case(Dict("fruit"=>"Orange", "taste"=>"Sweet" )) == true


    # Check some edge cases that are easy to work out by hand.
    @test check_dict_case(Dict{String,String}()) == false
end