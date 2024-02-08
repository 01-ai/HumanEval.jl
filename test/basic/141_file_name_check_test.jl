@testitem "141_file_name_check.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "141_file_name_check.jl"))

    # Check some simple cases
    @test file_name_check("example.txt") == "Yes"
    @test file_name_check("1example.dll") == "No"
    @test file_name_check("s1sdf3.asd") == "No"
    @test file_name_check("K.dll") == "Yes"
    @test file_name_check("MY16FILE3.exe") == "Yes"
    @test file_name_check("His12FILE94.exe") == "No"
    @test file_name_check("_Y.txt") == "No"
    @test file_name_check("?aREYA.exe") == "No"
    @test file_name_check("/this_is_valid.dll") == "No"
    @test file_name_check("this_is_valid.wow") == "No"
    @test file_name_check("this_is_valid.txt") == "Yes"
    @test file_name_check("this_is_valid.txtexe") == "No"
    @test file_name_check("#this2_i4s_5valid.ten") == "No"
    @test file_name_check("@this1_is6_valid.exe") == "No"
    @test file_name_check("this_is_12valid.6exe4.txt") == "No"
    @test file_name_check("all.exe.txt") == "No"
    @test file_name_check("I563_No.exe") == "Yes"
    @test file_name_check("Is3youfault.txt") == "Yes"
    @test file_name_check("no_one#knows.dll") == "Yes"
    @test file_name_check("1I563_Yes3.exe") == "No"
    @test file_name_check("I563_Yes3.txtt") == "No"
    @test file_name_check("final..txt") == "No"
    @test file_name_check("final132") == "No"
    @test file_name_check("_f4indsartal132.") == "No"

    # Check some edge cases that are easy to work out by hand.
    @test file_name_check(".txt") == "No"
    @test file_name_check("s.") == "No"
end