@testitem "067_fruit_distribution_HumanEvalPlus_v0_1_9_test.jl" tags=[:HumanEvalPlus_v0_1_9] begin
    include(joinpath(ENV["GENERATION_DIR"], "067_fruit_distribution.jl"))
    @test fruit_distribution("10 apples and 20 oranges",50) == 20
    @test fruit_distribution("3 apples and 4 oranges",9) == 2
    @test fruit_distribution("7 apples and 8 oranges",30) == 15
    @test fruit_distribution("2 apples and 0 oranges",5) == 3
    @test fruit_distribution("0 apples and 0 oranges",10) == 10
    @test fruit_distribution("0 apples and 1 oranges",1) == 0
    @test fruit_distribution("10 apples and 0 oranges",15) == 5
    @test fruit_distribution("3 apples and 5 oranges",12) == 4
    @test fruit_distribution("5 apples and 5 oranges",12) == 2
    @test fruit_distribution("8 apples and 2 oranges",15) == 5
    @test fruit_distribution("2 apples and 0 oranges",12) == 10
    @test fruit_distribution("2 apples and 0 oranges",30) == 28
    @test fruit_distribution("0 apples and 0 oranges",9) == 9
    @test fruit_distribution("0 apples and 1 oranges",50) == 49
    @test fruit_distribution("0 apples and 1 oranges",15) == 14
    @test fruit_distribution("0 apples and 1 oranges",14) == 13
    @test fruit_distribution("0 apples and 0 oranges",30) == 30
    @test fruit_distribution("0 apples and 1 oranges",10) == 9
    @test fruit_distribution("0 apples and 1 oranges",12) == 11
    @test fruit_distribution("10 apples and 20 oranges",30) == 0
    @test fruit_distribution("2 apples and 0 oranges",13) == 11
    @test fruit_distribution("3 apples and 4 oranges",30) == 23
    @test fruit_distribution("8 apples and 2 oranges",10) == 0
    @test fruit_distribution("0 apples and 1 oranges",2) == 1
    @test fruit_distribution("10 apples and 20 oranges",51) == 21
    @test fruit_distribution("3 apples and 5 oranges",10) == 2
    @test fruit_distribution("0 apples and 1 oranges",3) == 2
    @test fruit_distribution("5 apples and 5 oranges",15) == 5
    @test fruit_distribution("0 apples and 1 oranges",9) == 8
    @test fruit_distribution("0 apples and 1 oranges",8) == 7
    @test fruit_distribution("0 apples and 1 oranges",13) == 12
    @test fruit_distribution("0 apples and 0 oranges",1) == 1
    @test fruit_distribution("7 apples and 8 oranges",15) == 0
    @test fruit_distribution("3 apples and 5 oranges",51) == 43
    @test fruit_distribution("3 apples and 4 oranges",8) == 1
    @test fruit_distribution("3 apples and 5 oranges",13) == 5
    @test fruit_distribution("0 apples and 1 oranges",51) == 50
    @test fruit_distribution("2 apples and 0 oranges",11) == 9
    @test fruit_distribution("10 apples and 0 oranges",30) == 20
    @test fruit_distribution("2 apples and 0 oranges",14) == 12
    @test fruit_distribution("0 apples and 0 oranges",29) == 29
    @test fruit_distribution("10 apples and 20 oranges",52) == 22
    @test fruit_distribution("0 apples and 1 oranges",4) == 3
    @test fruit_distribution("2 apples and 0 oranges",50) == 48
    @test fruit_distribution("2 apples and 0 oranges",51) == 49
    @test fruit_distribution("0 apples and 1 oranges",11) == 10
    @test fruit_distribution("5 apples and 5 oranges",11) == 1
    @test fruit_distribution("2 apples and 0 oranges",52) == 50
    @test fruit_distribution("3 apples and 4 oranges",12) == 5
    @test fruit_distribution("3 apples and 4 oranges",10) == 3
    @test fruit_distribution("10 apples and 0 oranges",29) == 19
    @test fruit_distribution("2 apples and 0 oranges",3) == 1
    @test fruit_distribution("2 apples and 0 oranges",6) == 4
    @test fruit_distribution("3 apples and 5 oranges",9) == 1
    @test fruit_distribution("2 apples and 0 oranges",29) == 27
    @test fruit_distribution("2 apples and 0 oranges",8) == 6
    @test fruit_distribution("0 apples and 0 oranges",12) == 12
    @test fruit_distribution("2 apples and 0 oranges",10) == 8
    @test fruit_distribution("3 apples and 5 oranges",14) == 6
    @test fruit_distribution("2 apples and 0 oranges",9) == 7
    @test fruit_distribution("5 apples and 5 oranges",13) == 3
    @test fruit_distribution("0 apples and 0 oranges",15) == 15
    @test fruit_distribution("3 apples and 4 oranges",13) == 6
    @test fruit_distribution("0 apples and 0 oranges",14) == 14
    @test fruit_distribution("0 apples and 0 oranges",0) == 0
    @test fruit_distribution("3 apples and 4 oranges",50) == 43
    @test fruit_distribution("2 apples and 0 oranges",15) == 13
    @test fruit_distribution("10 apples and 5 oranges",20) == 5
    @test fruit_distribution("3 apples and 7 oranges",15) == 5
    @test fruit_distribution("15 apples and 8 oranges",30) == 7
    @test fruit_distribution("24 apples and 18 oranges",50) == 8
    @test fruit_distribution("50 apples and 50 oranges",100) == 0
    @test fruit_distribution("100 apples and 100 oranges",200) == 0
    @test fruit_distribution("1 apples and 99 oranges",105) == 5
    @test fruit_distribution("99 apples and 1 oranges",105) == 5
    @test fruit_distribution("20 apples and 0 oranges",25) == 5
    @test fruit_distribution("1 apples and 99 oranges",100) == 0
    @test fruit_distribution("99 apples and 1 oranges",104) == 4
    @test fruit_distribution("20 apples and 0 oranges",199) == 179
    @test fruit_distribution("50 apples and 50 oranges",199) == 99
    @test fruit_distribution("1 apples and 99 oranges",199) == 99
    @test fruit_distribution("50 apples and 50 oranges",200) == 100
    @test fruit_distribution("20 apples and 0 oranges",198) == 178
    @test fruit_distribution("24 apples and 18 oranges",105) == 63
    @test fruit_distribution("24 apples and 18 oranges",100) == 58
    @test fruit_distribution("99 apples and 1 oranges",106) == 6
    @test fruit_distribution("3 apples and 7 oranges",20) == 10
    @test fruit_distribution("3 apples and 7 oranges",25) == 15
    @test fruit_distribution("1 apples and 99 oranges",104) == 4
    @test fruit_distribution("97 apples and 1 oranges",198) == 100
    @test fruit_distribution("97 apples and 1 oranges",105) == 7
    @test fruit_distribution("20 apples and 0 oranges",26) == 6
    @test fruit_distribution("3 apples and 7 oranges",198) == 188
    @test fruit_distribution("50 apples and 50 oranges",105) == 5
    @test fruit_distribution("20 apples and 0 oranges",197) == 177
    @test fruit_distribution("50 apples and 50 oranges",106) == 6
    @test fruit_distribution("50 apples and 50 oranges",104) == 4
    @test fruit_distribution("15 apples and 8 oranges",198) == 175
    @test fruit_distribution("0 apples and 0 oranges",11) == 11
    @test fruit_distribution("24 apples and 18 oranges",106) == 64
    @test fruit_distribution("1 apples and 99 oranges",103) == 3
    @test fruit_distribution("99 apples and 1 oranges",103) == 3
    @test fruit_distribution("1 apples and 99 oranges",197) == 97
    @test fruit_distribution("99 apples and 1 oranges",198) == 98
    @test fruit_distribution("97 apples and 1 oranges",200) == 102
    @test fruit_distribution("50 apples and 50 oranges",103) == 3
    @test fruit_distribution("0 apples and 0 oranges",199) == 199
    @test fruit_distribution("15 apples and 8 oranges",26) == 3
    @test fruit_distribution("24 apples and 18 oranges",49) == 7
    @test fruit_distribution("15 apples and 8 oranges",106) == 83
    @test fruit_distribution("20 apples and 0 oranges",99) == 79
    @test fruit_distribution("99 apples and 1 oranges",197) == 97
    @test fruit_distribution("3 apples and 7 oranges",21) == 11
    @test fruit_distribution("3 apples and 7 oranges",103) == 93
    @test fruit_distribution("3 apples and 7 oranges",101) == 91
    @test fruit_distribution("24 apples and 18 oranges",51) == 9
    @test fruit_distribution("100 apples and 100 oranges",201) == 1
    @test fruit_distribution("20 apples and 0 oranges",50) == 30
    @test fruit_distribution("99 apples and 1 oranges",199) == 99
    @test fruit_distribution("20 apples and 0 oranges",200) == 180
    @test fruit_distribution("0 apples and 0 oranges",106) == 106
    @test fruit_distribution("97 apples and 1 oranges",199) == 101
    @test fruit_distribution("3 apples and 7 oranges",16) == 6
    @test fruit_distribution("20 apples and 0 oranges",27) == 7
    @test fruit_distribution("50 apples and 50 oranges",101) == 1
    @test fruit_distribution("97 apples and 1 oranges",100) == 2
    @test fruit_distribution("1 apples and 99 oranges",106) == 6
    @test fruit_distribution("0 apples and 0 oranges",197) == 197
    @test fruit_distribution("20 apples and 0 oranges",107) == 87
    @test fruit_distribution("10 apples and 5 oranges",21) == 6
    @test fruit_distribution("1 apples and 99 oranges",196) == 96
    @test fruit_distribution("24 apples and 18 oranges",104) == 62
    @test fruit_distribution("99 apples and 1 oranges",102) == 2
    @test fruit_distribution("20 apples and 0 oranges",30) == 10
    @test fruit_distribution("1 apples and 99 oranges",101) == 1
    @test fruit_distribution("97 apples and 1 oranges",107) == 9
    @test fruit_distribution("50 apples and 50 oranges",102) == 2
    @test fruit_distribution("24 apples and 18 oranges",99) == 57
    @test fruit_distribution("15 apples and 8 oranges",197) == 174
    @test fruit_distribution("97 apples and 1 oranges",201) == 103
    @test fruit_distribution("15 apples and 8 oranges",105) == 82
    @test fruit_distribution("15 apples and 8 oranges",100) == 77
    @test fruit_distribution("15 apples and 8 oranges",28) == 5
    @test fruit_distribution("0 apples and 0 oranges",198) == 198
    @test fruit_distribution("0 apples and 0 oranges",50) == 50
    @test fruit_distribution("24 apples and 118 oranges",198) == 56
    @test fruit_distribution("97 apples and 1 oranges",103) == 5
    @test fruit_distribution("10 apples and 5 oranges",51) == 36
    @test fruit_distribution("20 apples and 0 oranges",104) == 84
    @test fruit_distribution("24 apples and 118 oranges",199) == 57
    @test fruit_distribution("20 apples and 0 oranges",31) == 11
    @test fruit_distribution("15 apples and 8 oranges",107) == 84
    @test fruit_distribution("10 apples and 5 oranges",30) == 15
    @test fruit_distribution("3 apples and 7 oranges",106) == 96
    @test fruit_distribution("20 apples and 0 oranges",106) == 86
    @test fruit_distribution("24 apples and 18 oranges",48) == 6
    @test fruit_distribution("20 apples and 0 oranges",48) == 28
    @test fruit_distribution("1 apples and 99 oranges",107) == 7
    @test fruit_distribution("20 apples and 0 oranges",101) == 81
    @test fruit_distribution("0 apples and 0 oranges",200) == 200
    @test fruit_distribution("15 apples and 8 oranges",49) == 26
    @test fruit_distribution("1 apples and 99 oranges",198) == 98
    @test fruit_distribution("50 apples and 50 oranges",197) == 97
    @test fruit_distribution("10 apples and 5 oranges",199) == 184
    @test fruit_distribution("3 apples and 7 oranges",197) == 187
    @test fruit_distribution("20 apples and 0 oranges",196) == 176
    @test fruit_distribution("3 apples and 7 oranges",12) == 2
    @test fruit_distribution("3 apples and 7 oranges",26) == 16
    @test fruit_distribution("0 apples and 0 oranges",25) == 25
    @test fruit_distribution("3 apples and 7 oranges",10) == 0
    @test fruit_distribution("15 apples and 8 oranges",199) == 176
    @test fruit_distribution("99 apples and 1 oranges",101) == 1
    @test fruit_distribution("10 apples and 5 oranges",15) == 0
    @test fruit_distribution("15 apples and 8 oranges",196) == 173
    @test fruit_distribution("3 apples and 7 oranges",22) == 12
    @test fruit_distribution("97 apples and 1 oranges",104) == 6
    @test fruit_distribution("24 apples and 118 oranges",196) == 54
    @test fruit_distribution("1 apples and 99 oranges",102) == 2
    @test fruit_distribution("97 apples and 1 oranges",196) == 98
    @test fruit_distribution("24 apples and 18 oranges",98) == 56
    @test fruit_distribution("20 apples and 0 oranges",105) == 85
    @test fruit_distribution("20 apples and 0 oranges",102) == 82
    @test fruit_distribution("99 apples and 1 oranges",200) == 100
    @test fruit_distribution("24 apples and 11 oranges",49) == 14
    @test fruit_distribution("97 apples and 1 oranges",197) == 99
    @test fruit_distribution("24 apples and 118 oranges",197) == 55
    @test fruit_distribution("20 apples and 0 oranges",28) == 8
    @test fruit_distribution("0 apples and 0 oranges",49) == 49
    @test fruit_distribution("0 apples and 0 oranges",99) == 99
    @test fruit_distribution("20 apples and 0 oranges",201) == 181
    @test fruit_distribution("3 apples and 7 oranges",105) == 95
    @test fruit_distribution("10 apples and 5 oranges",28) == 13
    @test fruit_distribution("3 apples and 7 oranges",27) == 17
    @test fruit_distribution("3 apples and 7 oranges",28) == 18
    @test fruit_distribution("15 apples and 8 oranges",104) == 81
    @test fruit_distribution("24 apples and 18 oranges",199) == 157
    @test fruit_distribution("15 apples and 8 oranges",48) == 25
    @test fruit_distribution("0 apples and 0 oranges",20) == 20
    @test fruit_distribution("24 apples and 18 oranges",196) == 154
    @test fruit_distribution("24 apples and 18 oranges",195) == 153
    @test fruit_distribution("24 apples and 18 oranges",103) == 61
    @test fruit_distribution("15 apples and 8 oranges",99) == 76
    @test fruit_distribution("3 apples and 7 oranges",104) == 94
    @test fruit_distribution("10 apples and 5 oranges",27) == 12
    @test fruit_distribution("24 apples and 18 oranges",97) == 55
    @test fruit_distribution("99 apples and 1 oranges",196) == 96
    @test fruit_distribution("10 apples and 5 oranges",101) == 86
    @test fruit_distribution("15 apples and 8 oranges",103) == 80
    @test fruit_distribution("24 apples and 11 oranges",107) == 72
    @test fruit_distribution("15 apples and 8 oranges",108) == 85
    @test fruit_distribution("50 apples and 50 oranges",201) == 101
    @test fruit_distribution("10 apples and 5 oranges",29) == 14
    @test fruit_distribution("0 apples and 0 oranges",105) == 105
    @test fruit_distribution("0 apples and 0 oranges",104) == 104
    @test fruit_distribution("10 apples and 5 oranges",105) == 90
    @test fruit_distribution("3 apples and 7 oranges",17) == 7
    @test fruit_distribution("3 apples and 7 oranges",14) == 4
    @test fruit_distribution("10 apples and 5 oranges",104) == 89
    @test fruit_distribution("3 apples and 7 oranges",29) == 19
    @test fruit_distribution("1 apples and 9 oranges",105) == 95
    @test fruit_distribution("15 apples and 8 oranges",31) == 8
    @test fruit_distribution("1 apples and 9 oranges",31) == 21
    @test fruit_distribution("0 apples and 0 oranges",100) == 100
    @test fruit_distribution("3 apples and 7 oranges",99) == 89
    @test fruit_distribution("15 apples and 8 oranges",32) == 9
    @test fruit_distribution("1 apples and 9 oranges",104) == 94
    @test fruit_distribution("1 apples and 9 oranges",28) == 18
    @test fruit_distribution("1 apples and 9 oranges",49) == 39
    @test fruit_distribution("10 apples and 5 oranges",106) == 91
    @test fruit_distribution("3 apples and 7 oranges",31) == 21
    @test fruit_distribution("0 apples and 0 oranges",31) == 31
    @test fruit_distribution("1 apples and 9 oranges",29) == 19
    @test fruit_distribution("0 apples and 0 oranges",28) == 28
    @test fruit_distribution("10 apples and 5 oranges",19) == 4
    @test fruit_distribution("1 apples and 9 oranges",50) == 40
    @test fruit_distribution("99 apples and 1 oranges",201) == 101
    @test fruit_distribution("10 apples and 5 oranges",22) == 7
    @test fruit_distribution("3 apples and 7 oranges",18) == 8
    @test fruit_distribution("1 apples and 9 oranges",27) == 17
    @test fruit_distribution("20 apples and 0 oranges",100) == 80
    @test fruit_distribution("0 apples and 0 oranges",17) == 17
    @test fruit_distribution("0 apples and 0 oranges",101) == 101
    @test fruit_distribution("1 apples and 9 oranges",14) == 4
    @test fruit_distribution("1 apples and 9 oranges",11) == 1
    @test fruit_distribution("0 apples and 0 oranges",22) == 22
    @test fruit_distribution("1 apples and 9 oranges",101) == 91
    @test fruit_distribution("91 apples and 9 oranges",105) == 5
    @test fruit_distribution("10 apples and 5 oranges",25) == 10
    @test fruit_distribution("0 apples and 0 oranges",16) == 16
    @test fruit_distribution("1 apples and 9 oranges",103) == 93
    @test fruit_distribution("3 apples and 7 oranges",19) == 9
    @test fruit_distribution("03 apples and 7 oranges",19) == 9
    @test fruit_distribution("1 apples and 9 oranges",20) == 10
    @test fruit_distribution("10 apples and 5 oranges",31) == 16
    @test fruit_distribution("10 apples and 5 oranges",16) == 1
    @test fruit_distribution("3 apples and 7 oranges",30) == 20
    @test fruit_distribution("0 apples and 0 oranges",18) == 18
    @test fruit_distribution("1 apples and 9 oranges",26) == 16
    @test fruit_distribution("0 apples and 0 oranges",103) == 103
    @test fruit_distribution("1 apples and 9 oranges",21) == 11
    @test fruit_distribution("0 apples and 018 oranges",103) == 85
    @test fruit_distribution("50 apples and 50 oranges",202) == 102
    @test fruit_distribution("10 apples and 5 oranges",48) == 33
    @test fruit_distribution("1 apples and 9 oranges",10) == 0
    @test fruit_distribution("1 apples and 9 oranges",22) == 12
    @test fruit_distribution("10 apples and 5 oranges",50) == 35
    @test fruit_distribution("0 apples and 018 oranges",105) == 87
    @test fruit_distribution("0 apples and 0 oranges",107) == 107
    @test fruit_distribution("0 apples and 018 oranges",201) == 183
    @test fruit_distribution("1 apples and 9 oranges",19) == 9
    @test fruit_distribution("15 apples and 8 oranges",27) == 4
    @test fruit_distribution("1 apples and 9 oranges",25) == 15
    @test fruit_distribution("10 apples and 5 oranges",18) == 3
    @test fruit_distribution("03 apples and 7 oranges",21) == 11
    @test fruit_distribution("10 apples and 5 oranges",202) == 187
    @test fruit_distribution("0 apples and 0 oranges",13) == 13
    @test fruit_distribution("1 apples and 9 oranges",15) == 5
    @test fruit_distribution("0 apples and 0 oranges",21) == 21
    @test fruit_distribution("20 apples and 0 oranges",29) == 9
    @test fruit_distribution("0 apples and 018 oranges",200) == 182
    @test fruit_distribution("0 apples and 018 oranges",49) == 31
    @test fruit_distribution("1 apples and 9 oranges",201) == 191
    @test fruit_distribution("0 apples and 0 oranges",102) == 102
    @test fruit_distribution("0 apples and 018 oranges",99) == 81
    @test fruit_distribution("91 apples and 9 oranges",103) == 3
    @test fruit_distribution("0 apples and 018 oranges",100) == 82
    @test fruit_distribution("99 apples and 1 oranges",107) == 7
    @test fruit_distribution("03 apples and 7 oranges",20) == 10
    @test fruit_distribution("1 apples and 9 oranges",32) == 22
    @test fruit_distribution("0 apples and 018 oranges",106) == 88
    @test fruit_distribution("1 apples and 9 oranges",13) == 3
    @test fruit_distribution("3 apples and 7 oranges",107) == 97
    @test fruit_distribution("15 apples and 8 oranges",29) == 6
    @test fruit_distribution("0 apples and 0 oranges",48) == 48
    @test fruit_distribution("10 apples and 5 oranges",99) == 84
    @test fruit_distribution("03 apples and 7 oranges",100) == 90
    @test fruit_distribution("99 apples and 1 oranges",108) == 8
    @test fruit_distribution("10 apples and 5 oranges",26) == 11
    @test fruit_distribution("91 apples and 9 oranges",106) == 6
    @test fruit_distribution("3 apples and 7 oranges",202) == 192
    @test fruit_distribution("03 apples and 7 oranges",51) == 41
    @test fruit_distribution("0 apples and 018 oranges",104) == 86
    @test fruit_distribution("03 apples and 7 oranges",18) == 8
    @test fruit_distribution("50 apples and 50 oranges",107) == 7
    @test fruit_distribution("10 apples and 5 oranges",200) == 185
    @test fruit_distribution("1 apples and 9 oranges",12) == 2
    @test fruit_distribution("0 apples and 0 oranges",19) == 19
    @test fruit_distribution("1 apples and 9 oranges",200) == 190
    @test fruit_distribution("1 apples and 9 oranges",18) == 8
    @test fruit_distribution("03 apples and 7 oranges",99) == 89
    @test fruit_distribution("1 apples and 9 oranges",100) == 90
    @test fruit_distribution("1 apples and 9 oranges",48) == 38
    @test fruit_distribution("10 apples and 5 oranges",100) == 85
    @test fruit_distribution("91 apples and 9 oranges",100) == 0
    @test fruit_distribution("03 apples and 7 oranges",98) == 88
    @test fruit_distribution("3 apples and 78 oranges",202) == 121
    @test fruit_distribution("03 apples and 7 oranges",28) == 18
    @test fruit_distribution("03 apples and 7 oranges",52) == 42
    @test fruit_distribution("10 apples and 5 oranges",49) == 34
    @test fruit_distribution("03 apples and 7 oranges",97) == 87
    @test fruit_distribution("3 apples and 7 oranges",51) == 41
    @test fruit_distribution("99 apples and 1 oranges",202) == 102
    @test fruit_distribution("0 apples and 0 oranges",52) == 52
    @test fruit_distribution("3 apples and 78 oranges",99) == 18
    @test fruit_distribution("10 apples and 5 oranges",103) == 88
    @test fruit_distribution("15 apples and 8 oranges",202) == 179
    @test fruit_distribution("0 apples and 018 oranges",20) == 2
    @test fruit_distribution("1 apples and 9 oranges",17) == 7
    @test fruit_distribution("020 apples and 018 oranges",49) == 11
    @test fruit_distribution("1 apples and 9 oranges",99) == 89
    @test fruit_distribution("10 apples and 5 oranges",52) == 37
    @test fruit_distribution("03 apples and 7 oranges",103) == 93
    @test fruit_distribution("10 apples and 5 oranges",17) == 2
    @test fruit_distribution("3 apples and 7 oranges",108) == 98
    @test fruit_distribution("3 apples and 7 oranges",49) == 39
    @test fruit_distribution("1 apples and 9 oranges",16) == 6
    @test fruit_distribution("03 apples and 7 oranges",201) == 191
    @test fruit_distribution("1 apples and 9 oranges",199) == 189
    @test fruit_distribution("1 apples and 9 oranges",30) == 20
    @test fruit_distribution("1 apples and 9 oranges",202) == 192
    @test fruit_distribution("100 apples and 100 oranges",202) == 2
end