@testitem "124_valid_date.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "124_valid_date.jl"))

    # Check some simple cases
    @test valid_date("03-11-2000") == true
    @test valid_date("15-01-2012") == false
    @test valid_date("04-0-2040") == false
    @test valid_date("06-04-2020") == true
    @test valid_date("01-01-2007") == true
    @test valid_date("03-32-2011") == false
    @test valid_date("") == false
    @test valid_date("04-31-3000") == false
    @test valid_date("06-06-2005") == true
    @test valid_date("21-31-2000") == false
    @test valid_date("04-12-2003") == true
    @test valid_date("04122003") == false
    @test valid_date("20030412") == false
    @test valid_date("2003-04") == false
    @test valid_date("2003-04-12") == false
    @test valid_date("04-2003") == false
end