@testitem "102_choose_num_HumanEvalPlus_v0_1_9_test.jl" tags=[:HumanEvalPlus_v0_1_9] begin
    include(joinpath(ENV["GENERATION_DIR"], "102_choose_num.jl"))
    @test choose_num(20,30) == 30
    @test choose_num(30,30) == 30
    @test choose_num(50,60) == 60
    @test choose_num(12,14) == 14
    @test choose_num(10,12) == 12
    @test choose_num(3,5) == 4
    @test choose_num(6,20) == 20
    @test choose_num(100,200) == 200
    @test choose_num(1,2) == 2
    @test choose_num(30,35) == 34
    @test choose_num(100,6) == -1
    @test choose_num(6,30) == 30
    @test choose_num(101,6) == -1
    @test choose_num(21,3) == -1
    @test choose_num(14,14) == 14
    @test choose_num(100,100) == 100
    @test choose_num(100,35) == -1
    @test choose_num(35,101) == 100
    @test choose_num(60,60) == 60
    @test choose_num(35,35) == -1
    @test choose_num(5,6) == 6
    @test choose_num(2,35) == 34
    @test choose_num(60,50) == -1
    @test choose_num(28,1) == -1
    @test choose_num(35,200) == 200
    @test choose_num(200,5) == -1
    @test choose_num(60,6) == -1
    @test choose_num(20,20) == 20
    @test choose_num(30,6) == -1
    @test choose_num(28,35) == 34
    @test choose_num(200,200) == 200
    @test choose_num(20,36) == 36
    @test choose_num(1,6) == 6
    @test choose_num(30,1) == -1
    @test choose_num(21,5) == -1
    @test choose_num(35,199) == 198
    @test choose_num(11,14) == 14
    @test choose_num(201,201) == -1
    @test choose_num(6,5) == -1
    @test choose_num(13,10) == -1
    @test choose_num(12,16) == 16
    @test choose_num(199,12) == -1
    @test choose_num(14,13) == -1
    @test choose_num(1,1) == -1
    @test choose_num(60,11) == -1
    @test choose_num(13,35) == 34
    @test choose_num(100,30) == -1
    @test choose_num(12,12) == 12
    @test choose_num(15,14) == -1
    @test choose_num(5,5) == -1
    @test choose_num(36,29) == -1
    @test choose_num(12,11) == -1
    @test choose_num(100,15) == -1
    @test choose_num(27,28) == 28
    @test choose_num(200,201) == 200
    @test choose_num(11,201) == 200
    @test choose_num(10,11) == 10
    @test choose_num(100,13) == -1
    @test choose_num(15,29) == 28
    @test choose_num(200,101) == -1
    @test choose_num(3,3) == -1
    @test choose_num(101,15) == -1
    @test choose_num(36,35) == -1
    @test choose_num(34,101) == 100
    @test choose_num(101,101) == -1
    @test choose_num(1,14) == 14
    @test choose_num(30,21) == -1
    @test choose_num(12,3) == -1
    @test choose_num(10,4) == -1
    @test choose_num(2,2) == 2
    @test choose_num(21,20) == -1
    @test choose_num(30,50) == 50
    @test choose_num(200,199) == -1
    @test choose_num(3,101) == 100
    @test choose_num(6,15) == 14
    @test choose_num(50,59) == 58
    @test choose_num(11,11) == -1
    @test choose_num(12,13) == 12
    @test choose_num(29,35) == 34
    @test choose_num(30,201) == 200
    @test choose_num(99,5) == -1
    @test choose_num(60,21) == -1
    @test choose_num(20,5) == -1
    @test choose_num(6,35) == 34
    @test choose_num(6,36) == 36
    @test choose_num(100,98) == -1
    @test choose_num(5,200) == 200
    @test choose_num(31,50) == 50
    @test choose_num(60,59) == -1
    @test choose_num(59,21) == -1
    @test choose_num(101,34) == -1
    @test choose_num(1,15) == 14
    @test choose_num(201,1) == -1
    @test choose_num(35,50) == 50
    @test choose_num(50,3) == -1
    @test choose_num(10,35) == 34
    @test choose_num(14,30) == 30
    @test choose_num(201,200) == -1
    @test choose_num(201,199) == -1
    @test choose_num(61,60) == -1
    @test choose_num(23,27) == 26
    @test choose_num(8,10) == 10
    @test choose_num(10,17) == 16
    @test choose_num(999,998) == -1
    @test choose_num(7,20) == 20
    @test choose_num(17,21) == 20
    @test choose_num(31,99) == 98
    @test choose_num(1000,2000) == 2000
    @test choose_num(2,20) == 20
    @test choose_num(24,27) == 26
    @test choose_num(17,24) == 24
    @test choose_num(18,31) == 30
    @test choose_num(998,998) == 998
    @test choose_num(31,1) == -1
    @test choose_num(20,21) == 20
    @test choose_num(1,7) == 6
    @test choose_num(23,100) == 100
    @test choose_num(100,23) == -1
    @test choose_num(101,100) == -1
    @test choose_num(18,32) == 32
    @test choose_num(99,99) == -1
    @test choose_num(101,18) == -1
    @test choose_num(998,31) == -1
    @test choose_num(7,24) == 24
    @test choose_num(2000,21) == -1
    @test choose_num(19,20) == 20
    @test choose_num(1000,2) == -1
    @test choose_num(2,3) == 2
    @test choose_num(8,1) == -1
    @test choose_num(31,999) == 998
    @test choose_num(1,23) == 22
    @test choose_num(18,33) == 32
    @test choose_num(10,2) == -1
    @test choose_num(7,7) == -1
    @test choose_num(100,998) == 998
    @test choose_num(10,20) == 20
    @test choose_num(31,20) == -1
    @test choose_num(8,24) == 24
    @test choose_num(24,24) == 24
    @test choose_num(32,1) == -1
    @test choose_num(18,18) == 18
    @test choose_num(20,19) == -1
    @test choose_num(2,100) == 100
    @test choose_num(99,31) == -1
    @test choose_num(100,1000) == 1000
    @test choose_num(1,19) == 18
    @test choose_num(31,31) == -1
    @test choose_num(32,7) == -1
    @test choose_num(20,27) == 26
    @test choose_num(2,31) == 30
    @test choose_num(32,6) == -1
    @test choose_num(10,10) == 10
    @test choose_num(2,5) == 4
    @test choose_num(2000,998) == -1
    @test choose_num(24,33) == 32
    @test choose_num(17,17) == -1
    @test choose_num(8,9) == 8
    @test choose_num(33,2000) == 2000
    @test choose_num(20,31) == 30
    @test choose_num(1,8) == 8
    @test choose_num(102,22) == -1
    @test choose_num(1000,24) == -1
    @test choose_num(9,10) == 10
    @test choose_num(18,6) == -1
    @test choose_num(24,99) == 98
    @test choose_num(10,101) == 100
    @test choose_num(100,10) == -1
    @test choose_num(24,7) == -1
    @test choose_num(2,17) == 16
    @test choose_num(1000,22) == -1
    @test choose_num(20,22) == 22
    @test choose_num(23,21) == -1
    @test choose_num(9,24) == 24
    @test choose_num(32,3) == -1
    @test choose_num(9,5) == -1
    @test choose_num(3,1) == -1
    @test choose_num(2000,2000) == 2000
    @test choose_num(22,32) == 32
    @test choose_num(8,7) == -1
    @test choose_num(3,2) == -1
    @test choose_num(31,32) == 32
    @test choose_num(27,6) == -1
    @test choose_num(7,2000) == 2000
    @test choose_num(27,101) == 100
    @test choose_num(20,7) == -1
    @test choose_num(2,1) == -1
    @test choose_num(17,33) == 32
    @test choose_num(10,24) == 24
    @test choose_num(33,33) == -1
    @test choose_num(100,31) == -1
    @test choose_num(23,18) == -1
    @test choose_num(99,998) == 998
    @test choose_num(23,31) == 30
    @test choose_num(21,21) == -1
    @test choose_num(99,32) == -1
    @test choose_num(1000,10) == -1
    @test choose_num(1000,1) == -1
    @test choose_num(100,22) == -1
    @test choose_num(23,6) == -1
    @test choose_num(2,21) == 20
    @test choose_num(18,8) == -1
    @test choose_num(17,32) == 32
    @test choose_num(2,28) == 28
    @test choose_num(33,32) == -1
    @test choose_num(4,7) == 6
    @test choose_num(23,23) == -1
    @test choose_num(2001,2000) == -1
    @test choose_num(22,99) == 98
    @test choose_num(1000,28) == -1
    @test choose_num(1,2001) == 2000
    @test choose_num(22,4) == -1
    @test choose_num(8,2) == -1
    @test choose_num(11,10) == -1
    @test choose_num(8,8) == 8
    @test choose_num(32,22) == -1
    @test choose_num(1999,2000) == 2000
    @test choose_num(23,32) == 32
    @test choose_num(5,24) == 24
    @test choose_num(17,102) == 102
    @test choose_num(32,32) == 32
    @test choose_num(7,18) == 18
    @test choose_num(29,28) == -1
    @test choose_num(99,10) == -1
    @test choose_num(22,31) == 30
    @test choose_num(2,4) == 4
    @test choose_num(99,100) == 100
    @test choose_num(7,1) == -1
    @test choose_num(6,1999) == 1998
    @test choose_num(10,25) == 24
    @test choose_num(28,28) == 28
    @test choose_num(1000,2001) == 2000
    @test choose_num(17,7) == -1
    @test choose_num(1999,28) == -1
    @test choose_num(27,27) == -1
    @test choose_num(21,19) == -1
    @test choose_num(998,100) == -1
    @test choose_num(32,33) == 32
    @test choose_num(24,10) == -1
    @test choose_num(33,24) == -1
    @test choose_num(99,6) == -1
    @test choose_num(998,32) == -1
    @test choose_num(32,34) == 34
    @test choose_num(25,20) == -1
    @test choose_num(33,3) == -1
    @test choose_num(998,1999) == 1998
    @test choose_num(24,28) == 28
    @test choose_num(24,1999) == 1998
    @test choose_num(31,18) == -1
    @test choose_num(22,17) == -1
    @test choose_num(99,3) == -1
    @test choose_num(11,5) == -1
    @test choose_num(999,102) == -1
    @test choose_num(4,2) == -1
    @test choose_num(23,24) == 24
    @test choose_num(24,9) == -1
    @test choose_num(8,998) == 998
    @test choose_num(99,20) == -1
    @test choose_num(11,9) == -1
    @test choose_num(32,11) == -1
    @test choose_num(20,1999) == 1998
    @test choose_num(19,24) == 24
    @test choose_num(1000,6) == -1
    @test choose_num(1999,1) == -1
    @test choose_num(19,19) == -1
    @test choose_num(29,1) == -1
    @test choose_num(5,31) == 30
    @test choose_num(1001,18) == -1
    @test choose_num(29,18) == -1
    @test choose_num(8,20) == 20
    @test choose_num(4,4) == 4
    @test choose_num(2000,99) == -1
    @test choose_num(32,18) == -1
    @test choose_num(1,18) == 18
    @test choose_num(10,1) == -1
    @test choose_num(6,7) == 6
    @test choose_num(6,34) == 34
    @test choose_num(26,25) == -1
    @test choose_num(24,25) == 24
    @test choose_num(9,9) == -1
    @test choose_num(32,1001) == 1000
    @test choose_num(28,2) == -1
    @test choose_num(9,20) == 20
    @test choose_num(4,27) == 26
    @test choose_num(1,10) == 10
    @test choose_num(27,10) == -1
    @test choose_num(2000,16) == -1
    @test choose_num(20,32) == 32
    @test choose_num(1999,1999) == -1
    @test choose_num(102,10) == -1
    @test choose_num(999,18) == -1
    @test choose_num(9,8) == -1
    @test choose_num(5,10) == 10
    @test choose_num(9,6) == -1
    @test choose_num(999,999) == -1
    @test choose_num(2000,101) == -1
    @test choose_num(10,29) == 28
    @test choose_num(22,8) == -1
    @test choose_num(16,6) == -1
    @test choose_num(10,32) == 32
    @test choose_num(17,34) == 34
    @test choose_num(10,28) == 28
    @test choose_num(7,102) == 102
    @test choose_num(1001,1001) == -1
    @test choose_num(25,33) == 32
    @test choose_num(101,20) == -1
    @test choose_num(27,100) == 100
    @test choose_num(23,101) == 100
    @test choose_num(18,17) == -1
    @test choose_num(10,5) == -1
    @test choose_num(22,21) == -1
    @test choose_num(21,998) == 998
    @test choose_num(22,22) == 22
    @test choose_num(2,16) == 16
    @test choose_num(999,24) == -1
    @test choose_num(18,21) == 20
    @test choose_num(1000,1000) == 1000
    @test choose_num(22,10) == -1
    @test choose_num(99,999) == 998
    @test choose_num(7,6) == -1
    @test choose_num(99,26) == -1
    @test choose_num(11,102) == 102
    @test choose_num(998,999) == 998
    @test choose_num(1,99) == 98
    @test choose_num(102,20) == -1
    @test choose_num(6,1000) == 1000
    @test choose_num(17,1000) == 1000
    @test choose_num(103,7) == -1
    @test choose_num(1999,21) == -1
    @test choose_num(1999,997) == -1
    @test choose_num(7,9) == 8
    @test choose_num(1003,1002) == -1
    @test choose_num(28,998) == 998
    @test choose_num(2,1002) == 1002
    @test choose_num(19,31) == 30
    @test choose_num(32,10) == -1
    @test choose_num(1,999) == 998
    @test choose_num(7,3) == -1
    @test choose_num(31,16) == -1
    @test choose_num(7,99) == 98
    @test choose_num(7,17) == 16
    @test choose_num(99,98) == -1
    @test choose_num(100,21) == -1
    @test choose_num(100,11) == -1
    @test choose_num(20,25) == 24
    @test choose_num(9,99) == 98
    @test choose_num(25,100) == 100
    @test choose_num(2,32) == 32
    @test choose_num(100,101) == 100
    @test choose_num(33,2001) == 2000
    @test choose_num(98,32) == -1
    @test choose_num(2001,2001) == -1
    @test choose_num(6,21) == 20
    @test choose_num(24,6) == -1
    @test choose_num(4,20) == 20
    @test choose_num(1003,1001) == -1
    @test choose_num(100,2000) == 2000
    @test choose_num(1999,1000) == -1
    @test choose_num(30,7) == -1
    @test choose_num(103,998) == 998
    @test choose_num(999,99) == -1
    @test choose_num(34,25) == -1
    @test choose_num(19,3) == -1
    @test choose_num(1002,1003) == 1002
    @test choose_num(34,4) == -1
    @test choose_num(17,99) == 98
    @test choose_num(23,1001) == 1000
    @test choose_num(1,3) == 2
    @test choose_num(22,23) == 22
    @test choose_num(7,2) == -1
    @test choose_num(1999,19) == -1
    @test choose_num(3,32) == 32
    @test choose_num(6,18) == 18
    @test choose_num(23,997) == 996
    @test choose_num(17,29) == 28
    @test choose_num(27,62) == 62
    @test choose_num(26,28) == 28
    @test choose_num(1001,7) == -1
    @test choose_num(22,5) == -1
    @test choose_num(997,998) == 998
    @test choose_num(29,100) == 100
    @test choose_num(22,100) == 100
    @test choose_num(22,6) == -1
    @test choose_num(62,62) == 62
    @test choose_num(34,34) == 34
    @test choose_num(32,21) == -1
    @test choose_num(29,6) == -1
    @test choose_num(16,3) == -1
    @test choose_num(998,10) == -1
    @test choose_num(1999,99) == -1
    @test choose_num(27,7) == -1
    @test choose_num(17,98) == 98
    @test choose_num(34,5) == -1
    @test choose_num(30,99) == 98
    @test choose_num(17,30) == 30
    @test choose_num(104,7) == -1
    @test choose_num(100,62) == -1
    @test choose_num(28,27) == -1
    @test choose_num(100,3) == -1
    @test choose_num(4,998) == 998
    @test choose_num(3,21) == 20
    @test choose_num(10,98) == 98
    @test choose_num(1002,1999) == 1998
    @test choose_num(98,21) == -1
    @test choose_num(4,10) == 10
    @test choose_num(25,17) == -1
    @test choose_num(24,23) == -1
    @test choose_num(2000,2001) == 2000
    @test choose_num(1003,998) == -1
    @test choose_num(998,997) == -1
    @test choose_num(32,1002) == 1002
    @test choose_num(28,1001) == 1000
    @test choose_num(22,1) == -1
    @test choose_num(24,26) == 26
    @test choose_num(27,104) == 104
    @test choose_num(103,1001) == 1000
    @test choose_num(11,12) == 12
    @test choose_num(6,8) == 8
    @test choose_num(101,32) == -1
    @test choose_num(1000,999) == -1
    @test choose_num(10,21) == 20
    @test choose_num(999,28) == -1
    @test choose_num(100,99) == -1
    @test choose_num(34,33) == -1
    @test choose_num(5,20) == 20
    @test choose_num(20,34) == 34
    @test choose_num(33,1002) == 1002
    @test choose_num(30,3) == -1
    @test choose_num(1000,29) == -1
    @test choose_num(12,29) == 28
    @test choose_num(4,24) == 24
    @test choose_num(20,102) == 102
    @test choose_num(29,98) == 98
    @test choose_num(70,70) == 70
    @test choose_num(18,62) == 62
    @test choose_num(18,19) == 18
    @test choose_num(5,16) == 16
    @test choose_num(1002,1002) == 1002
    @test choose_num(11,93) == 92
    @test choose_num(18,3) == -1
    @test choose_num(98,7) == -1
    @test choose_num(29,29) == -1
    @test choose_num(16,17) == 16
    @test choose_num(34,2) == -1
    @test choose_num(9,93) == 92
    @test choose_num(30,103) == 102
    @test choose_num(1001,70) == -1
    @test choose_num(23,1999) == 1998
    @test choose_num(1001,998) == -1
    @test choose_num(26,99) == 98
    @test choose_num(21,18) == -1
    @test choose_num(998,8) == -1
    @test choose_num(21,22) == 22
    @test choose_num(23,1) == -1
    @test choose_num(1003,1003) == -1
    @test choose_num(23,998) == 998
    @test choose_num(2000,3) == -1
    @test choose_num(25,28) == 28
    @test choose_num(2,27) == 26
    @test choose_num(102,102) == 102
    @test choose_num(1004,1003) == -1
    @test choose_num(103,99) == -1
    @test choose_num(70,100) == 100
    @test choose_num(32,104) == 104
    @test choose_num(1003,7) == -1
    @test choose_num(5,3) == -1
    @test choose_num(18,98) == 98
    @test choose_num(25,27) == 26
    @test choose_num(22,1000) == 1000
    @test choose_num(103,103) == -1
    @test choose_num(1000,1001) == 1000
    @test choose_num(1002,1001) == -1
    @test choose_num(4,31) == 30
    @test choose_num(102,101) == -1
    @test choose_num(2000,1004) == -1
    @test choose_num(21,8) == -1
    @test choose_num(99,70) == -1
    @test choose_num(3,1002) == 1002
    @test choose_num(20,8) == -1
    @test choose_num(1003,1004) == 1004
    @test choose_num(33,30) == -1
    @test choose_num(6,6) == 6
    @test choose_num(25,9) == -1
    @test choose_num(31,4) == -1
    @test choose_num(70,5) == -1
    @test choose_num(31,28) == -1
    @test choose_num(19,33) == 32
    @test choose_num(3,4) == 4
    @test choose_num(5,9) == 8
    @test choose_num(1999,1004) == -1
    @test choose_num(104,29) == -1
    @test choose_num(62,998) == 998
    @test choose_num(25,99) == 98
    @test choose_num(21,1999) == 1998
    @test choose_num(33,34) == 34
    @test choose_num(997,4) == -1
    @test choose_num(102,998) == 998
    @test choose_num(1000,19) == -1
    @test choose_num(23,10) == -1
    @test choose_num(1004,1004) == 1004
    @test choose_num(997,2001) == 2000
    @test choose_num(998,6) == -1
    @test choose_num(30,29) == -1
    @test choose_num(10,998) == 998
    @test choose_num(4,9) == 8
    @test choose_num(70,32) == -1
    @test choose_num(27,20) == -1
    @test choose_num(102,21) == -1
    @test choose_num(8,3) == -1
    @test choose_num(19,4) == -1
    @test choose_num(33,6) == -1
    @test choose_num(12,23) == 22
    @test choose_num(1,17) == 16
    @test choose_num(29,99) == 98
    @test choose_num(102,99) == -1
    @test choose_num(24,29) == 28
    @test choose_num(7,22) == 22
    @test choose_num(28,12) == -1
    @test choose_num(1001,99) == -1
    @test choose_num(22,71) == 70
    @test choose_num(3,27) == 26
    @test choose_num(999,23) == -1
    @test choose_num(7,10) == 10
    @test choose_num(18,1) == -1
    @test choose_num(63,102) == 102
    @test choose_num(25,29) == 28
    @test choose_num(103,6) == -1
    @test choose_num(8,6) == -1
    @test choose_num(28,25) == -1
    @test choose_num(99,12) == -1
    @test choose_num(10,27) == 26
    @test choose_num(32,30) == -1
    @test choose_num(21,30) == 30
    @test choose_num(996,2001) == 2000
    @test choose_num(104,27) == -1
    @test choose_num(28,17) == -1
    @test choose_num(999,1000) == 1000
    @test choose_num(103,104) == 104
    @test choose_num(16,34) == 34
    @test choose_num(11,8) == -1
    @test choose_num(2000,24) == -1
    @test choose_num(16,35) == 34
    @test choose_num(32,31) == -1
    @test choose_num(26,23) == -1
    @test choose_num(27,26) == -1
    @test choose_num(9,21) == 20
    @test choose_num(18,20) == 20
    @test choose_num(29,17) == -1
    @test choose_num(2,33) == 32
    @test choose_num(32,23) == -1
    @test choose_num(22,9) == -1
    @test choose_num(17,5) == -1
    @test choose_num(10,22) == 22
    @test choose_num(34,20) == -1
    @test choose_num(9,2) == -1
    @test choose_num(11,998) == 998
    @test choose_num(35,1) == -1
    @test choose_num(23,102) == 102
    @test choose_num(22,2001) == 2000
    @test choose_num(2000,23) == -1
    @test choose_num(24,30) == 30
    @test choose_num(2000,62) == -1
    @test choose_num(100,63) == -1
    @test choose_num(996,4) == -1
    @test choose_num(18,4) == -1
    @test choose_num(101,71) == -1
    @test choose_num(1003,20) == -1
    @test choose_num(70,21) == -1
    @test choose_num(10,3) == -1
    @test choose_num(72,71) == -1
    @test choose_num(27,1002) == 1002
    @test choose_num(31,17) == -1
    @test choose_num(1998,1999) == 1998
    @test choose_num(62,21) == -1
    @test choose_num(71,71) == -1
    @test choose_num(2001,21) == -1
    @test choose_num(9,104) == 104
    @test choose_num(1004,18) == -1
    @test choose_num(18,2) == -1
    @test choose_num(7,1000) == 1000
    @test choose_num(19,32) == 32
    @test choose_num(17,2000) == 2000
    @test choose_num(104,103) == -1
    @test choose_num(27,18) == -1
    @test choose_num(21,31) == 30
    @test choose_num(1,1004) == 1004
    @test choose_num(1999,98) == -1
    @test choose_num(21,7) == -1
    @test choose_num(30,17) == -1
    @test choose_num(1998,1998) == 1998
    @test choose_num(101,102) == 102
    @test choose_num(17,8) == -1
    @test choose_num(29,12) == -1
    @test choose_num(2001,16) == -1
    @test choose_num(1000000,1000001) == 1000000
    @test choose_num(10,23) == 22
    @test choose_num(27,23) == -1
    @test choose_num(2000,999) == -1
    @test choose_num(1,21) == 20
    @test choose_num(8,23) == 22
    @test choose_num(30,23) == -1
    @test choose_num(10,16) == 16
    @test choose_num(23,8) == -1
    @test choose_num(27,17) == -1
    @test choose_num(2000,17) == -1
    @test choose_num(7,31) == 30
    @test choose_num(7,27) == 26
    @test choose_num(999,30) == -1
    @test choose_num(2000,100) == -1
    @test choose_num(30,2) == -1
    @test choose_num(21,10) == -1
    @test choose_num(999,2000) == 2000
    @test choose_num(100,2) == -1
    @test choose_num(10,18) == 18
    @test choose_num(99,2) == -1
    @test choose_num(99,23) == -1
    @test choose_num(22,2000) == 2000
    @test choose_num(1000,9) == -1
    @test choose_num(10,2001) == 2000
    @test choose_num(30,22) == -1
    @test choose_num(1000,17) == -1
    @test choose_num(999,17) == -1
    @test choose_num(999,100) == -1
    @test choose_num(9,2000) == 2000
    @test choose_num(999,2001) == 2000
    @test choose_num(99,1000) == 1000
    @test choose_num(31,21) == -1
    @test choose_num(2001,20) == -1
    @test choose_num(27,2) == -1
    @test choose_num(23,9) == -1
    @test choose_num(29,23) == -1
    @test choose_num(1999,29) == -1
    @test choose_num(27,2001) == 2000
    @test choose_num(5,23) == 22
    @test choose_num(10,100) == 100
    @test choose_num(101,2000) == 2000
    @test choose_num(999,1) == -1
    @test choose_num(99,7) == -1
    @test choose_num(23,2001) == 2000
    @test choose_num(9,16) == 16
    @test choose_num(5,2) == -1
    @test choose_num(10,9) == -1
    @test choose_num(30,16) == -1
    @test choose_num(27,2000) == 2000
    @test choose_num(17,2001) == 2000
    @test choose_num(998,1000) == 1000
    @test choose_num(22,18) == -1
    @test choose_num(1999,999) == -1
    @test choose_num(10,1999) == 1998
    @test choose_num(29,999) == 998
    @test choose_num(1999,31) == -1
    @test choose_num(99,16) == -1
    @test choose_num(16,10) == -1
    @test choose_num(11,30) == 30
    @test choose_num(11,2) == -1
    @test choose_num(10,31) == 30
    @test choose_num(999,9) == -1
    @test choose_num(99,1) == -1
    @test choose_num(22,30) == 30
    @test choose_num(31,7) == -1
    @test choose_num(23,17) == -1
    @test choose_num(29,101) == 100
    @test choose_num(2002,2002) == 2002
    @test choose_num(999,2002) == 2002
    @test choose_num(2000,18) == -1
    @test choose_num(16,21) == 20
    @test choose_num(99,17) == -1
    @test choose_num(10,7) == -1
    @test choose_num(21,16) == -1
    @test choose_num(23,7) == -1
    @test choose_num(1999,8) == -1
    @test choose_num(999,20) == -1
    @test choose_num(8,22) == 22
    @test choose_num(26,27) == 26
    @test choose_num(1000,16) == -1
    @test choose_num(21,27) == 26
    @test choose_num(17,22) == 22
    @test choose_num(999,21) == -1
    @test choose_num(15,21) == 20
    @test choose_num(26,7) == -1
    @test choose_num(10,2000) == 2000
    @test choose_num(11,100) == 100
    @test choose_num(21,23) == 22
    @test choose_num(5,18) == 18
    @test choose_num(9,1999) == 1998
    @test choose_num(18,7) == -1
    @test choose_num(99,101) == 100
    @test choose_num(44,1999) == 1998
    @test choose_num(44,43) == -1
    @test choose_num(16,16) == 16
    @test choose_num(30,10) == -1
    @test choose_num(2000,7) == -1
    @test choose_num(11,99) == 98
    @test choose_num(99,24) == -1
    @test choose_num(2000,1) == -1
    @test choose_num(11,31) == 30
    @test choose_num(28,2001) == 2000
    @test choose_num(999,10) == -1
    @test choose_num(1001,24) == -1
    @test choose_num(29,22) == -1
    @test choose_num(2000,20) == -1
    @test choose_num(7,999) == 998
    @test choose_num(2001,100) == -1
    @test choose_num(99,30) == -1
    @test choose_num(18,43) == 42
    @test choose_num(6,17) == 16
    @test choose_num(24,2001) == 2000
    @test choose_num(102,30) == -1
    @test choose_num(11,22) == 22
    @test choose_num(999,5) == -1
    @test choose_num(99,1999) == 1998
    @test choose_num(20,1001) == 1000
    @test choose_num(19,7) == -1
    @test choose_num(20,2000) == 2000
    @test choose_num(7,8) == 8
    @test choose_num(2001,1001) == -1
    @test choose_num(98,99) == 98
    @test choose_num(7,19) == 18
    @test choose_num(102,15) == -1
    @test choose_num(11,21) == 20
    @test choose_num(19,1001) == 1000
    @test choose_num(98,1000) == 1000
    @test choose_num(26,100) == 100
    @test choose_num(999,19) == -1
    @test choose_num(21,1000) == 1000
    @test choose_num(2002,31) == -1
    @test choose_num(23,99) == 98
    @test choose_num(26,2000) == 2000
    @test choose_num(98,17) == -1
    @test choose_num(2002,30) == -1
    @test choose_num(23,1002) == 1002
    @test choose_num(2001,9) == -1
    @test choose_num(102,999) == 998
    @test choose_num(9,11) == 10
    @test choose_num(1999,11) == -1
    @test choose_num(31,8) == -1
    @test choose_num(29,997) == 996
    @test choose_num(100,102) == 102
    @test choose_num(23,98) == 98
    @test choose_num(1999,17) == -1
    @test choose_num(5,102) == 102
    @test choose_num(28,8) == -1
    @test choose_num(24,17) == -1
    @test choose_num(29,5) == -1
    @test choose_num(15,15) == -1
    @test choose_num(1001,11) == -1
    @test choose_num(999,26) == -1
    @test choose_num(9,22) == 22
    @test choose_num(44,9) == -1
    @test choose_num(2002,997) == -1
    @test choose_num(2000,10) == -1
    @test choose_num(7,23) == 22
    @test choose_num(18,2001) == 2000
    @test choose_num(5,1999) == 1998
    @test choose_num(2000,5) == -1
    @test choose_num(101,10) == -1
    @test choose_num(2003,11) == -1
    @test choose_num(31,6) == -1
    @test choose_num(30,5) == -1
    @test choose_num(2001,7) == -1
    @test choose_num(28,30) == 30
    @test choose_num(1999,30) == -1
    @test choose_num(24,5) == -1
    @test choose_num(1001,23) == -1
    @test choose_num(998,1) == -1
    @test choose_num(9,2002) == 2002
    @test choose_num(15,10) == -1
    @test choose_num(16,9) == -1
    @test choose_num(102,24) == -1
    @test choose_num(998,29) == -1
    @test choose_num(2002,2000) == -1
    @test choose_num(21,999) == 998
    @test choose_num(44,6) == -1
    @test choose_num(25,2003) == 2002
    @test choose_num(10,999) == 998
    @test choose_num(102,100) == -1
    @test choose_num(1001,100) == -1
    @test choose_num(15,2) == -1
    @test choose_num(19,22) == 22
    @test choose_num(2002,10) == -1
    @test choose_num(23,15) == -1
    @test choose_num(8,2001) == 2000
    @test choose_num(25,5) == -1
    @test choose_num(2001,2002) == 2002
    @test choose_num(27,30) == 30
    @test choose_num(26,101) == 100
    @test choose_num(1001,22) == -1
    @test choose_num(5,21) == 20
    @test choose_num(99,21) == -1
    @test choose_num(28,29) == 28
    @test choose_num(6,2002) == 2002
    @test choose_num(2000,1000) == -1
    @test choose_num(8,27) == 26
    @test choose_num(31,1001) == 1000
    @test choose_num(32,5) == -1
    @test choose_num(2004,2003) == -1
    @test choose_num(15,16) == 16
    @test choose_num(18,16) == -1
    @test choose_num(10,15) == 14
    @test choose_num(1,30) == 30
    @test choose_num(1,1001) == 1000
    @test choose_num(2001,17) == -1
    @test choose_num(2002,2001) == -1
    @test choose_num(99,1002) == 1002
    @test choose_num(29,2001) == 2000
    @test choose_num(30,15) == -1
    @test choose_num(6,1001) == 1000
    @test choose_num(20,26) == 26
    @test choose_num(30,100) == 100
    @test choose_num(1002,22) == -1
    @test choose_num(10,1998) == 1998
    @test choose_num(31,10) == -1
    @test choose_num(998,101) == -1
    @test choose_num(28,31) == 30
    @test choose_num(26,102) == 102
    @test choose_num(1,997) == 996
    @test choose_num(23,22) == -1
    @test choose_num(29,30) == 30
    @test choose_num(101,21) == -1
    @test choose_num(7,32) == 32
    @test choose_num(998,23) == -1
    @test choose_num(2003,7) == -1
    @test choose_num(43,1) == -1
    @test choose_num(1001,20) == -1
    @test choose_num(24,2003) == 2002
    @test choose_num(17,999) == 998
    @test choose_num(1001,30) == -1
    @test choose_num(1998,999) == -1
    @test choose_num(22,27) == 26
    @test choose_num(14,15) == 14
    @test choose_num(1998,9) == -1
    @test choose_num(9,2001) == 2000
    @test choose_num(998,28) == -1
    @test choose_num(24,20) == -1
    @test choose_num(1,2000) == 2000
    @test choose_num(22,999) == 998
    @test choose_num(96,99) == 98
    @test choose_num(999,7) == -1
    @test choose_num(99,25) == -1
    @test choose_num(6,26) == 26
    @test choose_num(1001,101) == -1
    @test choose_num(1,29) == 28
    @test choose_num(16,1) == -1
    @test choose_num(100,5) == -1
    @test choose_num(19,1999) == 1998
    @test choose_num(22,1999) == 1998
    @test choose_num(25,24) == -1
    @test choose_num(3,998) == 998
    @test choose_num(44,99) == 98
    @test choose_num(2000,9) == -1
    @test choose_num(1998,31) == -1
    @test choose_num(1999,27) == -1
    @test choose_num(31,14) == -1
    @test choose_num(15,999) == 998
    @test choose_num(27,29) == 28
    @test choose_num(1999,101) == -1
    @test choose_num(24,104) == 104
    @test choose_num(998,9) == -1
    @test choose_num(997,23) == -1
    @test choose_num(26,6) == -1
    @test choose_num(997,101) == -1
    @test choose_num(4,22) == 22
    @test choose_num(2004,31) == -1
    @test choose_num(31,30) == -1
    @test choose_num(1000,23) == -1
    @test choose_num(24,16) == -1
    @test choose_num(98,98) == 98
    @test choose_num(28,16) == -1
    @test choose_num(100,19) == -1
    @test choose_num(44,7) == -1
    @test choose_num(16,5) == -1
    @test choose_num(26,999) == 998
    @test choose_num(100,1002) == 1002
    @test choose_num(997,22) == -1
    @test choose_num(16,2001) == 2000
    @test choose_num(2002,2003) == 2002
    @test choose_num(1998,2000) == 2000
    @test choose_num(16,15) == -1
    @test choose_num(98,1001) == 1000
    @test choose_num(29,2003) == 2002
    @test choose_num(21,100) == 100
    @test choose_num(2000,1999) == -1
    @test choose_num(1000,1999) == 1998
    @test choose_num(1999,102) == -1
    @test choose_num(29,1002) == 1002
    @test choose_num(6,99) == 98
    @test choose_num(103,102) == -1
    @test choose_num(100,1001) == 1000
    @test choose_num(31,24) == -1
    @test choose_num(25,26) == 26
    @test choose_num(21,6) == -1
    @test choose_num(8,26) == 26
    @test choose_num(26,5) == -1
    @test choose_num(1000,998) == -1
    @test choose_num(44,44) == 44
    @test choose_num(2004,8) == -1
    @test choose_num(9,7) == -1
    @test choose_num(20,16) == -1
    @test choose_num(103,27) == -1
    @test choose_num(102,18) == -1
    @test choose_num(998,2001) == 2000
    @test choose_num(101,104) == 104
    @test choose_num(4,102) == 102
    @test choose_num(24,2004) == 2004
    @test choose_num(6,4) == -1
    @test choose_num(2001,104) == -1
    @test choose_num(17,28) == 28
    @test choose_num(100,43) == -1
    @test choose_num(1001,2004) == 2004
    @test choose_num(1998,43) == -1
    @test choose_num(2002,999) == -1
    @test choose_num(43,30) == -1
    @test choose_num(102,9) == -1
    @test choose_num(2003,5) == -1
    @test choose_num(1002,102) == -1
    @test choose_num(1999,998) == -1
    @test choose_num(2003,10) == -1
    @test choose_num(14,2) == -1
    @test choose_num(32,2001) == 2000
    @test choose_num(1000,30) == -1
    @test choose_num(8,103) == 102
    @test choose_num(999,1999) == 1998
    @test choose_num(43,43) == -1
    @test choose_num(96,96) == 96
    @test choose_num(16,2002) == 2002
    @test choose_num(7,2002) == 2002
    @test choose_num(23,34) == 34
    @test choose_num(22,11) == -1
    @test choose_num(5,15) == 14
    @test choose_num(26,26) == 26
    @test choose_num(8,5) == -1
    @test choose_num(96,4) == -1
    @test choose_num(15,20) == 20
    @test choose_num(12,8) == -1
    @test choose_num(2,999) == 998
    @test choose_num(21,2000) == 2000
    @test choose_num(20,98) == 98
    @test choose_num(1,2004) == 2004
    @test choose_num(997,997) == -1
    @test choose_num(21,102) == 102
    @test choose_num(18,9) == -1
    @test choose_num(14,998) == 998
    @test choose_num(28,2003) == 2002
    @test choose_num(23,20) == -1
    @test choose_num(2,22) == 22
end