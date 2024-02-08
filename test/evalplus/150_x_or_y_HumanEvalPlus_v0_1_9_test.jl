@testitem "150_x_or_y_HumanEvalPlus_v0_1_9_test.jl" tags=[:HumanEvalPlus_v0_1_9] begin
    include(joinpath(ENV["GENERATION_DIR"], "150_x_or_y.jl"))
    @test x_or_y(-2,0,1) == 1
    @test x_or_y(0,500,1000) == 1000
    @test x_or_y(11,1,0) == 1
    @test x_or_y(25,-25,25) == 25
    @test x_or_y(37,123,456) == 123
    @test x_or_y(113,100,200) == 100
    @test x_or_y(17,5,9) == 5
    @test x_or_y(31,-5,22) == -5
    @test x_or_y(49,0,3) == 3
    @test x_or_y(61,20,40) == 20
    @test x_or_y(100,99,200) == 200
    @test x_or_y(62,40,20) == 20
    @test x_or_y(199,99,200) == 99
    @test x_or_y(5,100,5) == 100
    @test x_or_y(500,500,500) == 500
    @test x_or_y(62,40,62) == 62
    @test x_or_y(25,-26,25) == 25
    @test x_or_y(123,499,500) == 500
    @test x_or_y(17,9,17) == 9
    @test x_or_y(6,123,100) == 100
    @test x_or_y(37,122,455) == 122
    @test x_or_y(37,123,25) == 123
    @test x_or_y(49,3,3) == 3
    @test x_or_y(11,100,201) == 100
    @test x_or_y(6,100,100) == 100
    @test x_or_y(99,99,200) == 200
    @test x_or_y(41,20,20) == 20
    @test x_or_y(36,456,37) == 37
    @test x_or_y(500,501,500) == 500
    @test x_or_y(100,456,99) == 99
    @test x_or_y(500,500,501) == 501
    @test x_or_y(62,49,100) == 100
    @test x_or_y(31,1,31) == 1
    @test x_or_y(1000,62,501) == 501
    @test x_or_y(-4,-3,-26) == -26
    @test x_or_y(100,200,200) == 200
    @test x_or_y(41,122,455) == 122
    @test x_or_y(100,19,200) == 200
    @test x_or_y(99,41,1) == 1
    @test x_or_y(49,-26,-26) == -26
    @test x_or_y(99,99,99) == 99
    @test x_or_y(50,49,3) == 3
    @test x_or_y(17,18,9) == 18
    @test x_or_y(6,1,100) == 100
    @test x_or_y(99,40,99) == 99
    @test x_or_y(41,0,3) == 0
    @test x_or_y(31,500,22) == 500
    @test x_or_y(5,101,5) == 101
    @test x_or_y(41,3,-26) == 3
    @test x_or_y(498,501,500) == 500
    @test x_or_y(49,-4,3) == 3
    @test x_or_y(41,499,-26) == 499
    @test x_or_y(-4,-26,-26) == -26
    @test x_or_y(99,-25,99) == 99
    @test x_or_y(26,25,26) == 26
    @test x_or_y(40,61,62) == 62
    @test x_or_y(99,3,9) == 9
    @test x_or_y(41,199,24) == 199
    @test x_or_y(32,500,22) == 22
    @test x_or_y(-3,-26,-3) == -3
    @test x_or_y(31,32,22) == 32
    @test x_or_y(500,500,22) == 22
    @test x_or_y(98,199,200) == 200
    @test x_or_y(113,200,200) == 200
    @test x_or_y(5,5,5) == 5
    @test x_or_y(1,0,3) == 3
    @test x_or_y(501,456,37) == 37
    @test x_or_y(19,113,100) == 113
    @test x_or_y(-28,-27,-4) == -4
    @test x_or_y(38,122,455) == 455
    @test x_or_y(40,0,98) == 98
    @test x_or_y(37,123,6) == 123
    @test x_or_y(19,200,200) == 200
    @test x_or_y(199,99,-5) == 99
    @test x_or_y(499,5,20) == 5
    @test x_or_y(99,9,100) == 100
    @test x_or_y(500,500,122) == 122
    @test x_or_y(50,36,3) == 3
    @test x_or_y(113,100,113) == 100
    @test x_or_y(456,100,100) == 100
    @test x_or_y(0,456,37) == 37
    @test x_or_y(-3,-3,9) == 9
    @test x_or_y(48,0,499) == 499
    @test x_or_y(25,1000,-26) == -26
    @test x_or_y(100,31,1000) == 1000
    @test x_or_y(100,456,100) == 100
    @test x_or_y(25,27,25) == 25
    @test x_or_y(-27,9,17) == 17
    @test x_or_y(24,200,200) == 200
    @test x_or_y(32,31,31) == 31
    @test x_or_y(62,40,41) == 41
    @test x_or_y(1000,40,501) == 501
    @test x_or_y(50,27,-26) == -26
    @test x_or_y(-3,1,1) == 1
    @test x_or_y(40,62,62) == 62
    @test x_or_y(100,457,100) == 100
    @test x_or_y(31,24,22) == 24
    @test x_or_y(21,-25,200) == 200
    @test x_or_y(500,22,500) == 500
    @test x_or_y(41,-26,-26) == -26
    @test x_or_y(-5,34,1234) == 1234
    @test x_or_y(0,2,0) == 0
    @test x_or_y(101,56,129) == 56
    @test x_or_y(399,2,0) == 0
    @test x_or_y(7919,33,5212) == 33
    @test x_or_y(61,-100,50) == -100
    @test x_or_y(73,0,15) == 0
    @test x_or_y(101,17,0) == 17
    @test x_or_y(-10,4,5) == 5
    @test x_or_y(0,6,10) == 10
    @test x_or_y(-5,-10,1234) == 1234
    @test x_or_y(1234,56,129) == 129
    @test x_or_y(10,-5,-5) == -5
    @test x_or_y(-10,4,10) == 10
    @test x_or_y(4,10,10) == 10
    @test x_or_y(-9,4,5) == 5
    @test x_or_y(-11,56,10) == 10
    @test x_or_y(34,-10,34) == 34
    @test x_or_y(73,56,129) == 56
    @test x_or_y(-9,-10,4) == 4
    @test x_or_y(4,2,10) == 10
    @test x_or_y(0,5,10) == 10
    @test x_or_y(-9,5,5) == 5
    @test x_or_y(10,-4,-5) == -5
    @test x_or_y(1234,129,128) == 128
    @test x_or_y(129,9,10) == 10
    @test x_or_y(-11,56,56) == 56
    @test x_or_y(9,129,-5) == -5
    @test x_or_y(129,10,-10) == -10
    @test x_or_y(-9,-10,-10) == -10
    @test x_or_y(10,-6,-5) == -5
    @test x_or_y(-5,56,-5) == -5
    @test x_or_y(-9,6,0) == 0
    @test x_or_y(-8,-9,6) == 6
    @test x_or_y(101,129,-5) == 129
    @test x_or_y(34,-10,50) == 50
    @test x_or_y(49,-100,50) == 50
    @test x_or_y(34,-10,51) == 51
    @test x_or_y(1233,56,130) == 130
    @test x_or_y(10,10,10) == 10
    @test x_or_y(34,-5,-5) == -5
    @test x_or_y(-5,-5,10) == 10
    @test x_or_y(129,1234,1234) == 1234
    @test x_or_y(1234,1234,5) == 5
    @test x_or_y(-11,4,5) == 5
    @test x_or_y(1234,129,1234) == 1234
    @test x_or_y(-7,17,0) == 0
    @test x_or_y(6,128,10) == 10
    @test x_or_y(34,-7,34) == 34
    @test x_or_y(-4,-4,-5) == -5
    @test x_or_y(7919,33,7919) == 33
    @test x_or_y(0,-11,10) == 10
    @test x_or_y(-7,0,0) == 0
    @test x_or_y(-5,129,-5) == -5
    @test x_or_y(56,56,129) == 129
    @test x_or_y(10,129,-5) == -5
    @test x_or_y(-10,-11,-11) == -11
    @test x_or_y(34,2,50) == 50
    @test x_or_y(-10,34,35) == 35
    @test x_or_y(5,5212,1234) == 5212
    @test x_or_y(1234,129,129) == 129
    @test x_or_y(0,4,5) == 5
    @test x_or_y(17,129,56) == 129
    @test x_or_y(-9,61,0) == 0
    @test x_or_y(-8,5,0) == 0
    @test x_or_y(4,-7,34) == 34
    @test x_or_y(-7,0,-6) == -6
    @test x_or_y(61,0,0) == 0
    @test x_or_y(129,56,129) == 129
    @test x_or_y(-10,56,10) == 10
    @test x_or_y(49,49,17) == 17
    @test x_or_y(6,6,6) == 6
    @test x_or_y(129,1235,1234) == 1234
    @test x_or_y(9,33,33) == 33
    @test x_or_y(-5,34,-5) == -5
    @test x_or_y(-5,-10,-5) == -5
    @test x_or_y(17,-5,-5) == -5
    @test x_or_y(-10,35,35) == 35
    @test x_or_y(2,9,50) == 9
    @test x_or_y(399,0,0) == 0
    @test x_or_y(35,49,49) == 49
    @test x_or_y(5,-6,-5) == -6
    @test x_or_y(-7,8,9) == 9
    @test x_or_y(399,2,2) == 2
    @test x_or_y(1234,131,1234) == 1234
    @test x_or_y(-5,-5,-5) == -5
    @test x_or_y(-100,-7,0) == 0
    @test x_or_y(1234,129,15) == 15
    @test x_or_y(131,128,128) == 128
    @test x_or_y(-4,34,49) == 49
    @test x_or_y(-6,-5,-5) == -5
    @test x_or_y(129,56,-6) == -6
    @test x_or_y(10,1234,8) == 8
    @test x_or_y(-10,5,5) == 5
    @test x_or_y(4,5,5) == 5
    @test x_or_y(17,5,5) == 5
    @test x_or_y(-10,0,5) == 5
    @test x_or_y(399,399,0) == 0
    @test x_or_y(129,5,5) == 5
    @test x_or_y(1234,4,0) == 0
    @test x_or_y(400,399,2) == 2
    @test x_or_y(61,0,1) == 0
    @test x_or_y(128,-10,1234) == 1234
    @test x_or_y(-10,131,34) == 34
    @test x_or_y(-11,131,34) == 34
    @test x_or_y(129,0,-6) == -6
    @test x_or_y(15,-5,-5) == -5
    @test x_or_y(10,-10,1234) == 1234
    @test x_or_y(49,48,5211) == 5211
    @test x_or_y(55,56,56) == 56
    @test x_or_y(-9,-10,130) == 130
    @test x_or_y(16,17,3) == 3
    @test x_or_y(34,51,-10) == -10
    @test x_or_y(-4,10,-10) == -10
    @test x_or_y(-8,8,9) == 9
    @test x_or_y(-11,9,-11) == -11
    @test x_or_y(-10,33,33) == 33
    @test x_or_y(-9,62,0) == 0
    @test x_or_y(-10,-11,-10) == -10
    @test x_or_y(1233,399,74) == 74
    @test x_or_y(-9,8,9) == 9
    @test x_or_y(-4,10,-5) == -5
    @test x_or_y(131,131,33) == 131
    @test x_or_y(-8,-9,17) == 17
    @test x_or_y(55,56,55) == 55
    @test x_or_y(6,17,2) == 2
    @test x_or_y(-9,399,62) == 62
    @test x_or_y(131,-7,1235) == -7
    @test x_or_y(131,33,33) == 33
    @test x_or_y(10,33,1234) == 1234
    @test x_or_y(-8,-9,128) == 128
    @test x_or_y(-11,129,-11) == -11
    @test x_or_y(9,0,9) == 9
    @test x_or_y(50,56,56) == 56
    @test x_or_y(128,-10,7919) == 7919
    @test x_or_y(-9,-9,6) == 6
    @test x_or_y(-11,-10,5) == 5
    @test x_or_y(49,50,50) == 50
    @test x_or_y(132,33,33) == 33
    @test x_or_y(0,61,0) == 0
    @test x_or_y(129,128,127) == 127
    @test x_or_y(-7,8,8) == 8
    @test x_or_y(131,51,51) == 51
    @test x_or_y(-4,128,9) == 9
    @test x_or_y(55,9,9) == 9
    @test x_or_y(2,5211,50) == 5211
    @test x_or_y(15,6,5) == 5
    @test x_or_y(18,129,57) == 57
    @test x_or_y(2,2,50) == 2
    @test x_or_y(-9,6,5) == 5
    @test x_or_y(17,5,4) == 5
    @test x_or_y(16,33,18) == 18
    @test x_or_y(4,35,5) == 5
    @test x_or_y(73,-10,-10) == -10
    @test x_or_y(34,35,5) == 5
    @test x_or_y(17,2,17) == 2
    @test x_or_y(7919,130,6) == 130
    @test x_or_y(10,5,128) == 128
    @test x_or_y(399,129,128) == 128
    @test x_or_y(1234,1234,1234) == 1234
    @test x_or_y(54,57,57) == 57
    @test x_or_y(33,4,5212) == 5212
    @test x_or_y(4,-10,1234) == 1234
    @test x_or_y(61,57,1) == 57
    @test x_or_y(1,5211,50) == 50
    @test x_or_y(129,9,11) == 11
    @test x_or_y(-9,62,62) == 62
    @test x_or_y(17,129,131) == 129
    @test x_or_y(-10,8,10) == 10
    @test x_or_y(127,-9,33) == -9
    @test x_or_y(62,0,0) == 0
    @test x_or_y(4,5212,56) == 56
    @test x_or_y(56,-11,10) == 10
    @test x_or_y(74,-11,-11) == -11
    @test x_or_y(-6,17,-7) == -7
    @test x_or_y(5,10,10) == 10
    @test x_or_y(-100,0,0) == 0
    @test x_or_y(3,0,15) == 0
    @test x_or_y(-8,-10,9) == 9
    @test x_or_y(17,1235,1235) == 1235
    @test x_or_y(-10,15,-10) == -10
    @test x_or_y(61,-100,-100) == -100
    @test x_or_y(7919,56,6) == 56
    @test x_or_y(74,9,11) == 11
    @test x_or_y(33,-5,-5) == -5
    @test x_or_y(49,3,5211) == 5211
    @test x_or_y(-9,62,399) == 399
    @test x_or_y(17,17,-7) == 17
    @test x_or_y(-6,131,-7) == -7
    @test x_or_y(62,0,1) == 1
    @test x_or_y(100,50,101) == 101
    @test x_or_y(5,-10,-9) == -10
    @test x_or_y(35,35,35) == 35
    @test x_or_y(5,6,5) == 6
    @test x_or_y(5,49,49) == 49
    @test x_or_y(-4,49,-4) == -4
    @test x_or_y(-9,-9,62) == 62
    @test x_or_y(100,10,-10) == -10
    @test x_or_y(57,55,56) == 56
    @test x_or_y(5,128,6) == 128
    @test x_or_y(10,-9,2) == 2
    @test x_or_y(57,17,17) == 17
    @test x_or_y(-10,4,1233) == 1233
    @test x_or_y(-4,128,-4) == -4
    @test x_or_y(1234,128,1234) == 1234
    @test x_or_y(62,56,62) == 62
    @test x_or_y(7920,33,7919) == 7919
    @test x_or_y(399,-8,74) == 74
    @test x_or_y(61,0,3) == 0
    @test x_or_y(0,-7,0) == 0
    @test x_or_y(-1,6,10) == 10
    @test x_or_y(72,0,34) == 34
    @test x_or_y(-10,9,10) == 10
    @test x_or_y(-10,72,10) == 10
    @test x_or_y(-4,-6,-6) == -6
    @test x_or_y(130,10,1235) == 1235
    @test x_or_y(10,129,-8) == -8
    @test x_or_y(48,10,-5) == -5
    @test x_or_y(56,0,0) == 0
    @test x_or_y(1234,1234,129) == 129
    @test x_or_y(72,17,0) == 0
    @test x_or_y(1234,36,-9) == -9
    @test x_or_y(10,-5,10) == 10
    @test x_or_y(-11,-11,-11) == -11
    @test x_or_y(-8,-9,16) == 16
    @test x_or_y(5,5212,5) == 5212
    @test x_or_y(-8,17,-8) == -8
    @test x_or_y(128,-10,1233) == 1233
    @test x_or_y(34,-10,52) == 52
    @test x_or_y(72,-9,0) == 0
    @test x_or_y(48,4,1234) == 1234
    @test x_or_y(-8,-11,9) == 9
    @test x_or_y(-10,50,10) == 10
    @test x_or_y(-6,129,-5) == -5
    @test x_or_y(17,1235,6) == 1235
    @test x_or_y(-10,1234,-10) == -10
    @test x_or_y(-9,15,-9) == -9
    @test x_or_y(4,34,-7) == -7
    @test x_or_y(5,4,4) == 4
    @test x_or_y(1,2,2) == 2
    @test x_or_y(3,4,0) == 4
    @test x_or_y(16,2,17) == 17
    @test x_or_y(1235,-5,1234) == 1234
    @test x_or_y(34,131,50) == 50
    @test x_or_y(17,399,-5) == 399
    @test x_or_y(7918,-5,-5) == -5
    @test x_or_y(17,399,17) == 399
    @test x_or_y(14,128,18) == 18
    @test x_or_y(10,-9,1234) == 1234
    @test x_or_y(2,48,15) == 48
    @test x_or_y(33,5211,100) == 100
    @test x_or_y(5,5,6) == 5
    @test x_or_y(33,11,11) == 11
    @test x_or_y(5212,0,5211) == 5211
    @test x_or_y(-8,128,0) == 0
    @test x_or_y(14,100,1) == 1
    @test x_or_y(101,1,-1) == 1
    @test x_or_y(48,47,5211) == 5211
    @test x_or_y(1235,16,35) == 35
    @test x_or_y(5,128,-1) == 128
    @test x_or_y(14,128,14) == 14
    @test x_or_y(7,399,6) == 399
    @test x_or_y(7920,34,-5) == -5
    @test x_or_y(74,9,7920) == 7920
    @test x_or_y(17,6,130) == 6
    @test x_or_y(1,0,0) == 0
    @test x_or_y(57,-5,-5) == -5
    @test x_or_y(128,1234,128) == 128
    @test x_or_y(5,7920,127) == 7920
    @test x_or_y(-5,129,62) == 62
    @test x_or_y(15,57,-5) == -5
    @test x_or_y(61,52,1) == 52
    @test x_or_y(61,51,1) == 51
    @test x_or_y(1235,1235,1235) == 1235
    @test x_or_y(127,7,128) == 7
    @test x_or_y(0,6,128) == 128
    @test x_or_y(-7,-9,17) == 17
    @test x_or_y(-5,0,0) == 0
    @test x_or_y(48,49,-100) == -100
    @test x_or_y(-6,-7,-6) == -6
    @test x_or_y(-5,17,-5) == -5
    @test x_or_y(1234,1233,129) == 129
    @test x_or_y(7,10,10) == 10
    @test x_or_y(-10,8,130) == 130
    @test x_or_y(128,50,128) == 128
    @test x_or_y(0,72,5) == 5
    @test x_or_y(34,-4,-5) == -5
    @test x_or_y(51,131,50) == 50
    @test x_or_y(14,399,128) == 128
    @test x_or_y(1234,1234,6) == 6
    @test x_or_y(7919,0,14) == 0
    @test x_or_y(-101,-7,101) == 101
    @test x_or_y(127,-9,34) == -9
    @test x_or_y(-9,7,5) == 5
    @test x_or_y(74,9,74) == 74
    @test x_or_y(0,5211,5211) == 5211
    @test x_or_y(-5,56,-4) == -4
    @test x_or_y(9,34,9) == 9
    @test x_or_y(1233,57,130) == 130
    @test x_or_y(100,2,17) == 17
    @test x_or_y(-11,4,4) == 4
    @test x_or_y(7919,9,9) == 9
    @test x_or_y(1234,7918,1234) == 1234
    @test x_or_y(2,2,2) == 2
    @test x_or_y(-10,8,-10) == -10
    @test x_or_y(72,0,0) == 0
    @test x_or_y(129,8,129) == 129
    @test x_or_y(101,5,56) == 5
    @test x_or_y(-9,4,1234) == 1234
    @test x_or_y(9,9,9) == 9
    @test x_or_y(-8,-9,-8) == -8
    @test x_or_y(16,3,16) == 16
    @test x_or_y(17,0,0) == 0
    @test x_or_y(-11,48,5211) == 5211
    @test x_or_y(0,8,8) == 8
    @test x_or_y(17,5,17) == 5
    @test x_or_y(129,-1,-9) == -9
    @test x_or_y(-100,-9,6) == 6
    @test x_or_y(1233,2,49) == 49
    @test x_or_y(9,10,10) == 10
    @test x_or_y(17,6,129) == 6
    @test x_or_y(15,-4,-5) == -5
    @test x_or_y(-101,6,5) == 5
    @test x_or_y(1233,-4,5) == 5
    @test x_or_y(7919,-1,14) == -1
    @test x_or_y(50,3,14) == 14
    @test x_or_y(-9,0,128) == 128
    @test x_or_y(15,15,1234) == 1234
    @test x_or_y(62,0,62) == 62
    @test x_or_y(0,0,0) == 0
    @test x_or_y(-5,3,3) == 3
    @test x_or_y(0,62,62) == 62
    @test x_or_y(5212,0,17) == 17
    @test x_or_y(-5,0,-1) == -1
    @test x_or_y(61,62,62) == 62
    @test x_or_y(129,0,0) == 0
    @test x_or_y(1,2,1) == 1
    @test x_or_y(8,10,-10) == -10
    @test x_or_y(34,5212,61) == 61
    @test x_or_y(1,1,2) == 2
    @test x_or_y(61,60,63) == 60
    @test x_or_y(17,73,129) == 73
    @test x_or_y(-9,1234,-9) == -9
    @test x_or_y(-10,128,131) == 131
    @test x_or_y(34,35,35) == 35
    @test x_or_y(1233,-100,-5) == -5
    @test x_or_y(34,35,-5) == -5
    @test x_or_y(1234,100,1) == 1
    @test x_or_y(10,9,9) == 9
    @test x_or_y(5212,17,0) == 0
    @test x_or_y(-7,1,1) == 1
    @test x_or_y(8,10,10) == 10
    @test x_or_y(127,7,127) == 7
    @test x_or_y(-101,74,5) == 5
    @test x_or_y(32,33,32) == 32
    @test x_or_y(18,-7,0) == 0
    @test x_or_y(1234,-7,34) == 34
    @test x_or_y(62,-7,-6) == -6
    @test x_or_y(-7,15,1) == 1
    @test x_or_y(16,7,17) == 17
    @test x_or_y(73,72,72) == 72
    @test x_or_y(-6,0,4) == 4
    @test x_or_y(61,0,61) == 0
    @test x_or_y(10,52,-5) == -5
    @test x_or_y(61,60,61) == 60
    @test x_or_y(-10,9,-11) == -11
    @test x_or_y(-9,-9,-9) == -9
    @test x_or_y(9,9,7919) == 7919
    @test x_or_y(-10,-11,51) == 51
    @test x_or_y(9,8,8) == 8
    @test x_or_y(73,-6,-5) == -6
    @test x_or_y(1235,1233,5) == 5
    @test x_or_y(10,1234,1234) == 1234
    @test x_or_y(7919,7919,7920) == 7919
    @test x_or_y(-9,128,7920) == 7920
    @test x_or_y(61,1234,-5) == 1234
    @test x_or_y(4,52,35) == 35
    @test x_or_y(51,-5,1234) == 1234
    @test x_or_y(4,-10,-11) == -11
    @test x_or_y(-7,15,0) == 0
    @test x_or_y(-5,0,-5) == -5
    @test x_or_y(131,34,131) == 34
    @test x_or_y(51,49,49) == 49
    @test x_or_y(54,39,7919) == 7919
    @test x_or_y(60,52,1) == 1
    @test x_or_y(34,35,34) == 34
    @test x_or_y(11,-8,-9) == -8
    @test x_or_y(15,-4,5) == 5
    @test x_or_y(-9,5,6) == 6
    @test x_or_y(33,18,33) == 33
    @test x_or_y(-7,17,7919) == 7919
    @test x_or_y(2,0,0) == 0
    @test x_or_y(127,100,100) == 100
    @test x_or_y(-100,1,2) == 2
    @test x_or_y(56,7919,6) == 6
    @test x_or_y(4,62,61) == 61
    @test x_or_y(74,5,73) == 73
    @test x_or_y(-7,2,2) == 2
    @test x_or_y(74,9,73) == 73
    @test x_or_y(399,-10,0) == 0
    @test x_or_y(100,3,5211) == 5211
    @test x_or_y(-4,-6,-11) == -11
    @test x_or_y(6,56,6) == 6
    @test x_or_y(-7,400,8) == 8
    @test x_or_y(73,5212,73) == 5212
    @test x_or_y(35,399,2) == 2
    @test x_or_y(10,9,7920) == 7920
    @test x_or_y(-5,-11,-5) == -5
    @test x_or_y(59,52,1) == 52
    @test x_or_y(-7,52,35) == 35
    @test x_or_y(6,18,3) == 3
    @test x_or_y(72,36,72) == 72
    @test x_or_y(129,127,129) == 129
    @test x_or_y(39,-7,52) == 52
    @test x_or_y(47,34,9) == 34
    @test x_or_y(2,0,9) == 0
    @test x_or_y(5,7,6) == 7
    @test x_or_y(1233,2,1233) == 1233
    @test x_or_y(131,130,10) == 130
    @test x_or_y(35,6,5) == 5
    @test x_or_y(-3,34,49) == 49
    @test x_or_y(-7,8,-7) == -7
    @test x_or_y(-6,-7,34) == 34
    @test x_or_y(18,132,50) == 50
    @test x_or_y(5,-1,5) == -1
    @test x_or_y(1234,16,129) == 129
    @test x_or_y(5212,17,51) == 51
    @test x_or_y(129,-9,7919) == 7919
    @test x_or_y(-4,-11,-11) == -11
    @test x_or_y(39,9,10) == 10
    @test x_or_y(63,-5,63) == 63
    @test x_or_y(-7,1234,1234) == 1234
    @test x_or_y(18,399,-5) == -5
    @test x_or_y(7919,7919,33) == 7919
    @test x_or_y(35,-6,129) == 129
    @test x_or_y(34,-5,34) == 34
    @test x_or_y(63,35,399) == 399
    @test x_or_y(8,9,8) == 8
    @test x_or_y(-4,11,-6) == -6
    @test x_or_y(-4,-10,1234) == 1234
    @test x_or_y(129,7918,-6) == -6
    @test x_or_y(4,49,48) == 48
    @test x_or_y(-4,-4,-4) == -4
    @test x_or_y(129,129,-9) == -9
    @test x_or_y(128,399,128) == 128
    @test x_or_y(48,63,8) == 8
    @test x_or_y(35,128,49) == 49
    @test x_or_y(100,74,5211) == 5211
    @test x_or_y(-5,10,-5) == -5
    @test x_or_y(34,131,1234) == 1234
    @test x_or_y(1234,-9,-9) == -9
    @test x_or_y(-6,-6,-6) == -6
    @test x_or_y(4,34,3) == 3
    @test x_or_y(5212,36,-9) == -9
    @test x_or_y(128,34,4) == 4
    @test x_or_y(73,73,-10) == 73
    @test x_or_y(7,10,8) == 10
    @test x_or_y(1233,14,1233) == 1233
    @test x_or_y(132,131,34) == 34
    @test x_or_y(0,1,0) == 0
    @test x_or_y(51,73,61) == 61
    @test x_or_y(399,-9,17) == 17
    @test x_or_y(8,129,8) == 8
    @test x_or_y(129,-6,-6) == -6
    @test x_or_y(132,128,128) == 128
    @test x_or_y(9,10,-10) == -10
    @test x_or_y(132,1,-2) == -2
    @test x_or_y(-9,14,5) == 5
    @test x_or_y(17,-7,49) == -7
    @test x_or_y(9,74,9) == 9
    @test x_or_y(131,57,1233) == 57
    @test x_or_y(52,-1,5211) == 5211
    @test x_or_y(7919,55,6) == 55
    @test x_or_y(61,62,1) == 62
    @test x_or_y(55,56,6) == 6
    @test x_or_y(33,-5,130) == 130
    @test x_or_y(61,61,61) == 61
    @test x_or_y(9,-100,11) == 11
    @test x_or_y(-10,10,10) == 10
    @test x_or_y(49,4,1233) == 1233
    @test x_or_y(11,-9,2) == -9
    @test x_or_y(61,-2,1) == -2
    @test x_or_y(100,4,34) == 34
    @test x_or_y(131,131,131) == 131
    @test x_or_y(3,7919,3) == 7919
    @test x_or_y(101,1234,1234) == 1234
    @test x_or_y(-11,10,10) == 10
    @test x_or_y(10,34,2) == 2
    @test x_or_y(0,5,4) == 4
    @test x_or_y(-6,5,5) == 5
    @test x_or_y(34,52,-10) == -10
    @test x_or_y(-5,34,34) == 34
    @test x_or_y(9,8,1235) == 1235
    @test x_or_y(1232,100,1232) == 1232
    @test x_or_y(4,49,49) == 49
    @test x_or_y(61,-4,9) == -4
    @test x_or_y(-11,400,5) == 5
    @test x_or_y(16,16,5) == 5
    @test x_or_y(131,1232,1233) == 1232
    @test x_or_y(-8,16,-8) == -8
    @test x_or_y(132,-9,33) == 33
    @test x_or_y(130,131,132) == 132
    @test x_or_y(9,49,49) == 49
    @test x_or_y(-10,-11,10) == 10
    @test x_or_y(33,128,49) == 49
    @test x_or_y(-7,51,35) == 35
    @test x_or_y(1234,132,131) == 131
    @test x_or_y(48,10,-6) == -6
    @test x_or_y(1233,5,1233) == 1233
    @test x_or_y(-7,3,6) == 6
    @test x_or_y(-5,12,17) == 17
    @test x_or_y(4,0,4) == 4
    @test x_or_y(34,0,4) == 4
    @test x_or_y(72,0,15) == 15
    @test x_or_y(34,1,34) == 34
    @test x_or_y(34,0,50) == 50
    @test x_or_y(2,0,399) == 0
    @test x_or_y(7919,7919,35) == 7919
    @test x_or_y(6,101,56) == 56
    @test x_or_y(73,1,1) == 1
    @test x_or_y(0,6,1) == 1
    @test x_or_y(102,6,101) == 101
    @test x_or_y(60,-100,50) == 50
    @test x_or_y(7919,7920,35) == 7920
    @test x_or_y(3,50,2) == 50
    @test x_or_y(56,129,129) == 129
    @test x_or_y(73,0,33) == 0
    @test x_or_y(6,3,5) == 5
    @test x_or_y(17,72,56) == 72
    @test x_or_y(-10,3,4) == 4
    @test x_or_y(1,399,0) == 0
    @test x_or_y(-1,15,73) == 73
    @test x_or_y(17,15,17) == 15
    @test x_or_y(399,2,-100) == -100
    @test x_or_y(3,60,2) == 60
    @test x_or_y(35,0,10) == 10
    @test x_or_y(33,5212,33) == 33
    @test x_or_y(56,7920,35) == 35
    @test x_or_y(4,0,34) == 34
    @test x_or_y(34,-1,50) == 50
    @test x_or_y(34,-1,0) == 0
    @test x_or_y(61,4,-1) == 4
    @test x_or_y(3,60,61) == 60
    @test x_or_y(399,-100,2) == 2
    @test x_or_y(0,35,0) == 0
    @test x_or_y(3,2,60) == 2
    @test x_or_y(73,73,1) == 73
    @test x_or_y(-1,50,-1) == -1
    @test x_or_y(50,34,-1) == -1
    @test x_or_y(0,10,10) == 10
    @test x_or_y(2,101,56) == 101
    @test x_or_y(-10,34,56) == 56
    @test x_or_y(60,-100,-10) == -10
    @test x_or_y(35,16,34) == 34
    @test x_or_y(61,50,61) == 50
    @test x_or_y(101,0,101) == 0
    @test x_or_y(17,16,15) == 16
    @test x_or_y(51,34,50) == 50
    @test x_or_y(7919,-100,-100) == -100
    @test x_or_y(35,15,15) == 15
    @test x_or_y(101,399,129) == 399
    @test x_or_y(34,3,0) == 0
    @test x_or_y(0,34,0) == 0
    @test x_or_y(14,2,15) == 15
    @test x_or_y(1234,10,1234) == 1234
    @test x_or_y(15,-100,50) == 50
    @test x_or_y(34,15,17) == 17
    @test x_or_y(7919,7920,7919) == 7920
    @test x_or_y(56,129,128) == 128
    @test x_or_y(7919,399,7919) == 399
    @test x_or_y(7919,-100,128) == -100
    @test x_or_y(-1,34,-1) == -1
    @test x_or_y(61,1234,7918) == 1234
    @test x_or_y(3,2,1234) == 2
    @test x_or_y(73,15,73) == 15
    @test x_or_y(4,2,60) == 60
    @test x_or_y(7919,7919,7919) == 7919
    @test x_or_y(100,56,101) == 101
    @test x_or_y(7919,-100,50) == -100
    @test x_or_y(35,33,35) == 35
    @test x_or_y(1234,-100,1234) == 1234
    @test x_or_y(56,56,56) == 56
    @test x_or_y(6,4,34) == 34
    @test x_or_y(17,56,56) == 56
    @test x_or_y(7920,33,5212) == 5212
    @test x_or_y(399,399,399) == 399
    @test x_or_y(6,7,10) == 10
    @test x_or_y(56,128,128) == 128
    @test x_or_y(0,-1,0) == 0
    @test x_or_y(0,-100,128) == 128
    @test x_or_y(50,61,50) == 50
    @test x_or_y(2,1,2) == 1
    @test x_or_y(34,0,5212) == 5212
    @test x_or_y(73,0,16) == 0
    @test x_or_y(6,16,7) == 7
    @test x_or_y(129,56,399) == 399
    @test x_or_y(7918,61,61) == 61
    @test x_or_y(2,0,1) == 0
    @test x_or_y(50,-10,50) == 50
    @test x_or_y(16,-100,129) == 129
    @test x_or_y(0,399,0) == 0
    @test x_or_y(72,5,15) == 15
    @test x_or_y(-5,2,1234) == 1234
    @test x_or_y(71,72,7) == 72
    @test x_or_y(1234,34,1234) == 1234
    @test x_or_y(56,34,51) == 51
    @test x_or_y(0,0,1) == 1
    @test x_or_y(6,4,33) == 33
    @test x_or_y(73,129,130) == 129
    @test x_or_y(51,-100,51) == 51
    @test x_or_y(101,-10,6) == -10
    @test x_or_y(101,17,-1) == 17
    @test x_or_y(0,-101,399) == 399
    @test x_or_y(-4,14,71) == 71
    @test x_or_y(34,-1,33) == 33
    @test x_or_y(73,101,33) == 101
    @test x_or_y(7919,73,34) == 73
    @test x_or_y(-1,-1,-1) == -1
    @test x_or_y(2,101,-101) == 101
    @test x_or_y(33,4,60) == 60
    @test x_or_y(101,399,-1) == 399
    @test x_or_y(17,-5,17) == -5
    @test x_or_y(399,-1,101) == 101
    @test x_or_y(72,15,15) == 15
    @test x_or_y(101,399,7) == 399
    @test x_or_y(3,1235,1234) == 1235
    @test x_or_y(0,5212,5212) == 5212
    @test x_or_y(4,0,10) == 10
    @test x_or_y(7917,1234,7918) == 7918
    @test x_or_y(34,14,33) == 33
    @test x_or_y(35,0,399) == 399
    @test x_or_y(2,56,-101) == 56
    @test x_or_y(102,128,128) == 128
    @test x_or_y(15,-1,399) == 399
    @test x_or_y(73,16,15) == 16
    @test x_or_y(-100,0,129) == 129
    @test x_or_y(35,399,6) == 6
    @test x_or_y(17,34,101) == 34
    @test x_or_y(2,1234,-5) == 1234
    @test x_or_y(1,0,1) == 1
    @test x_or_y(4,33,0) == 0
    @test x_or_y(101,34,6) == 34
    @test x_or_y(56,-10,56) == 56
    @test x_or_y(1235,56,56) == 56
    @test x_or_y(73,-10,130) == -10
    @test x_or_y(0,101,0) == 0
    @test x_or_y(4,5,11) == 11
    @test x_or_y(-100,-100,-100) == -100
    @test x_or_y(34,33,6) == 6
    @test x_or_y(4,61,61) == 61
    @test x_or_y(73,73,73) == 73
    @test x_or_y(15,-1,15) == 15
    @test x_or_y(-101,0,0) == 0
    @test x_or_y(-1,15,15) == 15
    @test x_or_y(72,7,0) == 0
    @test x_or_y(1234,56,51) == 51
    @test x_or_y(35,33,34) == 34
    @test x_or_y(1235,50,5212) == 5212
    @test x_or_y(0,50,50) == 50
    @test x_or_y(2,1,100) == 1
    @test x_or_y(2,73,-101) == 73
    @test x_or_y(1,6,10) == 10
    @test x_or_y(0,10,5) == 5
    @test x_or_y(5,15,15) == 15
    @test x_or_y(16,-101,129) == 129
    @test x_or_y(-1,-1,61) == 61
    @test x_or_y(3,60,3) == 60
    @test x_or_y(102,102,0) == 0
    @test x_or_y(399,0,399) == 399
    @test x_or_y(34,-1,5212) == 5212
    @test x_or_y(6,15,15) == 15
    @test x_or_y(-1,-1,0) == 0
    @test x_or_y(7917,1234,1234) == 1234
    @test x_or_y(1233,-100,1234) == 1234
    @test x_or_y(72,7,7) == 7
    @test x_or_y(2,72,-101) == 72
    @test x_or_y(1,1,1) == 1
    @test x_or_y(17,72,-100) == 72
    @test x_or_y(50,1,2) == 2
    @test x_or_y(101,-1,0) == -1
    @test x_or_y(51,34,-1) == -1
    @test x_or_y(17,-100,17) == -100
    @test x_or_y(2,-10,2) == -10
    @test x_or_y(7920,9,5) == 5
    @test x_or_y(1234,-2,50) == 50
    @test x_or_y(-10,3,5) == 5
    @test x_or_y(-4,1235,2) == 2
    @test x_or_y(15,-2,-1) == -1
    @test x_or_y(72,-1,50) == 50
    @test x_or_y(-1,60,-1) == -1
    @test x_or_y(0,1,1) == 1
    @test x_or_y(74,-10,130) == 130
    @test x_or_y(32,32,32) == 32
    @test x_or_y(102,10,0) == 0
    @test x_or_y(-4,57,56) == 56
    @test x_or_y(34,33,50) == 50
    @test x_or_y(60,61,61) == 61
    @test x_or_y(35,-100,10) == 10
    @test x_or_y(6,7,16) == 16
    @test x_or_y(1235,2,-1) == -1
    @test x_or_y(-11,3,4) == 4
    @test x_or_y(7,0,0) == 0
    @test x_or_y(1,399,33) == 33
    @test x_or_y(34,2,1) == 1
    @test x_or_y(10,0,0) == 0
    @test x_or_y(4,-10,34) == 34
    @test x_or_y(3,3,4) == 3
    @test x_or_y(56,34,-2) == -2
    @test x_or_y(74,129,128) == 128
    @test x_or_y(74,7,0) == 0
    @test x_or_y(73,15,15) == 15
    @test x_or_y(35,130,-100) == -100
    @test x_or_y(7920,7920,7919) == 7919
    @test x_or_y(100,-10,6) == 6
    @test x_or_y(2,56,7) == 56
    @test x_or_y(-1,33,33) == 33
    @test x_or_y(17,73,7) == 73
    @test x_or_y(15,4,50) == 50
    @test x_or_y(0,-2,0) == 0
    @test x_or_y(128,1,1) == 1
    @test x_or_y(128,-100,10) == 10
    @test x_or_y(7,6,7) == 6
    @test x_or_y(100,-1,11) == 11
    @test x_or_y(7920,33,0) == 0
    @test x_or_y(102,-1,-1) == -1
    @test x_or_y(0,5211,5212) == 5212
    @test x_or_y(9,35,0) == 0
    @test x_or_y(399,56,-100) == -100
    @test x_or_y(101,130,0) == 130
    @test x_or_y(-10,-10,-10) == -10
    @test x_or_y(6,15,5211) == 5211
    @test x_or_y(102,103,10) == 10
    @test x_or_y(7919,34,34) == 34
    @test x_or_y(128,-4,128) == 128
    @test x_or_y(-1,15,0) == 0
    @test x_or_y(34,5,4) == 4
    @test x_or_y(71,74,6) == 74
    @test x_or_y(61,128,1233) == 128
    @test x_or_y(-1,100,15) == 15
    @test x_or_y(33,0,5212) == 5212
    @test x_or_y(35,3,34) == 34
    @test x_or_y(5212,1235,2) == 2
    @test x_or_y(101,5212,33) == 5212
    @test x_or_y(34,16,17) == 17
    @test x_or_y(-5,-4,14) == 14
    @test x_or_y(-100,73,51) == 51
    @test x_or_y(129,0,-1) == -1
    @test x_or_y(33,60,35) == 35
    @test x_or_y(5212,-2,5211) == 5211
    @test x_or_y(0,15,15) == 15
    @test x_or_y(0,35,-101) == -101
    @test x_or_y(128,62,1233) == 1233
    @test x_or_y(128,56,399) == 399
    @test x_or_y(61,7918,7918) == 7918
    @test x_or_y(129,102,127) == 127
    @test x_or_y(34,16,18) == 18
    @test x_or_y(128,-100,128) == 128
    @test x_or_y(2,2,1) == 2
    @test x_or_y(400,2,0) == 0
    @test x_or_y(-1,51,50) == 50
    @test x_or_y(9,-1,399) == 399
    @test x_or_y(-10,4,-10) == -10
    @test x_or_y(-2,-1,-1) == -1
    @test x_or_y(399,4,56) == 56
    @test x_or_y(0,0,72) == 72
    @test x_or_y(7920,5212,7920) == 7920
    @test x_or_y(-4,32,32) == 32
    @test x_or_y(60,4,0) == 0
    @test x_or_y(-100,1,129) == 129
    @test x_or_y(2,-10,127) == -10
    @test x_or_y(73,7,0) == 7
    @test x_or_y(1,2,3) == 3
    @test x_or_y(3,2,2) == 2
    @test x_or_y(-101,0,18) == 18
    @test x_or_y(-101,19,18) == 18
    @test x_or_y(399,128,4) == 4
    @test x_or_y(99,-1,-1) == -1
    @test x_or_y(35,74,74) == 74
    @test x_or_y(56,400,35) == 35
    @test x_or_y(1,2,1234) == 1234
    @test x_or_y(3,17,4) == 17
    @test x_or_y(2,1,1234) == 1
    @test x_or_y(128,399,399) == 399
    @test x_or_y(56,128,56) == 56
    @test x_or_y(99,-10,-10) == -10
    @test x_or_y(17,399,399) == 399
    @test x_or_y(102,103,61) == 61
    @test x_or_y(1,34,51) == 51
    @test x_or_y(0,1,2) == 2
    @test x_or_y(48,34,1233) == 1233
    @test x_or_y(73,101,6) == 101
    @test x_or_y(14,6,7) == 7
    @test x_or_y(-2,7917,4) == 4
    @test x_or_y(-99,103,129) == 129
    @test x_or_y(101,5,15) == 5
    @test x_or_y(5212,34,51) == 51
    @test x_or_y(5212,33,130) == 130
    @test x_or_y(71,15,15) == 15
    @test x_or_y(71,74,-11) == 74
    @test x_or_y(0,5212,399) == 399
    @test x_or_y(102,73,0) == 0
    @test x_or_y(34,14,7917) == 7917
    @test x_or_y(-1,99,15) == 15
    @test x_or_y(1233,1,1) == 1
    @test x_or_y(1,100,100) == 100
    @test x_or_y(129,15,14) == 14
    @test x_or_y(102,129,102) == 102
    @test x_or_y(3,50,4) == 50
    @test x_or_y(399,62,2) == 2
    @test x_or_y(5211,4,5) == 5
    @test x_or_y(72,71,7) == 7
    @test x_or_y(6,-1,18) == 18
    @test x_or_y(0,7,0) == 0
    @test x_or_y(399,-100,399) == 399
    @test x_or_y(3,61,7918) == 61
    @test x_or_y(48,130,5210) == 5210
    @test x_or_y(61,50,60) == 50
    @test x_or_y(60,-100,-100) == -100
    @test x_or_y(57,2,3) == 3
    @test x_or_y(73,0,131) == 0
    @test x_or_y(102,-1,1234) == 1234
    @test x_or_y(103,34,129) == 34
    @test x_or_y(-5,128,-5) == -5
    @test x_or_y(15,15,4) == 4
    @test x_or_y(3,5,6) == 5
    @test x_or_y(128,56,128) == 128
    @test x_or_y(35,17,16) == 16
    @test x_or_y(51,56,56) == 56
    @test x_or_y(-99,-99,60) == 60
    @test x_or_y(48,1,100) == 100
    @test x_or_y(7921,7920,7919) == 7919
    @test x_or_y(7919,4,10) == 4
    @test x_or_y(3,17,103) == 17
    @test x_or_y(1234,2,1) == 1
    @test x_or_y(50,4,50) == 50
    @test x_or_y(131,0,6) == 0
    @test x_or_y(5,0,4) == 0
    @test x_or_y(63,62,50) == 50
    @test x_or_y(5212,56,7920) == 7920
    @test x_or_y(-10,34,-10) == -10
    @test x_or_y(60,60,-100) == -100
    @test x_or_y(5,35,16) == 35
    @test x_or_y(15,-1,17) == 17
    @test x_or_y(34,1235,3) == 3
    @test x_or_y(11,5211,-2) == 5211
    @test x_or_y(400,-1,100) == 100
    @test x_or_y(100,11,11) == 11
    @test x_or_y(50,399,399) == 399
    @test x_or_y(5211,5212,33) == 33
    @test x_or_y(5,60,5) == 60
    @test x_or_y(34,399,399) == 399
    @test x_or_y(129,102,128) == 128
    @test x_or_y(-1,100,-1) == -1
    @test x_or_y(60,-4,60) == 60
    @test x_or_y(60,62,61) == 61
    @test x_or_y(131,131,0) == 131
    @test x_or_y(-100,-1,16) == 16
    @test x_or_y(101,0,0) == 0
    @test x_or_y(7920,-99,7920) == 7920
    @test x_or_y(1235,52,5212) == 5212
    @test x_or_y(-4,14,13) == 13
    @test x_or_y(5212,6,5211) == 5211
    @test x_or_y(1235,56,1235) == 1235
    @test x_or_y(34,16,20) == 20
    @test x_or_y(50,9,9) == 9
    @test x_or_y(72,1235,50) == 50
    @test x_or_y(15,6,0) == 0
    @test x_or_y(9,35,-1) == -1
    @test x_or_y(0,2,1) == 1
    @test x_or_y(15,7917,7917) == 7917
    @test x_or_y(1234,1233,1234) == 1234
    @test x_or_y(57,15,32) == 32
    @test x_or_y(17,17,16) == 17
    @test x_or_y(15,14,399) == 399
    @test x_or_y(129,129,56) == 56
    @test x_or_y(61,127,1233) == 127
    @test x_or_y(7919,7918,7919) == 7918
    @test x_or_y(129,10,10) == 10
    @test x_or_y(33,33,34) == 34
    @test x_or_y(7,72,7919) == 72
    @test x_or_y(57,-10,6) == 6
    @test x_or_y(-10,-4,-11) == -11
    @test x_or_y(103,-1,15) == -1
    @test x_or_y(1234,50,1234) == 1234
    @test x_or_y(101,101,6) == 101
    @test x_or_y(0,2,2) == 2
    @test x_or_y(0,2,1234) == 1234
    @test x_or_y(2,6,1) == 6
    @test x_or_y(74,73,6) == 6
    @test x_or_y(-99,0,129) == 129
    @test x_or_y(18,16,17) == 17
    @test x_or_y(73,73,5) == 73
    @test x_or_y(32,34,32) == 32
    @test x_or_y(34,51,51) == 51
    @test x_or_y(399,5,128) == 128
    @test x_or_y(71,5212,6) == 5212
    @test x_or_y(127,129,129) == 129
    @test x_or_y(34,131,-1) == -1
end