@testitem "162_string_to_md5.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "162_string_to_md5.jl"))

    # Check some simple cases
    @test string_to_md5("Hello world") == "3e25960a79dbc69b674cd4ec67a72c62"
    @test string_to_md5("") === nothing
    @test string_to_md5("A B C") == "0ef78513b0cb8cef12743f5aeb35f888"
    @test string_to_md5("password") == "5f4dcc3b5aa765d61d8327deb882cf99"
end