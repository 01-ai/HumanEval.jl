@testitem "146_specialFilter_HumanEvalPlus_v0_1_9_test.jl" tags=[:HumanEvalPlus_v0_1_9] begin
    include(joinpath(ENV["GENERATION_DIR"], "146_specialFilter.jl"))
    @test specialFilter([24, -25, 9, 37, -71, -18]) == 1
    @test specialFilter([57, -23, -15, 42, 99, 104]) == 2
    @test specialFilter([6, 89, -12, 77, 13, 196]) == 2
    @test specialFilter([101, -35, 16, 44, -67]) == 1
    @test specialFilter([22, -33, -46, 89, -91, 128]) == 0
    @test specialFilter([55, -62, 7, 99, 23, 18]) == 2
    @test specialFilter([14, -8, 62, 71, -123, 39]) == 2
    @test specialFilter([10, 12, 22, -76, 37]) == 1
    @test specialFilter([39, 153, 240, -339]) == 2
    @test specialFilter([11, 232, 324, -876, 799]) == 2
    @test specialFilter([57, -23, -15, 42, 99, 56, 104, 42]) == 2
    @test specialFilter([6, 89, -12, 77, 13, 196, 196]) == 2
    @test specialFilter([24, -25, 37, -71, -18]) == 1
    @test specialFilter([-23, -15, 42, 99, 56, 104, 42]) == 1
    @test specialFilter([71, 55, -62, 7, 99, 23, 18]) == 3
    @test specialFilter([57, -23, -15, 42, 99, 56, 104, 42, 42]) == 2
    @test specialFilter([24, -25, 9, 37, -71, -91, -18, -71, -18]) == 1
    @test specialFilter([24, -25, 9, 37, -71, -91, -71, -18]) == 1
    @test specialFilter([57, -15, 42, 99, 56, 104, 42]) == 2
    @test specialFilter([6, 12, 77, 13, 196, 196, 89, 196]) == 2
    @test specialFilter([24, -25, 9, 37, -71, -35, -25]) == 1
    @test specialFilter([-23, -15, 42, 99, 56, 104, 42, 104]) == 1
    @test specialFilter([57, -23, -15, 42, 56, 104, 42, 42]) == 1
    @test specialFilter([104, 14, -8, 62, 72, 39]) == 1
    @test specialFilter([57, -23, -15, 42, 56, 104, 42, 42, 104]) == 1
    @test specialFilter([10, 12, 22, 12]) == 0
    @test specialFilter([6, 12, 22, 12]) == 0
    @test specialFilter([6, 12, 324, 12]) == 0
    @test specialFilter([14, -8, 62, 5, 6, -123, 39]) == 1
    @test specialFilter([24, -25, 9, -91, -71, -91, -71, -18]) == 0
    @test specialFilter([39, 152, 240, -339]) == 1
    @test specialFilter([57, 57, -15, 42, 99, 104]) == 3
    @test specialFilter([24, -25, 9, 37, -71, -17]) == 1
    @test specialFilter([44, 152, 240, -339]) == 0
    @test specialFilter([-23, -15, 42, 99, 56, 42]) == 1
    @test specialFilter([89, -25, 9, -91, -71, -91, -71, -18, 5]) == 0
    @test specialFilter([57, -23, -15, -76, 99, 104]) == 2
    @test specialFilter([11, 232, 324, -877, -876, 152, 799, 324]) == 2
    @test specialFilter([14, -8, 62, 5, 6, -76, 6]) == 0
    @test specialFilter([-8, 62, 37, 6, -76, 6]) == 1
    @test specialFilter([71, 55, -62, 7, 99, 23, 18, 99]) == 4
    @test specialFilter([239, 39, 152, 240, -339]) == 1
    @test specialFilter([39, 154, 240, -339]) == 1
    @test specialFilter([10, 22, -76, 37]) == 1
    @test specialFilter([101, -35, 16, 44, -67, -67]) == 1
    @test specialFilter([39, 155, 240, -339]) == 2
    @test specialFilter([39, 152, 241, -339]) == 1
    @test specialFilter([24, -25, 9, -91, -67, -71, -91, -71, -18]) == 0
    @test specialFilter([24, -25, 9, -71]) == 0
    @test specialFilter([57, -15, 99, 56, 104, 42]) == 2
    @test specialFilter([240, 39, 152, 241, -339]) == 1
    @test specialFilter([39, 151, 152, 240]) == 2
    @test specialFilter([-23, -15, 42, 99, 56, 104, -339, 42, 104]) == 1
    @test specialFilter([57, -23, -15, 42, 104, 42, 42, 104, 42]) == 1
    @test specialFilter([71, 55, -62, 7, 99, 23, 18, 99, 18]) == 4
    @test specialFilter([39, 152, 240, 39]) == 2
    @test specialFilter([71, 55, -62, 7, 99, 23, 18, 71, 55]) == 5
    @test specialFilter([239, 39, 152, -35, 240, -339]) == 1
    @test specialFilter([-23, -15, 42, 56, -339, 42, 104]) == 0
    @test specialFilter([-23, -15, 42, 99, 56, 104, 42, 104, 56]) == 1
    @test specialFilter([24, -25, 9, 12, 37, -71, -35, -25]) == 1
    @test specialFilter([-8, 6, 62, 37, 6, -76, 36, 6]) == 1
    @test specialFilter([6, 89, -12, 77, 196, 196]) == 1
    @test specialFilter([39, 152, 241]) == 1
    @test specialFilter([239, 39, 152, 39, 240, -339, -339]) == 2
    @test specialFilter([240, 39, 152, 241]) == 1
    @test specialFilter([-62, 232, 324, -877, -876, 152, 799, 324]) == 1
    @test specialFilter([11, 232, 324, -877, 62, -876, 152, 799]) == 2
    @test specialFilter([57, -23, -15, 42, 99, 56, 104, 42, 99]) == 3
    @test specialFilter([39, 153, 99, 240, -339]) == 3
    @test specialFilter([39, 104, 152, 240, 152]) == 1
    @test specialFilter([12, 239, 152, 39, 240, -339]) == 1
    @test specialFilter([10, 22, -76, 37, 10]) == 1
    @test specialFilter([-25, 9, 12, 37, -71, -35, -25]) == 1
    @test specialFilter([57, -15, 99, 56, 104, 42, 104]) == 2
    @test specialFilter([57, -15, -123, 99, 56, 104, 42]) == 2
    @test specialFilter([101, -35, 44, -67, -67]) == 1
    @test specialFilter([55, -62, 7, 23, 18]) == 1
    @test specialFilter([14, -8, 62, 5, 6, -76, 6, 14]) == 0
    @test specialFilter([14, -8, 62, -123, 39, -8]) == 1
    @test specialFilter([14, -8, 62, -18, 6, -76, 6, 5]) == 0
    @test specialFilter([24, -25, -876, 9, 37, -71, -18]) == 1
    @test specialFilter([55, -62, 7, 241, 99, 23, 18]) == 2
    @test specialFilter([-23, 42, 99, 56, 104, 42]) == 1
    @test specialFilter([101, -35, 16, 44, -67, 42]) == 1
    @test specialFilter([76, 6, 89, -12, 77, 13, 196, 196]) == 2
    @test specialFilter([-23, -16, 42, 99, 56, 104, 42, 104]) == 1
    @test specialFilter([57, -15, 56, 104, 42]) == 1
    @test specialFilter([57, -23, -15, 42, 105, 104, 42, 42, 44, 104, 42]) == 2
    @test specialFilter([-23, -16, 99, 56, 104, 42, 104]) == 1
    @test specialFilter([55, -62, 7, 24, 18]) == 1
    @test specialFilter([22, -33, -46, -91, 128]) == 0
    @test specialFilter([-23, -15, 42, 99, 154, 42, -15]) == 1
    @test specialFilter([14, -8, -18, 6, -76, 6, 6]) == 0
    @test specialFilter([240, 39, 152, 240, -339]) == 1
    @test specialFilter([-62, 232, 324, -46, -876, 152, 799, 324]) == 1
    @test specialFilter([39, 240]) == 1
    @test specialFilter([39, 241, 240, 39]) == 2
    @test specialFilter([101, -35, 62, 16, 44, -67, 42]) == 1
    @test specialFilter([123, 505, 789, 111]) == 4
    @test specialFilter([63, 24, 84, 75, -56, 13]) == 2
    @test specialFilter([11, 12, 13, 14, 15, 16]) == 3
    @test specialFilter([100, 101, 102, 103, 104]) == 2
    @test specialFilter([-324, 456, 1111, 7113]) == 2
    @test specialFilter([-2, 4, 6, 8, 10, 12, 15]) == 1
    @test specialFilter([11, -12, 93, -125, 121, 109]) == 4
    @test specialFilter([33, -2, -3, 45, 21, 109, 121, 357, 1892]) == 4
    @test specialFilter([120, 122, 414, 214, 615, 218, 8518, 21517, 2123, 918]) == 0
    @test specialFilter([-123, 456, 789, 111]) == 2
    @test specialFilter([100, 101, 102, 103, 21517, 104]) == 2
    @test specialFilter([-2, 4, 6, 8, 14, 10, 12, 15]) == 1
    @test specialFilter([120, 122, 414, 214, 615, 8518, 21517, 2123, 918]) == 0
    @test specialFilter([11, -12, 93, -125, 121, 109, -125]) == 4
    @test specialFilter([-12, 93, -125, 1111, 109]) == 3
    @test specialFilter([123, 505, 505, 789, 111]) == 5
    @test specialFilter([456, 789, 111]) == 2
    @test specialFilter([100, 101, 102, 103, 104, 102]) == 2
    @test specialFilter([-2, 4, 6, 8, 14, 10, 12, 103, 15]) == 2
    @test specialFilter([100, 101, 102, 103]) == 2
    @test specialFilter([11, 12, 13, 14, 15, 16, 13]) == 4
    @test specialFilter([120, 122, 414, 214, 357, 8518, 21517, 2123, 918]) == 1
    @test specialFilter([33, -2, -3, 45, 21, -2, 121, 357, 1892, -2]) == 3
    @test specialFilter([11, 12, 103, 14, 15, 16]) == 3
    @test specialFilter([33, 8, -3, 45, 21, -2, 121, 357, 1892, -2]) == 3
    @test specialFilter([-123, 456, 789, 456]) == 1
    @test specialFilter([-122, 456, 789, 456]) == 1
    @test specialFilter([-123, 456, 789, 456, 789]) == 2
    @test specialFilter([33, -2, -3, 45, 21, 109, 121, 1892]) == 3
    @test specialFilter([120, 122, 414, 214, 357, 8518, 21517, 2123, 918, 2123]) == 1
    @test specialFilter([120, 122, 414, 214, 218, 8518, 21517, 2123, 918]) == 0
    @test specialFilter([123, 21517, 789, 111]) == 3
    @test specialFilter([-123, 456, 1111, 111]) == 2
    @test specialFilter([63, 24, 84, 75, -56]) == 1
    @test specialFilter([120, 121, 122, 214, 357, 8518, 21517, 2123, 918]) == 2
    @test specialFilter([-324, 4, 6, 8, 14, 12, 15]) == 1
    @test specialFilter([123, 505, 788, 111, 123]) == 4
    @test specialFilter([100, 101, 102, 102]) == 1
    @test specialFilter([120, 122, 414, 214, 357, 8518, 21517, 2123, 918, 2123, 21517]) == 1
    @test specialFilter([15, 11, 12, 103, 14, 12, 16]) == 3
    @test specialFilter([11, -12, 93, -125, 121, 109, 93, 11]) == 6
    @test specialFilter([-123, 93, 456, 789, 456]) == 2
    @test specialFilter([100, 101, 103, 102]) == 2
    @test specialFilter([120, 122, 414, 109, 615, 8518, 21517, 2123, 918]) == 1
    @test specialFilter([789, 123, 789, 111]) == 4
    @test specialFilter([-324, 4, 6, 8, 14, 12, 6]) == 0
    @test specialFilter([100, 102, 103, 103]) == 2
    @test specialFilter([100, 102, 102, 103, 104]) == 1
    @test specialFilter([-324, 456, 1111, 7113, 1111]) == 3
    @test specialFilter([120, 122, 414, 214, 8518, 21517, 2123, 918]) == 0
    @test specialFilter([63, 24, 84, 75, -56, 214, 13]) == 2
    @test specialFilter([456, -123, 93, 456, 111, 456]) == 2
    @test specialFilter([12, 789, 13, 15, 16]) == 3
    @test specialFilter([100, 102, 102, 103, 104, 100, 102, 102]) == 1
    @test specialFilter([123, 21517, 789, 111, 789]) == 4
    @test specialFilter([63, -55, 84, 83, 75, -56, 214, 13]) == 2
    @test specialFilter([123, 505, 504, 789, 111]) == 4
    @test specialFilter([63, 24, 84, 75, -56, 214, 13, -56]) == 2
    @test specialFilter([-12, 93, -125, 121, 109, 10, -125, 11]) == 4
    @test specialFilter([123, 505, 122, 504, 789, 111, 789, 504, 789]) == 6
    @test specialFilter([121, 120, 121, 122, 214, 357, 8518, 21517, 2123, 918, 358, 357]) == 4
    @test specialFilter([-2, 4, 6, 8, 14, 10, 1892, 103, 15, 10]) == 2
    @test specialFilter([-122, 456, 789, 455]) == 1
    @test specialFilter([120, 121, 122, 214, 357, 8518, 21517, 100, 918]) == 2
    @test specialFilter([-123, 456, 1111, 111, 1111]) == 3
    @test specialFilter([33, -2, -3, 46, 21, -2, 121, 357, 1892, -2, -2]) == 3
    @test specialFilter([100, 101, 102, 103, 104, 102, 102]) == 2
    @test specialFilter([123, 505, 504, 789, 504]) == 3
    @test specialFilter([120, 122, 414, 214, 357, 8518, 21517, 918, 2123, 21517]) == 1
    @test specialFilter([11, 12, 13, 14, 15, 16, 16]) == 3
    @test specialFilter([120, 121, 414, 214, 357, 8518, 21517, 2123, 918, 2123, 21517]) == 2
    @test specialFilter([455, 123, 789, 111, 21518, 789]) == 4
    @test specialFilter([-2, 4, -324, 6, 8, 10, 12, 15]) == 1
    @test specialFilter([-122, 101, 102, 103]) == 2
    @test specialFilter([100, 120, 121, 122, 214, 357, 8518, 21517, 100, 918]) == 2
    @test specialFilter([100, 101, 103, 104, 102]) == 2
    @test specialFilter([12, 789, 13, 15, 16, 15]) == 4
    @test specialFilter([1892, 121, 122, 214, 357, 8518, 21517, 100, 918]) == 2
    @test specialFilter([456, 789, 111, 456]) == 2
    @test specialFilter([-324, 456, 1111, 7113, 63]) == 2
    @test specialFilter([120, 414, 214, 8518, 21517, 2123, 918]) == 0
    @test specialFilter([-123, 456, 112, 1111]) == 1
    @test specialFilter([33, -2, 45, 21, 109, 121, 357, 1892]) == 4
    @test specialFilter([456, 789]) == 1
    @test specialFilter([-12, 93, -125, 1111, 109, 109]) == 4
    @test specialFilter([100, 8518, 102, 103, 104, 102]) == 1
    @test specialFilter([63, -55, 84, 83, 75, -56, 13, 13]) == 3
    @test specialFilter([-2, 4, 6, 8, 14, 10, 123, 103, 15, 10]) == 3
    @test specialFilter([11, -12, 93, -125, 121, 109, 93, 11, -12]) == 6
    @test specialFilter([120, 121, 122, 357, 8518, 21517, 100, 918]) == 2
    @test specialFilter([789, 93, -125, 121, 109, 10, -125, 11]) == 5
    @test specialFilter([120, 122, 414, 214, 415, 357, 8518, 21517, 2123, 122, 918, 2123, 21517, 918]) == 1
    @test specialFilter([120, 122, 214, 218, 8518, 21517, 2123, 918, 2123]) == 0
    @test specialFilter([120, 121, 122, 214, 414, 8518, 21517, 2123, 918]) == 1
    @test specialFilter([63, -55, 84, 83, 75, -56, 13, 12, -55]) == 2
    @test specialFilter([123, 505, -123, 789, 111]) == 4
    @test specialFilter([123, 505, 789, -3, 111]) == 4
    @test specialFilter([-12, 93, -125, 122, 1111, 109, 110]) == 3
    @test specialFilter([100, 101, 103, 83, 102]) == 2
    @test specialFilter([11, -12, 93, 121, 109, 93, 11, -12, 93, -12]) == 7
    @test specialFilter([102, 505, 789]) == 2
    @test specialFilter([11, -12, 93, -125, 10, 121, 109, 93, 11]) == 6
    @test specialFilter([102, 505, 789, 102]) == 2
    @test specialFilter([789, 93, -125, 121, 109, 10, -125, 11, 10]) == 5
    @test specialFilter([-324, 456, 1111, 7113, 63, 1111]) == 3
    @test specialFilter([615, 4, 6, 5, 14, 12, 6]) == 0
    @test specialFilter([11, -12, 93, 121, 109, 93, 11, -12, 93, -12, 121]) == 8
    @test specialFilter([100, 102, 103, 104]) == 1
    @test specialFilter([120, 122, 414, 4, 615, 8518, 21517, 2123, 918]) == 0
    @test specialFilter([615, 4, 6, 5, 505, 12, 6]) == 1
    @test specialFilter([102, 790, 505, 789, 102]) == 2
    @test specialFilter([11, -12, 93, 121, 109, 93, 11, 8, 93, -12, 121]) == 8
    @test specialFilter([120, 122, 13, 4, 615, 8518, 21517, 2123, 918]) == 1
    @test specialFilter([11, 12, 13, 14, 14, 16, 16]) == 2
    @test specialFilter([-123, 456, 789, 111, 111]) == 3
    @test specialFilter([104, 456, -123, 93, 456, 111, 456]) == 2
    @test specialFilter([63, -55, 84, 83, 75, -56, 13, 12, -55, 63]) == 2
    @test specialFilter([100, 101, 102, 103, 21517, 104, 104]) == 2
    @test specialFilter([120, 122, 414, 214, 415, 45, 357, 8518, 21517, 2123, 122, 918, 2123, 21517, 918]) == 1
    @test specialFilter([-123, 456, 789, 456, -123]) == 1
    @test specialFilter([120, 121, 122, 357, 8518, 21517, 100, 919]) == 3
    @test specialFilter([11, 12, 13, 14, 16]) == 2
    @test specialFilter([100, 101, 102, 103, 104, 103]) == 3
    @test specialFilter([6, 100, 102, 102, 103, 104]) == 1
    @test specialFilter([104, 456, -123, 93, 456, 110, 456]) == 1
    @test specialFilter([100, 102, 103, 103, 103]) == 3
    @test specialFilter([120, 121, 122, 214, 357, 8518, 8518, 21517, 100, 918]) == 2
    @test specialFilter([789, 93, -125, 121, 109, 10, -125, 11, 10, 789]) == 6
    @test specialFilter([-122, 456, 789, 456, -122]) == 1
    @test specialFilter([100, 101, 505, 83, 102]) == 2
    @test specialFilter([12, 790, 13, 15, 16]) == 2
    @test specialFilter([123, 505, 789, 790]) == 3
    @test specialFilter([24, 84, 75, -56, 214, 13, -56]) == 2
    @test specialFilter([120, 121, 414, 214, 357, 8518, 21517, 2123, 918, 2123, 21517, 214]) == 2
    @test specialFilter([12, 415, 789, 13, 15, 16]) == 3
    @test specialFilter([456, 112, 111, 456]) == 1
    @test specialFilter([63, 24, -57, 84, 75, -56, 24]) == 1
    @test specialFilter([456, -123, 93, 455, 111, 456, -123]) == 2
    @test specialFilter([63, -55, 84, 83, 75, 13, 12, -55, 63]) == 2
    @test specialFilter([123, 505, 789, -3, 111, -3]) == 4
    @test specialFilter([789, 93, -125, 121, 109, 24, 10, 112, -125, 11, 11, 10, 789]) == 7
    @test specialFilter([-55, 84, 83, 75, -56, 13, 12, -55, 63]) == 2
    @test specialFilter([112, -324, 456, 1111, 7113, 456, 100, 63]) == 2
    @test specialFilter([101, 100, 8518, 103, 104, 102]) == 2
    @test specialFilter([-122, 101, 102, 101]) == 2
    @test specialFilter([100, 102, 102, 100, 103, 104]) == 1
    @test specialFilter([84, 75, -56, 214, 14]) == 1
    @test specialFilter([11, 12, 103, 1892, 15, 16]) == 3
    @test specialFilter([6, 100, 102, 102, 103, 104, 6]) == 1
    @test specialFilter([615, 4, 5, 14, 12, 6]) == 0
    @test specialFilter([100, 101, 102, 103, 21517]) == 2
    @test specialFilter([456, 789, 456, -123, 456]) == 1
    @test specialFilter([123, 21517, 789, 111, 789, 111]) == 5
    @test specialFilter([-123, 93, 455, 789, 456]) == 2
    @test specialFilter([357, 21518, 120, 122, 414, 213, 357, 8518, 21517, 2123, 918, 2123, 21517, 2123]) == 2
    @test specialFilter([-2, 1111, 4, 6, 8, 10, 12, 15]) == 2
    @test specialFilter([120, 121, 122, 122, 214, 357, 8518, 21518, 21517, 100, 918]) == 2
    @test specialFilter([11, -12, 93, 121, 109, 93, 11, 93, -12, 2123, 121, 11, 121]) == 10
    @test specialFilter([101, 45, 8518, 103, 104, 102]) == 2
    @test specialFilter([-2, 4, 8, 14, 10, -324, 123, 103, 15, 10]) == 3
    @test specialFilter([120, 121, 122, 357, 8518, 100]) == 2
    @test specialFilter([455, 123, 789, 111, 121, 21518, 1892]) == 4
    @test specialFilter([83, 102, 102, 103, 104, 100, 102, 102]) == 1
    @test specialFilter([103, 101, 102, 102]) == 2
    @test specialFilter([64, 24, 84, 75, -56, 214, 13]) == 2
    @test specialFilter([120, 122, 414, 214, -324, 8518, 21517, 2123, 918, 8518]) == 0
    @test specialFilter([456, -123, 93, 456, 456, 456]) == 1
    @test specialFilter([123, 789, 111, 789, 111, 109, 789]) == 7
    @test specialFilter([12, 103, 1892, 15, 16, 1892, 1892]) == 2
    @test specialFilter([123, 504, 505, 505, 789, 111]) == 5
    @test specialFilter([100, 8518, 102, 103, 104, 102, 8518]) == 1
    @test specialFilter([99, 100, 101, 102, 100, 99]) == 3
    @test specialFilter([789, 93, -125, 213, 121, 109, 10, -125, 10, 10, 789]) == 5
    @test specialFilter([12, 1892, 15, 16, 1892, 1892]) == 1
    @test specialFilter([456, -123, 93, 93, 455, 111, 456, -123]) == 3
    @test specialFilter([120, 121, 122, 63, 214, 357, 8518, 21517, 2123, 918]) == 2
    @test specialFilter([-2, 4, 8, 10, 12, 15]) == 1
    @test specialFilter([120, 122, 414, 214, 357, 8518, 21517, 2123, 415, 918]) == 1
    @test specialFilter([11, 12, 14, 14, 16, 16]) == 1
    @test specialFilter([101, 45, 8518, 103, 104, 505, 102, 101]) == 4
    @test specialFilter([100, 101, 103]) == 2
    @test specialFilter([123, 21516, 789, 111, 789]) == 4
    @test specialFilter([100, 8518, 103, 104, 102, 8518]) == 1
    @test specialFilter([-2, 4, 6, 8, 12, 15]) == 1
    @test specialFilter([11, 12, 14, 14, 16, 455]) == 1
    @test specialFilter([6, 100, 100, 102, 102, 104, 6, 100]) == 0
    @test specialFilter([100, -123, 102, 103, 103]) == 2
    @test specialFilter([11, 12, 21517, 14, 16, 455]) == 1
    @test specialFilter([120, 414, 214, 8518, -12, 21517, 2123, 918]) == 0
    @test specialFilter([11, 12, 14, 14, 16, 16, 12]) == 1
    @test specialFilter([11, 1891, 12, 103, 1892, 15, 17]) == 5
    @test specialFilter([120, 122, 414, 214, -324, 8518, 21517, 2123, 918, 8518, 414]) == 0
    @test specialFilter([15, 11, 12, 103, 14, 12, 15]) == 4
    @test specialFilter([11, -12, 93, -125, 121, 109, -123, 11]) == 5
    @test specialFilter([120, 122, 414, 214, 415, 45, 357, 8518, 21517, 2123, 122, 918, 2123, 21517, 918, 21517]) == 1
    @test specialFilter([100, 102, 103, 104, 111, 104]) == 2
    @test specialFilter([63, 24, 84, 75, -56, 214, 12]) == 1
    @test specialFilter([-2, 15, 75, -56, 214, 14]) == 2
    @test specialFilter([100, 101, 505, 83]) == 2
    @test specialFilter([11, -12, 93, -125, 121, 109, -123, 11, 109]) == 6
    @test specialFilter([100, 101, 505, 83, 102, 102]) == 2
    @test specialFilter([33]) == 1
    @test specialFilter([-3, 123, 789, 111, 789, 111, 109, 789]) == 7
    @test specialFilter([-324, 457, 1111, 7113, 1111]) == 3
    @test specialFilter([33, 33]) == 2
    @test specialFilter([121, 120, 121, 122, 214, 357, 8518, 21517, 2123, 918, 358, 357, 358]) == 4
    @test specialFilter([456]) == 0
    @test specialFilter([101, 102, 101]) == 2
    @test specialFilter([100, 101, 102, 103, 21517, 102]) == 2
    @test specialFilter([11, -12, 93, 121, 109, 93, 11, -12, 93, -12, 11]) == 8
    @test specialFilter([120, 122, 414, 214, 8518, 21517, 2123, 918, 2123]) == 0
    @test specialFilter([121, 120, 121, 122, 214, 357, 8518, 21517, 2123, 358, 357, 358]) == 4
    @test specialFilter([11, -125, 14, 14, 16, 16]) == 1
    @test specialFilter([63, -55, 84, 83, 75, -56, 13, 12, 64, -55, 63]) == 2
    @test specialFilter([120, 122, 414, 214, 357, 8518, 21517, 2123]) == 1
    @test specialFilter(Int64[]) == 0
    @test specialFilter([100, 101, 102, 100, 99, 102]) == 2
    @test specialFilter([-122, 456, 789, 456, -122, 456]) == 1
    @test specialFilter([100, 101, 102, 103, 788, 104, 102]) == 2
    @test specialFilter([-324, 456, 1111, 7113, 1111, 1111]) == 4
    @test specialFilter([100, 99, 100, 101, 102, 100, 99]) == 3
    @test specialFilter([102, 102, 103, 104, 10, 100, 102, 102]) == 1
    @test specialFilter([-123, 456, 457, 111, 1111]) == 2
    @test specialFilter([101, 8518, 103, 102, 102]) == 2
    @test specialFilter([789, 93, -125, 121, 109, 111, -125, 11]) == 6
    @test specialFilter([120, 122, 414, 214, -324, 415, 21517, 2123, 918, 8518]) == 0
    @test specialFilter([63, -55, 84, 83, 75, -56, 13, 12, -55, 63, 63]) == 2
    @test specialFilter([11, 12, 13, 14, 16, 16]) == 2
    @test specialFilter([120, 121, 122, 357, 8518, 21517, 100, 919, 8518]) == 3
    @test specialFilter([505, 8, -3, 45, 21, -2, 121, 357, 1892, -2]) == 3
    @test specialFilter([-122, 46, 456, 789, 456, 789]) == 2
    @test specialFilter([11, 12, 14, 15, 16]) == 2
    @test specialFilter([-123, 11, 456, 789, 111]) == 3
    @test specialFilter([120, 121, 122, 357, 8518, 21517, 920, 100, 919, 8518]) == 3
    @test specialFilter([-12, 93, -125, 109]) == 2
    @test specialFilter([-324, 1111, 7113]) == 2
    @test specialFilter([15, 11, 14, 103, 14, 12, 16]) == 3
    @test specialFilter([122, 505, 84, 789, -3, 111]) == 3
    @test specialFilter([11, 1891, 12, 103, 1892, 17]) == 4
    @test specialFilter([-123, 456, 21, 1111, 111, 1111]) == 3
    @test specialFilter([11, -12, 93, 121, 109, 93, 11, -12, 93, -12, 121, 11]) == 9
    @test specialFilter([11, 12, 104, 14, 14, 16, 16]) == 1
    @test specialFilter([100, 102, 103, 103, -3, 103]) == 3
    @test specialFilter([100, 101, 505, 83, 101]) == 3
    @test specialFilter([33, -2, -3, 45, 21, -2, 121, 357, 1892, -2, -2]) == 3
    @test specialFilter([101, 45, 13, 103, 104, 505, 102, 101]) == 5
    @test specialFilter([12, 103, 14, 15, 16]) == 2
    @test specialFilter([120, 121, 214, 357, 8518, 21517, 2123, 918, 2123, 21517]) == 2
    @test specialFilter([120, 122, 414, 121, 214, 357, 8518, 21517, 2123, 415, 918]) == 2
    @test specialFilter([-12, 93, 109, 358, 109]) == 3
    @test specialFilter([120, 122, 414, 214, 218, 8518, 21517, 2123, 918, 120]) == 0
    @test specialFilter([120, 21, 414, 214, 21516, 357, 8518, 21517, 2123, 918, 2123]) == 1
    @test specialFilter([-123, 11, 12, 456, 789, 111]) == 3
    @test specialFilter([24, -57, 84, 75, -56, 24, -56]) == 1
    @test specialFilter([11, 13, 14, 15, 16, 11, 15]) == 5
    @test specialFilter([-2, 4, 8, 10, 12]) == 0
    @test specialFilter([789, 102]) == 1
    @test specialFilter([24, 21517, 84, 75, -56, 214, 13, -56]) == 2
    @test specialFilter([102, 505, 789, 102, 102, 789]) == 3
    @test specialFilter([100, 213, 102, 103]) == 1
    @test specialFilter([120, 122, 414, 214, 357, 8518, 21517, 918, 2123, 21517, 21517]) == 1
    @test specialFilter([122, 102]) == 0
    @test specialFilter([-2, 4, 6, 8, 10, 12, 15, 10]) == 1
    @test specialFilter([12, 13, 15, 16, 15]) == 3
    @test specialFilter([11, 1891, 12, 103, 1892, 15, 17, 103]) == 6
    @test specialFilter([122, 102, 122]) == 0
    @test specialFilter([-123, 456, 357, -124, 789, 456, -123]) == 2
    @test specialFilter([-2, 15, 74, -56, 214, 14]) == 1
    @test specialFilter([14, 11, 12, 103, 14, 12, 16, 14]) == 2
    @test specialFilter([120, 122, 414, 122, 109, 615, 8518, 21517, 2123, 918]) == 1
    @test specialFilter([120, 21, 414, 214, 21516, 357, 8517, 21517, 2123, 918, 2123]) == 1
    @test specialFilter([124, 789, 111, 789, 108, 789]) == 4
    @test specialFilter([123, 505, 789, -3, 111, -3, 789]) == 5
    @test specialFilter([11, 1891, 12, -123, 103, 1892, 15, 17, 103]) == 6
    @test specialFilter([357, 21518, 120, 122, 414, 213, 357, 8518, 21517, 2123, 918, 2123, 21517, 2123, 213]) == 2
    @test specialFilter([11, 14, 14, 103, 12]) == 2
    @test specialFilter([357, 120, 122, 414, 213, 357, 8518, 21517, 2123, 918, 2123, 21517, 2123]) == 2
    @test specialFilter([-324, 4, 8, 11, 12, 6, 11]) == 2
    @test specialFilter([15, 11, 14, 103, 14, 12, 455, 16, 103]) == 4
    @test specialFilter([121, 120, 121, 122, 214, 357, 8518, 21517, 2123, 918, 21517]) == 3
    @test specialFilter([-12, 93, -126, 8517, -13, 109, 109]) == 3
    @test specialFilter([120, 121, 122, 214, 357, 8518, 21518, 21517, 100, 918]) == 2
    @test specialFilter([121, 122, 8518, 21517, 100, 919]) == 2
    @test specialFilter([-123, 456, 789, 111, 111, 111, 456]) == 4
    @test specialFilter([120, 122, 414, 122, 109, 8518, 615, 8518, 21517, 2123, 918]) == 1
    @test specialFilter([63, -55, 121, 83, 75, -55, 13, 12, -55, 63, 63]) == 3
    @test specialFilter([120, 121, 214, 357, 8518, 21517, 2123, 121, 918, 2123, 21517]) == 3
    @test specialFilter([120, 121, 122, 214, 357, 8518, 2123, 918, 21517]) == 2
    @test specialFilter([123, 789, 111, 789, 789, 111, 109, 789]) == 8
    @test specialFilter([789, 123, 789, 789, 111]) == 5
    @test specialFilter([120, 121, 122, 214, 357, 8518, 8518, 21517, 918]) == 2
    @test specialFilter([120, 122, 414, 214, 357, 8518, 21517, 2123, 918, 2123, 21517, 357]) == 2
    @test specialFilter([12, 1892, 16, 1892]) == 0
    @test specialFilter([100, 101, 102, 100, 99, 102, 100]) == 2
    @test specialFilter([-2, 4, -324, 6, 8, 10, 12, 15, 6]) == 1
    @test specialFilter([12, 103, 1892, 15, 15, 1892, 1892]) == 3
    @test specialFilter([83, 102, 103, 104, 100, 102]) == 1
    @test specialFilter([-123, 11, 456, 789, 111, -123]) == 3
    @test specialFilter([-2, 4, 6, 8, 14, 10, 123, 103, 15, 10, 63, 8]) == 3
    @test specialFilter([-2, 4, 6, 8, 12, 15, 12]) == 1
    @test specialFilter([10, 4, 8, 10, 12]) == 0
    @test specialFilter([101, 8518, 103, 104, 102, 8518]) == 2
    @test specialFilter([120, 122, 414, 214, -324, 415, 21517, 2123, 918, 8518, 21517]) == 0
    @test specialFilter([33, 615, 45, 21, 109, 121, 357, 1892]) == 4
    @test specialFilter([120, 122, 214, 218, 8518, 21517, 2123, 918, 2123, 122, 2123]) == 0
    @test specialFilter([100, 120, 121, 122, 214, 357, 8518, 21517, 918]) == 2
    @test specialFilter([120, 122, 414, 213, 357, 8518, 21517, 2123, 918, 2123, 21517, 2123]) == 1
    @test specialFilter([-2, 4, -324, 6, 7, 10, 12, 15, 6]) == 1
    @test specialFilter([63, -55, 84, 83, 75, -56, 214, 13, 63]) == 2
    @test specialFilter([63, 24, 84, -57, -56, 24]) == 0
    @test specialFilter([120, 121, 122, 122, 214, 74, 357, 8518, 21518, 21517, 100, 918]) == 2
    @test specialFilter([1892, 121, 122, 214, 357, 21517, 8518, 21517, 100, 918]) == 2
    @test specialFilter([63, -55, 84, 83, 75, -55, 13, 84, 12, -55]) == 2
    @test specialFilter([63, -55, 84, 83, 75, -56, 13, 13, -55]) == 3
    @test specialFilter([1891, 109, 12, 103, 1892, 15, 17, 103]) == 6
    @test specialFilter([11, 93, 104, -55, 14, 16, 16]) == 2
    @test specialFilter([12, 415, 789, 14, 13, 15, 16, 13]) == 4
    @test specialFilter([615, 4, 5, 14]) == 0
    @test specialFilter([120, 122, 8519, 414, 214, -324, 8518, 21517, 2123, 918, 8518]) == 0
    @test specialFilter([-55, 84, 83, 12, 75, -56, 13, 12, -55, 63]) == 2
    @test specialFilter([11, -12, 93, 121, 109, 93, 11, -12, 93, -12, 121, 121]) == 9
    @test specialFilter([120, 121, 414, 214, 357, 8518, 21517, 2123, 918, 2123, 21517, 918]) == 2
    @test specialFilter([15, 11, 14, 103, 14, 45, 455, 16, 103]) == 4
    @test specialFilter([33, 8, -4, 45, 21, -2, 121, 357, 1892, -2]) == 3
    @test specialFilter([120, 93, 414, 214, -324, 415, 21517, 918, 8518]) == 1
    @test specialFilter([100, 102, 103, 104, 102, 8518]) == 1
    @test specialFilter([123, 505, 122, 504, 789, 789, 111, 789, 504, 789, 122]) == 7
    @test specialFilter([-2, 4, 8, 14, 10, -324, 123, 103, 16, 10]) == 2
    @test specialFilter([101, 8518, 103, 102, 101]) == 3
    @test specialFilter([12, 1892, 15, 16, 1891, 1892]) == 2
    @test specialFilter([100, 102, 102, 103, 100, 102, 102, 102]) == 1
    @test specialFilter([-2, 4, 6, 8, 14, 10, 1892, 103, 15, 10, 103]) == 3
    @test specialFilter([-324, 4, 8, 11, 12, 6, 11, 12, 11]) == 3
    @test specialFilter([505, 8, -3, 504, 45, 21, -2, 121, 357, 1892, 21517]) == 3
    @test specialFilter([100, 102, 103]) == 1
    @test specialFilter([120, 122, 214, 8518, 21517, 2123, 918, 2123]) == 0
    @test specialFilter([11, -12, 93, -125, 10, 121, 109, 93, 11, 10]) == 6
    @test specialFilter([120, 122, 122, 214, 357, 8518, 21517, 2123, 918]) == 1
    @test specialFilter([100, 101, 102, -2, -122, 104, 103]) == 2
    @test specialFilter([101, 102, 102]) == 1
    @test specialFilter([11, -13, 93, 121, 109, 93, 11, -12, 93, -12, 121]) == 8
    @test specialFilter([-123, 456, 789, 111, 111, 456, 111]) == 4
    @test specialFilter([63, 24, 84, 75, 17, -56, 214, 13]) == 3
    @test specialFilter([99, 100, 101, 102, 103, 102, 21517]) == 3
    @test specialFilter([7, -125, 46, 1111, 109, -125]) == 2
    @test specialFilter([121, 120, 121, 122, 214, 358, 8518, 21517, 2123, 358, 357, 358]) == 3
    @test specialFilter([-2, 4, -324, 6, 8, 11, 12]) == 1
    @test specialFilter([-122, 456, 789, 456, 456, -122]) == 1
    @test specialFilter([-11, -12, 93, -125, 790, 1111, 109]) == 3
    @test specialFilter([100, 8518, 102, 103, 104, 102, 8518, 8518]) == 1
    @test specialFilter([788, 4, 6, 8, 14, 10, 12, 103, 15]) == 2
    @test specialFilter([120, 121, 122, 122, 214, 74, 357, 8518, 21518, 21517, 100, 918, 121]) == 3
    @test specialFilter([120, 122, 414, 214, 357, 8519, 21517, 918, 2123, 21517, 8518]) == 1
    @test specialFilter([63, -55, 84, 83, 75, -56, 214, 13, 214]) == 2
    @test specialFilter([100, 101, 918, 103]) == 2
    @test specialFilter([24, -57, 84, 75, 24, -56]) == 1
    @test specialFilter([-324, 4, 8, 11, 6, 11]) == 2
    @test specialFilter([123, 7, -125, 46, 1111, 109]) == 3
    @test specialFilter([63, -55, 84, 83, 75, -56, 13, 12, -55, 63, 63, 83]) == 2
    @test specialFilter([120, 122, 414, 214, 2122, 615, 8518, 21517, 2123, 918]) == 0
    @test specialFilter([63, -55, 84, 83, 75, -56, 13]) == 2
    @test specialFilter([124, 505, 122, 504, 789, 111, 789, 504, 789]) == 5
    @test specialFilter([100, 101, 101, 103, 104, 103]) == 4
    @test specialFilter([4, 122, 414, 122, 109, 615, 8518, 21517, 2123, 918]) == 1
    @test specialFilter([-2, 4, -324, 6, 8, 10, 11, 12, 15]) == 2
    @test specialFilter(Int64[]) == 0
    @test specialFilter([12, 103, 14, 15, 16, 14]) == 2
    @test specialFilter([-2, 15, 75, -56, 214, -124, 14]) == 2
    @test specialFilter([102]) == 0
    @test specialFilter([120, 122, 122, 214, 74, 357, 8518, 21518, 21517, 100, 918, 121]) == 2
    @test specialFilter([789, 123, 789, 213, 111]) == 4
    @test specialFilter([-2, 4, -324, 6, 8, 11, 12, 11]) == 2
    @test specialFilter([919, 120, 122, 414, 109, 8518, 615, 8518, 21517, 2123, 918]) == 2
    @test specialFilter([63, -55, 121, 83, 75, -55, 13, 12, -55, 63, 63, 63]) == 3
    @test specialFilter([11, 12, 103, 63, 1892, 15, 15, 14, 16]) == 4
    @test specialFilter([120, 414, 214, 8518, 21517, 2123, 918, 414]) == 0
    @test specialFilter([120, 122, 414, 214, -324, 415, -13, 21517, 918, 8518, 21517, 414]) == 0
    @test specialFilter([456, 789, 456, 2123, 17, 456]) == 2
    @test specialFilter([-324, 1111, 7113, 63]) == 2
    @test specialFilter([-324, 456, 11, 7112, 1111]) == 2
    @test specialFilter([-122, 101, 102, 101, -122]) == 2
    @test specialFilter([100, 101, 7112, 21, 103, 21517, 102, 100]) == 2
    @test specialFilter([11, -12, 6, 121, 109, 93, 11, -12, 93, -12]) == 6
    @test specialFilter([-12, 93, 109, 108, 358, 109]) == 3
    @test specialFilter([24, -55, 84, 83, 75, -56, 13, 12, -55, 63, 63, 83]) == 2
    @test specialFilter([616, 4, 5, 14]) == 0
    @test specialFilter([104, 456, -123, 93, 456, 92, 110, 456]) == 1
    @test specialFilter([-122, 101, 102, 101, 7112]) == 2
    @test specialFilter([120, 214, 8518, 21517, 8, 918, 2123]) == 0
    @test specialFilter([99, 124, 101, 102, 103, 102, 21517]) == 3
    @test specialFilter([102, 102, 103, 104, 10, 100, 102, 102, 104]) == 1
    @test specialFilter([615, 4, 4, 5, 14]) == 0
    @test specialFilter([-2, 4, 6, 8, 10, 12, 1111, 15, 3, 10]) == 2
    @test specialFilter([120, 414, 214, 357, 8519, 21517, 918, 2123, 21517, 8518]) == 1
    @test specialFilter([120, 122, 121, 214, 357, 8518, 21517, 2123, 415, 918]) == 2
    @test specialFilter([506, 102, 505, 789, 102, 123, 505, -13, 789]) == 5
    @test specialFilter([-2, 4, -324, 6, 6, 10, 12, 15, 6]) == 1
    @test specialFilter([120, 121, 122, 214, 414, 8518, 21517, 2123, 918, 414]) == 1
    @test specialFilter([-123, 456, 357, 789, 456, -123]) == 2
    @test specialFilter([123, 505, 504, 789]) == 3
    @test specialFilter([789, 93, -125, 121, 109, 100, 111, -125, 11]) == 6
    @test specialFilter([102, 103, 104, 100, 102]) == 1
    @test specialFilter([-2, 4, 6, 8, 14, 10, 1892, 11, 103, 15, 10, 103]) == 4
    @test specialFilter([-123, 456, 789, 111, 111, 110, 456, 111, 789]) == 5
    @test specialFilter([46, 788, 4, 6, 8, 14, 10, 12, 103, 15]) == 2
    @test specialFilter([102, 505, 789, -13, 102, 102]) == 2
    @test specialFilter([-121, 101, 102, 101, 7112]) == 2
    @test specialFilter([-55, 84, 83, 75, -56, 13, 12, -56, 84, 63]) == 2
    @test specialFilter([789, 93, -125, 121, 109, 10, -125, 11, 121]) == 6
    @test specialFilter([-11, 93, -125, 790, 1111, 109, 1111]) == 4
    @test specialFilter([120, 122, 414, 357, 8518, 21517, 2123, 918]) == 1
    @test specialFilter([-122, 456, 92, 789, 456]) == 1
    @test specialFilter([120, 214, 357, 8518, 21517, 2123, 918, 2123, 21517]) == 1
    @test specialFilter([93, -126, 8517, -13, 109, 109]) == 3
    @test specialFilter([615, 4, 5, 14, 4]) == 0
    @test specialFilter([121, 505, 121, 214, 358, 8518, 21517, 2123, 358, 357, 358]) == 4
    @test specialFilter([11, -12, 93, 121, 109, 93, 11, 93, -12, 2123, 121, 11, 121, 93]) == 11
    @test specialFilter([11, -12, 93, 121, 109, 93, 11, -12, 93, -12, 121, 11, 93, 11]) == 11
    @test specialFilter([-2, 4, -324, 6, 8, 13, 12, 15, -324]) == 2
    @test specialFilter([11, -12, 93, 121, 109, 1111, 93, 11, -12, 93, -12, -12]) == 8
    @test specialFilter([100, 8518, 102, 103, 104, 102, 105, 64, 8518, 8518]) == 2
    @test specialFilter([63, 24, 84, 84, 75, -56, 214, 13]) == 2
    @test specialFilter([12, 415, 789, 13, -122, 15, 16]) == 3
    @test specialFilter([12, 103, 1892, 15, 15, 1892, 1892, 1892]) == 3
    @test specialFilter([-12, 93, -125, 121, 109, 10, -125, 11, 10]) == 4
    @test specialFilter([505, 8, -3, -13, 21, -2, 121, 357, 1892, -2]) == 3
    @test specialFilter([6, 100, 100, 102, 102, 104, 6, 100, 102]) == 0
    @test specialFilter([63, -55, 121, 83, 75, -55, 13, 12, 63, 63, 63]) == 3
    @test specialFilter([120, 121, 122, 357, 8518, 21517, 100, 918, 121]) == 3
    @test specialFilter([120, 121, 122, 214, 357, 8518, 8518, 21517, 100, 918, 122]) == 2
    @test specialFilter([789, 123, 789, 789, 111, 789]) == 6
    @test specialFilter([-324, 1111, 17, 7113, 63, 7113]) == 4
    @test specialFilter([63, -55, 84, 83, 75, -56, 13, 123, 12, -55, 63, 63, 83]) == 3
    @test specialFilter([120, 122, 414, 214, 357, 8518, 21517, 2123, 918, 2123, 357]) == 2
    @test specialFilter([120, 122, 414, 214, -324, 415, 21517, 918, 8518]) == 0
    @test specialFilter([505, 789, 102, 123, 505, -13, 789]) == 5
    @test specialFilter([789, 456, -123, 456, 789]) == 2
    @test specialFilter([120, 121, 414, 214, 357, 8518, 21517, 2123, 918, 2123, 21517, 918, 918]) == 2
    @test specialFilter([-122, 456, 789, 456, 456, -122, 456]) == 1
    @test specialFilter([8518, 103, 104, 102, 8518]) == 1
    @test specialFilter([-122, -123, 456, 789, 456]) == 1
    @test specialFilter([-2, 4, -324, 6, 8, 99, 12, 15, -324, 15]) == 3
    @test specialFilter([-2, 4, -324, 8, 99, 12, 15, -324, 15]) == 3
    @test specialFilter([789, 93, -125, 121, 109, 100, 111, -125, 11, 109]) == 7
    @test specialFilter([11, -12, 93, -125, 121, 615, 93, 11, -12]) == 5
    @test specialFilter([121, 120, 121, 122, 214, 357, 8518, 21517, 2123, 357, 8518]) == 4
    @test specialFilter([121, 505, 121, 214, 358, 21517, -121, 358, 357, 358, 358]) == 4
    @test specialFilter([123, 21517, 789, 12, 111, 789, 111, 21517]) == 5
    @test specialFilter([-2, 4, -1, 6, 8, 14, 10, 12, 15]) == 1
    @test specialFilter([120, 122, 101, 214, -324, 415, 21517, 2123, 918, 8518]) == 1
    @test specialFilter([100, 101, 102, 104, 102, 102, 102]) == 1
    @test specialFilter([104, 456, 93, 456, 111, 92, 456]) == 2
    @test specialFilter([-122, 456, 92, 789, 456, 456]) == 1
    @test specialFilter([120, 122, 414, 214, 21517, 415, 45, 357, 8518, 21517, 2123, 122, 918, 2123, 21517, 918, 21517, 45]) == 1
    @test specialFilter([120, 414, 214, 8518, 21517, 2123, 918, 920]) == 0
    @test specialFilter([15, 11, 12, 103, 14, 12, 16, 14]) == 3
    @test specialFilter([120, 122, 414, 109, 615, 8519, 21517, 2123, 918, 122]) == 1
    @test specialFilter([120, 122, 414, 214, -324, 2122, -13, 21517, 918, 8518, 21517, 414]) == 0
    @test specialFilter([93, -126, 8517, -13, 109]) == 2
    @test specialFilter([789, 92, -125, 121, 109, 10, -125, 11, 121]) == 5
    @test specialFilter([99, 100, 102, 102, 103, -56, 102, 21517]) == 2
    @test specialFilter([789, 92, -125, 121, 109, 10, -125, 11, 121, 109]) == 6
    @test specialFilter([100, 101, 21517, 102, 103, 21517]) == 2
    @test specialFilter([120, 105, 122, 414, 109, 615, 8519, 21517, 2123, 918, 122]) == 2
    @test specialFilter([100, 101, 102, 103, 102, 102, 102]) == 2
    @test specialFilter([-123, 11, 109, 789, 111, 11]) == 5
    @test specialFilter([455, 505, 122, 504, 789, 789, 111, 789, 112, 504, 122]) == 5
    @test specialFilter([12, 14, 16, 455]) == 0
    @test specialFilter([120, 122, 414, 214, 415, 357, 8518, 21517, 2123, 122, 2123, 21517, 8517, 918, 2123]) == 1
    @test specialFilter([788, 4, 8, 14, 10, 12, 103]) == 1
    @test specialFilter([63, -55, 84, 83, 75, 14, -56, 214, 13, 214]) == 2
    @test specialFilter([21517, 789, 12, 111, 111, 21517]) == 3
    @test specialFilter([-123, 456, 357, 789, 456, 109]) == 3
    @test specialFilter([789, 93, -125, 121, 109, 10, -125, 11, 11]) == 6
    @test specialFilter([-2, 4, 6, 100, 14, 10, 1892, 103, 15, 10, 103]) == 3
    @test specialFilter([100, 3, 102, 103, 103]) == 2
    @test specialFilter([63, -55, 84, 83, 75, -56, 13, 13, 16, -55, 84]) == 3
    @test specialFilter([120, 414, 214, 8518, 21517, 2122, 918, 414]) == 0
    @test specialFilter([4, 6, 8, 14, 10, 123, 103, 15, 10, 63, 8]) == 3
    @test specialFilter([11, 12, 13, 14, 15, 16, 16, 14]) == 3
    @test specialFilter([-12, 93, -125, -125, 11, 121, 109, 10, 11, 11]) == 6
    @test specialFilter([121, 122, 122, 214, 357, 8518, 21518, 21517, 100, 918]) == 2
    @test specialFilter([615, 4, 3, 5, 14]) == 0
    @test specialFilter([21517, 789, 12, 111, 111, 21517, 789]) == 4
    @test specialFilter([63, -55, 83, 75, -56, 13, 13]) == 3
    @test specialFilter([100, 101, 21517, -4, 102, 103, 21517]) == 2
    @test specialFilter([456, 789, 457, 75, 2123, 17, 456]) == 3
    @test specialFilter([-324, 1111, 358, 63]) == 1
    @test specialFilter([121, 504, 121, 122, 214, 357, 8518, 21517, 2123, 918, 358, 357, 358, 357, 214]) == 5
    @test specialFilter([120, 93, 414, 214, -324, 415, 918, 8518]) == 1
    @test specialFilter([83, 120, 122, 414, 214, 357, 8518, 21517, 918, 2123, 21517, 21517]) == 1
    @test specialFilter([21516, 100, 101, 102, 103, 21517, 104, 104]) == 2
    @test specialFilter([506, 102, 505, 104, 789, 102, 123, 505, -13, 789]) == 5
    @test specialFilter([102, 8518, 103, 104, 102, 918, 8518]) == 1
    @test specialFilter([63, -55, 84, 83, 75, -56, 13, 12, 63, 63]) == 2
    @test specialFilter([-2, 4, 6, 100, 14, 10, 1892, 103, 15, 15, 10, 103]) == 4
    @test specialFilter([-324, 110, 8, 11, 12, 6, 11, 12, 11]) == 3
    @test specialFilter([789, 93, -125, 122, 109, 100, 111, -125, 11]) == 5
    @test specialFilter([64, 24, 112, 84, -121, 75, -56, 214, 13]) == 2
    @test specialFilter([615, 4, 6, 5, 505, 12, 6, 12, 6, 6, 12]) == 1
    @test specialFilter([24, -55, 84, 83, 75, -56, 13, 12, -55, 63, 63, 83, 13]) == 3
    @test specialFilter([1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 13, 14, 15, 16, 17, 18, 19, 21, 22, 23, 24, 25, 26, 27, 28, 29, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 91, 92, 93, 94, 95, 96, 97, 98, 99]) == 15
    @test specialFilter([0]) == 0
    @test specialFilter([11]) == 1
    @test specialFilter([-1]) == 0
    @test specialFilter([-11]) == 0
    @test specialFilter([20, 30, 40]) == 0
    @test specialFilter([21, 31, 41]) == 1
    @test specialFilter([19, 29, 39]) == 2
    @test specialFilter([110, 130, 150]) == 0
    @test specialFilter([111, 131, 151]) == 3
    @test specialFilter([33, 1111, 7113]) == 3
    @test specialFilter([63, 24, 84, 75, -56, 75, 13]) == 3
    @test specialFilter([63, 24, 15, 84, 75, -56, 13]) == 3
    @test specialFilter([63, 15, 84, 75, -56, 13]) == 3
    @test specialFilter([-324, 456, 1111, 120]) == 1
    @test specialFilter([63, 24, 15, 103, 84, 75, -56, -12]) == 3
    @test specialFilter([123, 505, 789, 111, 111]) == 5
    @test specialFilter([-324, 456, 1111]) == 1
    @test specialFilter([11, 12, 13, 14, 15, 16, 11]) == 4
    @test specialFilter([63, 24, 84, 75, -56, 10]) == 1
    @test specialFilter([-123, 456, 789, 112]) == 1
    @test specialFilter([-124, 789, 112]) == 1
    @test specialFilter([-123, 456, 789, 24, 112]) == 1
    @test specialFilter([33, 5, -2, -3, 45, 6, 109, 121, 357, 1892, 6]) == 4
    @test specialFilter([33, -2, -3, 45, 21, 109, 121, 357]) == 4
    @test specialFilter([12, 13, 14, 15, 16, 11]) == 3
    @test specialFilter([-124, 789, 113, 112]) == 2
    @test specialFilter([456, 1111, 120]) == 1
    @test specialFilter([63, 76, 24, 84, 75, -56, 10]) == 1
    @test specialFilter([63, 24, 84, 75, -56, 13, 84]) == 2
    @test specialFilter([120, 122, 414, 214, 615, 33, 218, 8518, 21517, 2123, -12, 918]) == 1
    @test specialFilter([32, -2, -3, 45, 21, 109, 121, 357]) == 3
    @test specialFilter([-123, 456, 789, 111, -123, -123]) == 2
    @test specialFilter([63, 15, 84, 75, 16, -56, 13]) == 3
    @test specialFilter([33, 7113]) == 2
    @test specialFilter([32, 76, 24, 84, 75, -56, 10, 75]) == 2
    @test specialFilter([33, -2, -3, 45, 21, 109, 122, 357, 1892]) == 3
    @test specialFilter([11, -12, 93, -125, -125, 109]) == 3
    @test specialFilter([33, 5, -2, 14, -3, 45, 6, 109, 121, 357, 1892, 6]) == 4
    @test specialFilter([11, 12, 13, 14, 15, 16, 12]) == 3
    @test specialFilter([32, 76, 24, 84, 75, -56, 10, 75, 84]) == 2
    @test specialFilter([63, 24, 84, 75, 45, 76, 75, 13, 75]) == 4
    @test specialFilter([63, 15, 84, 75, -56, 21, 13, 15]) == 4
    @test specialFilter([75, 112, 112]) == 1
    @test specialFilter([-124, 789, 113, 112, 112, 789]) == 3
    @test specialFilter([63, 24, 84, 615, 75, -56, 13]) == 2
    @test specialFilter([32, -2, -3, 45, 20, 21, 109, 121, 357]) == 3
    @test specialFilter([-123, 456, 788, 111, -123]) == 1
    @test specialFilter([63, 76, 24, 84, 75, -56, 10, 505, -56]) == 2
    @test specialFilter([63, 76, 24, 84, 75, -56, 10, -56, 10]) == 1
    @test specialFilter([-124, 789, 113, 615, 14, 112]) == 2
    @test specialFilter([24, 84, 75, -56, 10, 10, -56]) == 1
    @test specialFilter([63, 24, 84, 74, -56, 13, 84]) == 1
    @test specialFilter([32, 76, 24, 75, -56, 10, 75, 84]) == 2
    @test specialFilter([24, 84, 75, 10, 10, -56, 24]) == 1
    @test specialFilter([63, 24, 84, 75, 45, 76, 75, 13, 74]) == 3
    @test specialFilter([11, -12, 93, -125, 100, 109]) == 3
    @test specialFilter([63, 15, 84, 75, 75, -56]) == 3
    @test specialFilter([456, 789, 120]) == 1
    @test specialFilter([24, 15, 84, 75, -56, 13]) == 3
    @test specialFilter([63, 76, 24, 84, 75, -56, 10, 76]) == 1
    @test specialFilter([63, 15, 84, 75, -56, 13, -56]) == 3
    @test specialFilter([63, 15, 84, 75, 21, 13, 15]) == 4
    @test specialFilter([120, 122, 414, 214, 615, 615, 218, 8518, 21517, 2123, 918, 615]) == 0
    @test specialFilter([-124, 789, 113, 14, 112]) == 2
    @test specialFilter([21517, 100, 101, 102, 103, 104]) == 2
    @test specialFilter([-124, 789, 113, 615, 112]) == 2
    @test specialFilter([24, 15, 84, 20, -56, 13, 24, -56]) == 2
    @test specialFilter([32, 76, 24, 84, 75, 10, 75]) == 2
    @test specialFilter([24, 83, 84, 75, 10, 10, -56, 24]) == 1
    @test specialFilter([24, 84, 75, -56, 10, 24, 10, -56, 24]) == 1
    @test specialFilter([76, 32, 76, 24, 84, 75, 10, 1111, 75]) == 3
    @test specialFilter([120, 122, 414, 214, 615, 615, 218, 8518, 21517, 2123, 918, 6, 615]) == 0
    @test specialFilter([100, 101, 24, 103, 104]) == 2
    @test specialFilter([100, -124, 456, 101, 102, 103, 104]) == 2
    @test specialFilter([120, 122, 414, 21517, 615, 122, 615, 218, 8518, 21517, 2123, 918, 6, 615]) == 0
    @test specialFilter([11, -12, 93, -124, 214, 109]) == 3
    @test specialFilter([33, 5, -2, -3, 45, 6, 121, 357, 1892, 6]) == 3
    @test specialFilter([63, 24, 75, -56, 13, 84]) == 2
    @test specialFilter([-124, 789, 615, 14]) == 1
    @test specialFilter([120, 122, 93, 414, 214, 615, 33, 218, 8518, 21517, -12, 918]) == 2
    @test specialFilter([120, 122, 414, 8518, 214, 615, 218, 8518, 21517, 213, 918]) == 0
    @test specialFilter([63, 15, 84, 75, 16, 14, -56, 13]) == 3
    @test specialFilter([-123, 456, 789, 112, -123, -123]) == 1
    @test specialFilter([120, 122, 414, 214, 615, 615, 218, 74, 21517, 2123, 918, 6, 615]) == 0
    @test specialFilter([-12, 76, 24, 84, 75, 11, -56, 10, -56, 10]) == 2
    @test specialFilter([63, 15, 84, 75, 85, 13, -56]) == 3
    @test specialFilter([24, 84, 75, 23, -56, 10, 24, 10, -56, 8518, 24]) == 1
    @test specialFilter([100, 101, 24, 103, 104, 103]) == 3
    @test specialFilter([33, 1110, 7113]) == 2
    @test specialFilter([24, 84, 615, 75, -56]) == 1
    @test specialFilter([33, 5, -2, 14, -3, 45, 109, 121, 357, 1892, 6]) == 4
    @test specialFilter([32, 76, 76, 24, 84, 75, 10, 75]) == 2
    @test specialFilter([-124, 113, 615, 112]) == 1
    @test specialFilter([120, 122, 414, 21517, 615, 122, 615, 218, 8518, 21517, 2123, 918, 6, 615, 615, 2123]) == 0
    @test specialFilter([456, 111]) == 1
    @test specialFilter([120, 122, 414, 214, 615, 615, 218, 8518, 121, 2123, 918, 6, 615]) == 1
    @test specialFilter([33, 5, 5, -2, 14, -3, 45, 6, 109, 20, 121, 357, 1892, 6]) == 4
    @test specialFilter([120, 122, 414, 214, 615, 615, 218, 8518, 21517, 2123, 7, 6, 615]) == 0
    @test specialFilter([63, 24, 76, 15, 84, 75, -56, 13, 75]) == 4
    @test specialFilter([120, 456, -123, 788, 111, -122]) == 1
    @test specialFilter([120, 5, 93, 414, 214, 615, 33, 218, 8518, 21517, -12, 918]) == 2
    @test specialFilter([63, 24, 75, 45, 76, 75, 13, 74]) == 3
    @test specialFilter([33, -3, -12, -3, 45, 21, 109, 121, 357, 1892]) == 4
    @test specialFilter([100, 101, 24, 103, 100]) == 2
    @test specialFilter([11, 12, 15, 16]) == 2
    @test specialFilter([24, 84, 75, -56, 10, 24, 84, 10, -56, 24]) == 1
    @test specialFilter([32, -2, -2, -3, 45, 21, 109, 121, 357]) == 3
    @test specialFilter([32, -2, -2, -3, 45, 21, 109, 121, 357, 109]) == 4
    @test specialFilter([32, -2, -2, -3, -324, 45, 21, 109, 121, 357, 109]) == 4
    @test specialFilter([24, 84, 75, -56, 10, 24, 10, 24]) == 1
    @test specialFilter([120, 122, 414, 214, 615, 615, 218, 8518, 121, 2123, 918, 6, 615, 6]) == 1
    @test specialFilter([63, 24, 75, -56, 7113, 13, 84]) == 3
    @test specialFilter([120, 122, 414, 8518, 120, 214, 615, 218, 8518, 21517, 213]) == 0
    @test specialFilter([63, 24, 84, 85, 615, 75, -56, 13, 615]) == 2
    @test specialFilter([33, -2, -3, 21, 109, 123, 1892]) == 3
    @test specialFilter([120, 122, 414, 214, 615, 615, 218, 8518, 21517, 2123, 918, 6, 111, 615]) == 1
    @test specialFilter([63, 24, 75, -12, -56, 13, 84]) == 2
    @test specialFilter([63, 15, 84, 75, 85, -56, 75]) == 3
    @test specialFilter([-124, 789, 113, 112, 112, 122, 789]) == 3
    @test specialFilter([63, 15, -125, 75, -56, 21, 13, 15]) == 4
    @test specialFilter([63, 24, 84, -12, 615, 75, -56, 13, 615]) == 2
    @test specialFilter([24, 84, 75, -56, 10, 10, -56, -56]) == 1
    @test specialFilter([24, 84, 75, -56, 21, 24, 84, 10, -56, 24]) == 1
    @test specialFilter([84, 75, -56, 10, 24, 10, -56, 24]) == 1
    @test specialFilter([32, 76, 113, -56, 10, 75, 84]) == 2
    @test specialFilter([11, 12, 13, 14, 15, 16, 101, 12]) == 4
    @test specialFilter([-324, -122, 456, 1111, 120]) == 1
    @test specialFilter([-12, 77, 24, 84, 75, 11, -56, 10, -56, 10, 76]) == 3
    @test specialFilter([120, 122, 414, 214, 615, 615, 218, 74, 21517, 2123, 918, 6, 615, 918]) == 0
    @test specialFilter([-324, 119, 456, 120]) == 1
    @test specialFilter([84, 63, 24, 84, 75, -56, 75, 13]) == 3
    @test specialFilter([63, 7113, 121, 84, 615, 75, -56, 122]) == 3
    @test specialFilter([-123, -324, 456, 789, 112, -123, -123]) == 1
    @test specialFilter([24, 84, -56, 10, 24, 10, 9, -56, 24, 24]) == 0
    @test specialFilter([63, 24, 75, 76, 75, 13, 74]) == 3
    @test specialFilter([63, 85, 76, 24, 84, 75, -56, 10]) == 1
    @test specialFilter([-324, 1111, 1110, 1111, 7113, 1111]) == 4
    @test specialFilter([32, 76, 24, 84, 75, -56, 10, 24, 75, 7113, 84]) == 3
    @test specialFilter([120, 122, 414, 214, 615, 33, 218, 8518, 21517, 103, 2123, -12, 918, 414]) == 2
    @test specialFilter([33, -3, 45, 21, 109, 121, 357, 1892, 45]) == 4
    @test specialFilter([75, 112]) == 1
    @test specialFilter([33, 5, -2, -3, 45, 6, 109, 121, 357, 6]) == 4
    @test specialFilter([63, 15, 84, 12, 75, -56, 13]) == 3
    @test specialFilter([32, 76, 24, 84, 75, 113, 75]) == 3
    @test specialFilter([-324, 456, 10, 1111, 7113, 7113]) == 3
    @test specialFilter([-124, 789, 113, 14, 112, 789]) == 3
    @test specialFilter([33, 15, 5, -2, -3, 45, 6, 109, 121, 357, 1892, 6, -2]) == 5
    @test specialFilter([63, 75, -56, 13, 84]) == 2
    @test specialFilter([32, 76, 24, 84, 75, -56, 10, 24, 75, 7113, 83, 84, 76]) == 3
    @test specialFilter([120, 122, 414, 214, 615, 615, 218, 8518, 21517, 2123, 918, 615, 615]) == 0
    @test specialFilter([24, 84, 75, -56, 10, 24, 9, 24]) == 1
    @test specialFilter([-124, 789, 113, 615, 14, 112, 113]) == 3
    @test specialFilter([63, 24, 84, 75, -56, 76, 10]) == 1
    @test specialFilter([63, 24, 104, 75, 45, 76, 75, 13, 74]) == 3
    @test specialFilter([24, 84, 75, -56, 10, 10, 24, 24]) == 1
    @test specialFilter([63, 76, 24, 84, 32, 104, -56, 10]) == 0
    @test specialFilter([63, 24, 104, 75, 45, 76, 75, 13, 75]) == 4
    @test specialFilter([616, 63, 24, 84, 615, 75, -56, 13, 615]) == 2
    @test specialFilter([24, 84, 75, -56, 10, 10, -56, -3]) == 1
    @test specialFilter([-56, -123, 456, 75, 112]) == 1
    @test specialFilter([63, -123, 75, -56, 13, 84]) == 2
    @test specialFilter([-123, 456, 790, 111]) == 1
    @test specialFilter([120, 122, 414, 214, 615, 33, 218, 8518, 21517, 2123, 614, -12, 918]) == 1
    @test specialFilter([-124, 113, 112, 112, 122, 789]) == 2
    @test specialFilter([-324, -122, 101, 1111, 120]) == 2
    @test specialFilter([32, 83, 24, 75, -56, 10, 75, 84]) == 2
    @test specialFilter([-124, 113, 112, 112, 122, 789, 113]) == 3
    @test specialFilter([85, 75, -56, 9, 24, -56, 24, -56]) == 1
    @test specialFilter([33, 5, -2, -3, 45, 33, 6, 109, 121, 357, 1892, 6, 121]) == 6
    @test specialFilter([100, 101, 24, 100]) == 1
    @test specialFilter([15, 75, -56, 21, 13, 15, -56]) == 4
    @test specialFilter([15, 84, 75, 8518, -56]) == 2
    @test specialFilter([-124, 113, 112, 615, 112]) == 1
    @test specialFilter([32, -2, -3, 45, 20, 21, 109, 121, 357, -2]) == 3
    @test specialFilter([-124, 113, 789, 112, 112, 122, 789]) == 3
    @test specialFilter([84, 63, 24, 84, 75, -56, 75, 13, 63]) == 3
    @test specialFilter([32, -3, 109, 45, 20, 21, 63, 357]) == 2
    @test specialFilter([33, 5, -2, -3, 45, 6, 109, 122, 357, 6]) == 3
    @test specialFilter([24, 84, 75, -56, 10, 10, 24, 24, 75]) == 2
    @test specialFilter([32, -2, -3, 45, 21, 109, 218, 357]) == 2
    @test specialFilter([20, 76, 24, 84, 75, -56, 10, -56, 64, 10]) == 1
    @test specialFilter([101, 1110, 7113]) == 2
    @test specialFilter([120, 122, 414, 214, 615, 33, 218, 8518, 21517, 2123, 614, -12]) == 1
    @test specialFilter([10, 12, 14, 13, 14, 15, 16]) == 2
    @test specialFilter([-124, 113, 112, 112, 122, 789, 113, 112]) == 3
    @test specialFilter([32, 83, 24, 75, -56, -56, 75, 84]) == 2
    @test specialFilter([33, -3, 45, 21, 109, 121, 357, 1892, 45, 45]) == 4
    @test specialFilter([24, 15, 84, -56]) == 1
    @test specialFilter([616, 63, 24, 84, 615, 75, -56, 13, 615, 615]) == 2
    @test specialFilter([63, 24, 75, 76, 75, 77, 13, 74, 75]) == 5
    @test specialFilter([63, 84, 75, -56, 75, 13]) == 3
    @test specialFilter([120, 122, 613, 414, 214, 615, 33, 218, 8518, 21517, 2123, 614, -12]) == 1
    @test specialFilter([24, 14, 75, -56, 10, 10, 24, 24]) == 1
    @test specialFilter([84, 75, -56, 21, 24, 84, 10, -56, 24]) == 1
    @test specialFilter([100, -324, -122, 456, 218, 1111, 120]) == 1
    @test specialFilter([120, 122, 414, 8518, 214, 615, 218, 8518, 21517, 213]) == 0
    @test specialFilter([24, 104, 75, 45, 76, 75, 13]) == 3
    @test specialFilter([11, 21517, -12, 93, -125, 121, 109]) == 4
    @test specialFilter([-324, 456, 10, 1111, 7113, 7113, 7113, 7113]) == 5
    @test specialFilter([15, 84, 75, 21, 13, 15]) == 4
    @test specialFilter([63, 15, 84, 11, 23, 14, -56]) == 2
    @test specialFilter([456, 455, 1111, 456]) == 1
    @test specialFilter([63, 15, 505, 23, 14, -56]) == 2
    @test specialFilter([33, -3, -12, -3, 45, 21, 108, 121, 357, 1892, 213]) == 3
    @test specialFilter([24, 84, 615, 75, -56, -56, -56]) == 1
    @test specialFilter([15, 63, 15, 505, 23, 14, -56]) == 3
    @test specialFilter([-324, 1111, 1110, 1111, 613, 7113, 8]) == 3
    @test specialFilter([24, 84, 75, -56]) == 1
    @test specialFilter([455, 15, 84, 75, 21, 13]) == 3
    @test specialFilter([75, 33, 5, -2, -3, 614, 6, 109, 121, 357, 6]) == 5
    @test specialFilter([615, 616, 63, -56, 24, 84, 615, 75, -56, 13, 615, 614]) == 2
    @test specialFilter([21517, 103, 100, 101, 102, 103, 104]) == 3
    @test specialFilter([63, 15, 84, 75, -56, 14, -56, 84]) == 2
    @test specialFilter([-324, -122, 456, 63, 120]) == 0
    @test specialFilter([33, 5, -2, 21, -3, 45, 6, 121, 357, 1892, 6, 45]) == 3
    @test specialFilter([120, 122, 414, 214, 615, 615, 218, 8518, 21517, 2123, 918, 6, 111, 615, 6]) == 1
    @test specialFilter([33, -12, -3, 45, 21, 109, 121, 357, 1892]) == 4
    @test specialFilter([24, 84, 75, 21517]) == 1
    @test specialFilter([32, -3, -12, -3, 45, 21, 121, 357, 1892]) == 2
    @test specialFilter([-124, 790, 789, 113, 14, 112]) == 2
    @test specialFilter([-124, 789, 112, 112]) == 1
    @test specialFilter([-324, -122, 101, 1111, 120, 101]) == 3
    @test specialFilter([63, 15, 84, 11, -56]) == 2
    @test specialFilter([-123, 456, 790, -56, 111]) == 1
    @test specialFilter([15, 75, -56, 24, 13, 15, -56]) == 4
    @test specialFilter([33, 456]) == 1
    @test specialFilter([-124, 113, 112, 112, 122, 789, 789, 789]) == 4
    @test specialFilter([33, 1111, 7113, 1111]) == 4
    @test specialFilter([1110, 7113]) == 1
    @test specialFilter([120, 122, 214, 615, 33, 218, 8518, 21517, 2123, 614, -12, 918]) == 1
    @test specialFilter([120, 122, 414, 21517, 615, 122, 2122, 615, 218, 8518, 21517, 2123, 918, 6, 615]) == 0
    @test specialFilter([108, 63, 121, 84, 75, -56, 122]) == 2
    @test specialFilter([32, 76, 24, 84, 75, 11, 75]) == 3
    @test specialFilter([15, 84, -57, 8518, -56]) == 1
    @test specialFilter([24, -57, 84, 75, -56, -56]) == 1
    @test specialFilter([21517, 103, 100, 101, 102, 103, 104, 21517]) == 3
    @test specialFilter([63, 85, 76, 24, 24, 84, 75, -56, 10]) == 1
    @test specialFilter([63, 24, 84, 615, 75, -56, 614, 13, 13]) == 3
    @test specialFilter([24, 84, 75, -56, 10, 10, 24, 24, 75, 24]) == 2
    @test specialFilter([10, 12, 14, 13, 7113, 15, 16]) == 3
    @test specialFilter([24, 84, 108, -56, 10, 10, -56]) == 0
    @test specialFilter([33, 5, -2, -3, 45, 6, 121, 357, 1892, 6, -3]) == 3
    @test specialFilter([-123, 456, 789, 111, -123, -123, -123]) == 2
    @test specialFilter([-124, 789, 113, 113]) == 3
    @test specialFilter([11, 12, 13, 14, 15, 16, 101, 12, 12]) == 4
    @test specialFilter([456, 1111, 7113, 1111]) == 3
    @test specialFilter([11, 13, 12, 13, 14, 12, 16, 12]) == 3
    @test specialFilter([33, 5, -2, -3, 45, 33, 6, 109, 121, 357, 1892, 6, 121, -2]) == 6
    @test specialFilter([-124, 789]) == 1
    @test specialFilter([790, -124, 789]) == 1
    @test specialFilter([15, 75, 75, -56, 21, 13, 15, -56]) == 5
    @test specialFilter([24, 15, 84, 20, -56, 12, 24, -56]) == 1
    @test specialFilter([120, 122, 93, 414, 214, 615, 33, 218, 8518, 21517, -12, 918, 214]) == 2
    @test specialFilter([120, 122, 615, 33, 218, 8518, 21517, 2123, 614, 918]) == 1
    @test specialFilter([-324, 456, 10, 7113, 7113, 7113, 7113]) == 4
    @test specialFilter([63, 76, -56, 13, 84]) == 1
    @test specialFilter([63, 24, 84, -12, 614, 615, 75, -56, 13, 615]) == 2
    @test specialFilter([-124, 789, 113, 616, 14, 112]) == 2
    @test specialFilter([63, 24, 84, 615, -56, 10]) == 0
    @test specialFilter([-3, -123, 456, -124, 789, 112]) == 1
    @test specialFilter([33, 5, -2, -3, 45, 6, 109, 122, 32, 6]) == 2
    @test specialFilter([11, 76, 93, -124, 214, 109]) == 3
    @test specialFilter([-324, 456, 10, 1111, 7113, 7113, 7113, 7113, 7113]) == 6
    @test specialFilter([32, -2, -2, -3, 45, 21, 109, 121, 357, -2]) == 3
    @test specialFilter([62, 15, 505, 23, 14, -56, 23, -56]) == 2
    @test specialFilter([120, 122, 414, 21517, 615, 122, 615, 218, 8518, 21517, 2123, 790, 6, 615, 615]) == 0
    @test specialFilter([-124, 789, 113, 615, 14, 112, 113, 789]) == 4
    @test specialFilter([-124, 789, 113, 615, 14, 120, 789, 113, 789, 789]) == 6
    @test specialFilter([113, -123, 456, 790, -56, 111]) == 2
    @test specialFilter([63, 24, 75, -12, 77, -56, 13, 84]) == 3
    @test specialFilter([120, 122, 414, 214, 5, 615, 615, 218, 74, 21517, 2123, 918, 6, 615]) == 0
    @test specialFilter([110, -123, 456, 788, 111, -123]) == 1
    @test specialFilter([32, 76, 113, 10, 75, 84]) == 2
    @test specialFilter([120, 122, 414, 21517, 615, 122, 2122, 615, 218, 8518, 21517, 918, 6, 615]) == 0
    @test specialFilter([24, 23, -57, -57, 84, -56, -56]) == 0
    @test specialFilter([32, 83, 24, -56, -56, 75, 84]) == 1
    @test specialFilter([-124, 113, 615, 113, 112]) == 2
    @test specialFilter([-324, 456, 10, 1111, 7113, 7113, 7113, 10]) == 4
    @test specialFilter([120, 122, 414, 214, 615, 33, 218, 8518, 21517, 2123, 121, 614, -12, 918]) == 2
    @test specialFilter([32, 24, 84, 75, 113]) == 2
    @test specialFilter([-123, 456, 789, 24, 112, 112]) == 1
    @test specialFilter([63, 24, 85, 84, 25, -2, 75, -56, 13]) == 2
    @test specialFilter([63, 15, 84, 75, 21, 14, 15]) == 3
    @test specialFilter([456, 1111, 7113, 1111, 1111]) == 4
    @test specialFilter([-123, 788, 111, -123]) == 1
    @test specialFilter([120, 122, 615, 33, 218, 8518, 21517, 2123, 614, 918, 218]) == 1
    @test specialFilter([63, 24, 84, 75, -56, 10, 76]) == 1
    @test specialFilter([24, 84, 75, -55, 10, 24, 10, -57, 24]) == 1
    @test specialFilter([-123, 111]) == 1
    @test specialFilter([24, 108, -56, 10, 10, -56, 10]) == 0
    @test specialFilter([33, 15, 5, -2, 62, 45, 6, 109, 121, 1892, 6, -2]) == 4
    @test specialFilter([790, 24, 23, -57, -56, 84, -56, -56]) == 0
    @test specialFilter([63, 75, -56, 13, 84, 84]) == 2
    @test specialFilter([24, 84, 75, -56, 10, 10, -56, 74]) == 1
    @test specialFilter([-123, 456, 789, 24, 112, -123]) == 1
    @test specialFilter([32, 83, 24, -56, 10, 75, 84]) == 1
    @test specialFilter([16, 32, 76, 24, 84, 75, -56, 10, 75, 84]) == 2
    @test specialFilter([33, 5, 5, -2, 14, -3, 45, 6, 109, 20, 121, 357, 1892, 6, 5]) == 4
    @test specialFilter([63, 24, 75, -12, 77, -56, 13]) == 3
    @test specialFilter([32, 76, 24, 84, 75, 10]) == 1
    @test specialFilter([24, 84, 75, -56, 10, 24, 84, 615, 10, -56, 24]) == 1
    @test specialFilter([33, -2, -3, 45, 4, 21, 109, 121, 357]) == 4
    @test specialFilter([120, 122, 93, 414, 214, 615, 33, 218, 20, 8518, 21517, -12, 918, 33]) == 3
    @test specialFilter([63, 24, 84, 75, -56, 10, 10, 63]) == 1
    @test specialFilter([11, 9, -12, 93, -125, 121, 109]) == 4
    @test specialFilter([-124, 789, 113, 615, 14, 112, 113, 112]) == 3
    @test specialFilter([24, 84, 75, -56, 10, 10, 24]) == 1
    @test specialFilter([63, 85, 76, 24, 24, 84, 75, -56, 10, 84]) == 1
    @test specialFilter([790, 24, 23, -56, 84, -56, -56]) == 0
    @test specialFilter([16, 32, 76, 24, 84, 75, -56, 75, 84]) == 2
    @test specialFilter([505, 789, 111, 505]) == 4
    @test specialFilter([-124, 113, 789, 113, 14]) == 3
    @test specialFilter([63, 15, 84, 75, 85, 13]) == 3
    @test specialFilter([33, 5, -2, -3, 76, 45, 6, 109, 121, 357, 1892, 6]) == 4
    @test specialFilter([-123, 456, 789, 112, -123, 112]) == 1
    @test specialFilter([63, 76, 13, 84]) == 1
    @test specialFilter([-124, 114, 789, 113, 615, 14, 112]) == 2
    @test specialFilter([120, 122, 414, 214, 615, 615, 218, 8518, 21517, 2123, 918, 6, 111, 6]) == 1
    @test specialFilter([32, 83, 24, -55, -56, -56, 75, 84]) == 1
    @test specialFilter([120, 122, 214, 615, 615, 218, 8518, 21517, 2123, 918, 615]) == 0
    @test specialFilter([32, 24, 84, 112]) == 0
    @test specialFilter([63, 15, 84, 75, 75, -57]) == 3
    @test specialFilter([63, 24, 84, 75, -56, 76, 10, 10, 24]) == 1
    @test specialFilter([4, 6, 8, 12, 15]) == 1
    @test specialFilter([63, 15, 11, 23, 14, -56]) == 2
    @test specialFilter([63, 24, 75, 45, 76, 75, 13, 74, 76]) == 3
    @test specialFilter([15, -56, 75, -56, 21, 1892, 15, -56, -56]) == 3
    @test specialFilter([21517, 103, 100, 101, 102, 103, 104, 21517, 103]) == 4
    @test specialFilter([120, 122, 414, 8518, 215, 615, 218, 8518, 21517, 213]) == 0
    @test specialFilter([63, 84, 75, 85, -56, 75, 77]) == 3
    @test specialFilter([63, 24, 84, 615, 75, -56, 614, 75, 13, 614]) == 3
    @test specialFilter([120, 122, 414, 214, 615, 33, 218, 8518, 21517, 103, 2123, -12, 918, 414, 615]) == 2
    @test specialFilter([616, 63, 24, 84, 615, 75, -56, 13, 615, 615, 24]) == 2
    @test specialFilter([123, 505, 789, 111, 111, 505]) == 6
    @test specialFilter([10, 12, 14, 13, 7113, 15, 16, 12]) == 3
    @test specialFilter([11, 12, 13, 12, 14, 15, 16, 11]) == 4
    @test specialFilter([63, 15, 84, 93, 16, -56, 13]) == 3
    @test specialFilter([120, 456, 101, 788, -122]) == 1
    @test specialFilter([32, -2, -3, 45, 21, 109, 121, 357, -3]) == 3
    @test specialFilter([32, -2, -3, 45, 21, 109, 218, 357, -2]) == 2
    @test specialFilter([84, -56, 75, -56, 10, 24, 10, -56, 24]) == 1
    @test specialFilter([122, 108, 63, 121, 123, 84, 75, -56, 122]) == 3
    @test specialFilter([63, 24, 85, 84, 25, 75, -56, 13]) == 2
    @test specialFilter([615, 616, 63, -56, 24, 84, 84, 615, 76, -56, 13, 615, 614]) == 1
    @test specialFilter([15, 75, -56, 21, 32, 15, -56, 75]) == 4
    @test specialFilter([63, 24, 76, 75, 77, 13, 74, 75]) == 4
    @test specialFilter([63, 15, 84, 75, -56, 21, 13, 64, 15, 13, 13, 13]) == 7
    @test specialFilter([120, 122, 414, 214, 615, 615, 218, 8518, 21517, 1111, 918, 615, 615]) == 1
    @test specialFilter([-123, 456, 789, 111, -123, -122, -123, 789]) == 3
    @test specialFilter([63, 24, 84, 75, -56, 10, 10]) == 1
    @test specialFilter([21517, 103, 100, 101, 102, 103, 6, 21517, 103]) == 4
    @test specialFilter([63, 24, 84, 75, 45, 76, 75, 74]) == 2
    @test specialFilter([31, 76, 24, 84, 75, -56, 10, 74]) == 2
    @test specialFilter([11, 12, 13, 12, 918, 15, 16, 11]) == 4
    @test specialFilter([-56, 456, 75, 112]) == 1
    @test specialFilter([33, -3, 357, 21, 109, 121, 357, 1892, 45]) == 5
    @test specialFilter([11, 615, 93, 214, 109, 109]) == 4
    @test specialFilter([63, -56, 13, 84]) == 1
    @test specialFilter([12, 15, 16]) == 1
    @test specialFilter([63, 76, 24, 63, 84, 75, -56, 10, 10]) == 1
    @test specialFilter([32, 24, 84, 75, 11, 75]) == 3
    @test specialFilter([100, 101, 24, 103, 103]) == 3
    @test specialFilter([32, 76, 84, 75, -56, 10, 24, 75, 7113, 84, 32]) == 3
    @test specialFilter([11, -12, 93, -125, -125, 109, -125]) == 3
    @test specialFilter([63, 84, 75, -56, 10, 76]) == 1
    @test specialFilter([120, 122, 414, 21517, 615, 122, 2122, 615, 218, 21517, 2123, 918, 6, 616]) == 0
    @test specialFilter([-123, 456, 789, 112, -123]) == 1
    @test specialFilter([4, -2, -3, 45, 6, 121, 357, 1892, 6, -3, 6]) == 2
    @test specialFilter([31, 84, 75, -56, 64, 74]) == 2
    @test specialFilter([100, 15, 101, 102, 5, 103, 104]) == 3
    @test specialFilter([614, 62, 101, 24, 100, 100]) == 1
    @test specialFilter([33, 5, -2, -3, 455, 45, 6, 109, 121, 357, 1892, 6]) == 4
    @test specialFilter([33, 5, -2, -3, 6, 1892, 121, 357, 1892, 6]) == 3
    @test specialFilter([24, 83, 84, 75, 10, -56, 24]) == 1
    @test specialFilter([100, 24, 103, 103]) == 2
    @test specialFilter([84, -56, 75, -56, 10, 24, 10, -56, 24, 10]) == 1
    @test specialFilter([24, 84, -56, 10, 24, 10, 9, -56, 11, 24, 24]) == 1
    @test specialFilter([26, -324, 1111, 7113]) == 2
    @test specialFilter([-124, 789, 112, 112, -124]) == 1
    @test specialFilter([789, -124, 789, 112]) == 2
    @test specialFilter([-324, -122, 101, -324, 1111, 120, 101]) == 3
    @test specialFilter([120, 122, 414, 214, 615, 33, 218, 8518, 21517, 64, 614, -12]) == 1
    @test specialFilter([63, 24, 84, -12, 614, 615, 75, -56, 83, 13, 615]) == 2
    @test specialFilter([-325, -324, 101, 1111, 120]) == 2
    @test specialFilter([84, 63, 14, 24, 84, 75, -56, 75, 13, 63, 24]) == 3
    @test specialFilter([-324, 456, 10, 7113, 7113, 7113, 4]) == 3
    @test specialFilter([62, 15, 84, 75, 75, -57]) == 3
end
