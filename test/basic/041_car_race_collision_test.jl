@testitem "041_car_race_collision.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "041_car_race_collision.jl"))

    @test car_race_collision(2) == 4
    @test car_race_collision(3) == 9
    @test car_race_collision(4) == 16
    @test car_race_collision(8) == 64
    @test car_race_collision(10) == 100
end