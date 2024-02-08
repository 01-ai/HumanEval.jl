@testitem "071_triangle_area3.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "071_triangle_area3.jl"))

    # Check some simple cases
    @test triangle_area3(3, 4, 5) == 6.00
    @test triangle_area3(1, 2, 10) == -1
    @test triangle_area3(4, 8, 5) == 8.18
    @test triangle_area3(2, 2, 2) == 1.73
    @test triangle_area3(1, 2, 3) == -1
    @test triangle_area3(10, 5, 7) == 16.25
    @test triangle_area3(2, 6, 3) == -1

    # Check some edge cases that are easy to work out by hand.
    @test triangle_area3(1, 1, 1) == 0.43
    @test triangle_area3(2, 2, 10) == -1
end