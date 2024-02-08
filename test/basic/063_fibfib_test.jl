@testitem "063_fibfib.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "063_fibfib.jl"))

    @test fibfib(1) == 0
    @test fibfib(2) == 1
    @test fibfib(3) == 1
    @test fibfib(4) == 2
    @test fibfib(5) == 4
    @test fibfib(6) == 7
    @test fibfib(7) == 13
    @test fibfib(8) == 24
    @test fibfib(9) == 44
    @test fibfib(10) == 81
    @test fibfib(11) == 149
    @test fibfib(12) == 274
    @test fibfib(13) == 504
    @test fibfib(14) == 927
    @test fibfib(15) == 1705
    @test fibfib(16) == 3136
    @test fibfib(17) == 5768
    @test fibfib(18) == 10609
    @test fibfib(19) == 19513
    @test fibfib(20) == 35890
    @test fibfib(21) == 66012
    @test fibfib(22) == 121415
    @test fibfib(23) == 223317
    @test fibfib(24) == 410744
    @test fibfib(25) == 755476
    @test fibfib(26) == 1389537
    @test fibfib(27) == 2555757
    @test fibfib(28) == 4700770
    @test fibfib(29) == 8646064
    @test fibfib(30) == 15902591
    @test fibfib(31) == 29249425
    @test fibfib(32) == 53798080
end