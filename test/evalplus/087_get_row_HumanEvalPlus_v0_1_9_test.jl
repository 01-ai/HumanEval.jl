@testitem "087_get_row_HumanEvalPlus_v0_1_9_test.jl" tags=[:HumanEvalPlus_v0_1_9] begin
    include(joinpath(ENV["GENERATION_DIR"], "087_get_row.jl"))
    @test get_row([Int64[], Int64[], Int64[], Int64[]],10) == Tuple{Int64, Int64}[]
    @test get_row([[1, 2, 3], [4, 5, 6]],5) == [(2, 2)]
    @test get_row([[1, 1], [1, 2, 3], [4, 5, 6, 7]],1) == [(1, 2), (1, 1), (2, 1)]
    @test get_row([[1, 0, 4], [4, 8, -1, 1], [0], [5, 5, 5, -3]],0) == [(1, 2), (3, 1)]
    @test get_row([[0, 0, 0, 0, 0], [0, 1, 2], [0, 1, 2, 3, 4, 5, 6, 7, 8], Int64[], [0, 0, 0]],0) == [(1, 5), (1, 4), (1, 3), (1, 2), (1, 1), (2, 1), (3, 1), (5, 3), (5, 2), (5, 1)]
    @test get_row([[1, 2, 3], [4, 5, 6], [7, 8]],3) == [(1, 3)]
    @test get_row(Vector{Int64}[],5) == Tuple{Int64, Int64}[]
    @test get_row([Int64[], Int64[], Int64[]],1) == Tuple{Int64, Int64}[]
    @test get_row([[1, 2], [2, 3, 4], [4, 5, 6, 7], [7, 8, 9, 10, 11]],4) == [(2, 3), (3, 1)]
    @test get_row([[1, 1, 1, 1], [2, 2, 2, 2, 2], [3, 3, 3], [4, 4], [5, 5, 5, 5, 5, 5, 5, 5]],5) == [(5, 8), (5, 7), (5, 6), (5, 5), (5, 4), (5, 3), (5, 2), (5, 1)]
    @test get_row([[1, 2], [2, 3, 4], [4, 5, 6, 6, 7], [4, 5, 6, 6, 7], [7, 8, 9, 10, 11], [2, 3, 4]],4) == [(2, 3), (3, 1), (4, 1), (6, 3)]
    @test get_row([Int64[], Int64[], Int64[]],6) == Tuple{Int64, Int64}[]
    @test get_row([[0, 0, 0, 0, 0], [0, 1, 2], [0, 1, 2, 3, 4, 5, 6, 7, 8], Int64[], [0, 0, 0]],-1) == Tuple{Int64, Int64}[]
    @test get_row([[3, 1, 2, 3], [4, 5, 6]],5) == [(2, 2)]
    @test get_row([[1, 1, 1, 1], [2, 2, 2, 2, 2], [3, 3, 3], [4, 4], [5, 5, 5, 5, 5, 5, 5, 5], [2, 2, 2, 2, 2]],5) == [(5, 8), (5, 7), (5, 6), (5, 5), (5, 4), (5, 3), (5, 2), (5, 1)]
    @test get_row([Int64[], Int64[], Int64[], Int64[]],6) == Tuple{Int64, Int64}[]
    @test get_row([Int64[], [0, 1, 1], Int64[]],0) == [(2, 1)]
    @test get_row([[1, 2], [2, 3, 4], [4, 5, 6, 7], [7, 8, 9, 10, 11], [7, 8, 9, 10, 11]],4) == [(2, 3), (3, 1)]
    @test get_row([Int64[], [0, 1, 1], Int64[]],-1) == Tuple{Int64, Int64}[]
    @test get_row([[1, 2], [2, 3, 4], [4, 5, 6, 7], [7, 8, 9, 10, 11]],9) == [(4, 3)]
    @test get_row([[0, 0, 0, 0, 0], [0, 1, 2], [0, 1, 2, 3, 4, 5, 6, 7, 8], Int64[], [-1, 0, 0, 0, 0]],3) == [(3, 4)]
    @test get_row([[1, 2, 3], [7, 8, 7]],3) == [(1, 3)]
    @test get_row([[0, 0, 0, 0, 0], [0, 1, 2], [0, 1, 2, 3, 4, 5, 6, 7, 8], [0, 0, 0]],-1) == Tuple{Int64, Int64}[]
    @test get_row([[0, 0, 0, 0, 0], [0, 1, 2], [0, 1, 2, 3, 4, 5, 6, 7, 8], [0, 0, 0], [0, 1, 2, 3, 4, 5, 6, 7, 8]],0) == [(1, 5), (1, 4), (1, 3), (1, 2), (1, 1), (2, 1), (3, 1), (4, 3), (4, 2), (4, 1), (5, 1)]
    @test get_row([[3, 1, 2, 3], [4, 5, 6], [3, 1, 2, 3]],5) == [(2, 2)]
    @test get_row([[0, 0, 0, 0, 0], [0, 1, 2], [0, 1, 2, 3, 4, 5, 6, 7, 8], [0, 0, 0], [0, 0, 0, 0, 0], [0, 0, 0]],-1) == Tuple{Int64, Int64}[]
    @test get_row([Int64[], Int64[], [-3, 35, 54, 0, -3, -92, 68, 7], Int64[], Int64[]],0) == [(3, 4)]
    @test get_row([[1, 2], [2, 3, 4], [4, 5, 6, 7]],9) == Tuple{Int64, Int64}[]
    @test get_row([[3, 1, 2, 3], [4, 5, 6]],8) == Tuple{Int64, Int64}[]
    @test get_row([[1, 1], [1, 11, 3], [1, 11, 3], [4, 5, 6, 7]],1) == [(1, 2), (1, 1), (2, 1), (3, 1)]
    @test get_row([[3, 1, 2, 3], [4, 5, 6], [3, 1, 2, 3], [4, 5, 6]],5) == [(2, 2), (4, 2)]
    @test get_row([[0]],1) == Tuple{Int64, Int64}[]
    @test get_row([[1]],1) == [(1, 1)]
    @test get_row([[1, 2], [2, 1, 3], [1, 3, 2, 1], [2, 1, 1]],1) == [(1, 1), (2, 2), (3, 4), (3, 1), (4, 3), (4, 2)]
    @test get_row([[1, 2], [2, 1, 3], [4, 3, 2, 5], [2, 1, 6]],7) == Tuple{Int64, Int64}[]
    @test get_row([[1, 5, 3, 5, 7, 5, 9, 5, 11, 5, 13, 5]],5) == [(1, 12), (1, 10), (1, 8), (1, 6), (1, 4), (1, 2)]
    @test get_row([Int64[], Int64[], Int64[], Int64[], Int64[]],1) == Tuple{Int64, Int64}[]
    @test get_row([Int64[], Int64[], Int64[], Int64[], Int64[]],10) == Tuple{Int64, Int64}[]
    @test get_row([[1], [1], [1], [1]],1) == [(1, 1), (2, 1), (3, 1), (4, 1)]
    @test get_row([[1], [1], [1], [1]],2) == Tuple{Int64, Int64}[]
    @test get_row([[1, 2, 3], [3, 2, 1], [1, 2, 3], [3, 2, 1], [1, 2, 3]],2) == [(1, 2), (2, 2), (3, 2), (4, 2), (5, 2)]
    @test get_row([[2, 0]],1) == Tuple{Int64, Int64}[]
    @test get_row([[1, 2, 3], [3, 2, 1], [1, 2, 3], [3, 2, 1], [1, 2, 3]],3) == [(1, 3), (2, 1), (3, 3), (4, 1), (5, 3)]
    @test get_row([Int64[]],1) == Tuple{Int64, Int64}[]
    @test get_row([[1, 2, 3], [3, 2, 1], [1, 2, 3], [3, 2, 1], [1, 2, 3]],10) == Tuple{Int64, Int64}[]
    @test get_row([Int64[], Int64[]],0) == Tuple{Int64, Int64}[]
    @test get_row([[1, 2], [2, 1, 3], [4, 3, 2, 5], [2, 1, 6]],10) == Tuple{Int64, Int64}[]
    @test get_row([Int64[]],0) == Tuple{Int64, Int64}[]
    @test get_row([[1, 2, 3], [3, 2, 1], [1, 2, 9, 3], [1, 2, 9, 3], [3, 2, 1], [1, 2, 3]],3) == [(1, 3), (2, 1), (3, 4), (4, 4), (5, 1), (6, 3)]
    @test get_row([Int64[], Int64[]],-98) == Tuple{Int64, Int64}[]
    @test get_row([[1, 2, 3], [3, 2, 1], [1, 2, 3], [3, 2, 1], [1, 2, 3]],62) == Tuple{Int64, Int64}[]
    @test get_row([[0]],0) == [(1, 1)]
    @test get_row([Int64[], Int64[], Int64[], Int64[]],1) == Tuple{Int64, Int64}[]
    @test get_row([[1, 2, 3], [3, 2, 1], [1, 2, 3], [3, 2, 1], [1, 2, 3]],-27) == Tuple{Int64, Int64}[]
    @test get_row([[1, 2], [2, 1, 3], [4, 3, 2, 5], [2, 1, 6]],-27) == Tuple{Int64, Int64}[]
    @test get_row([Int64[], Int64[], Int64[], Int64[], Int64[]],0) == Tuple{Int64, Int64}[]
    @test get_row([Int64[], Int64[], [1], [1], [1]],0) == Tuple{Int64, Int64}[]
    @test get_row([[3, 2, 1], [1, 2, 9, 3], [1, 2, 9, 3], [3, 2, 1], [1, 2, 3]],7) == Tuple{Int64, Int64}[]
    @test get_row([[1, 3, 3], [3, 2, 1], [1, 2, 3], [3, 2, 1], [1, 2, 3]],62) == Tuple{Int64, Int64}[]
    @test get_row([[4, 3, 2, 5], [2, 1, 6]],-27) == Tuple{Int64, Int64}[]
    @test get_row([[1, 2, 3], [3, 2, 1], [1, 2, 3], [3, 2, 1], [1, 2, 3]],4) == Tuple{Int64, Int64}[]
    @test get_row(Vector{Int64}[],1) == Tuple{Int64, Int64}[]
    @test get_row([[1, 2, 7], [3, 2, 1], [1, 2, 7], [1, 2, 3], [3, 2, 1], [1, 2]],10) == Tuple{Int64, Int64}[]
    @test get_row([[3, 2, 1], [1, 2, 9, 3], [3, 2, 1], [1, 2, 3]],8) == Tuple{Int64, Int64}[]
    @test get_row([[1], [1], [1]],1) == [(1, 1), (2, 1), (3, 1)]
    @test get_row([[1, 2], [2, 1, 3], [4, 3, 2, 5], [2, 1, 6]],8) == Tuple{Int64, Int64}[]
    @test get_row([[1, 5], [2, 1, 3], [4, 3, 2, 5], [2, 1, 6]],10) == Tuple{Int64, Int64}[]
    @test get_row([[1, 2], [2, 1, 3], [4, 3, 2, 5], [2, 1, 6]],9) == Tuple{Int64, Int64}[]
    @test get_row([Int64[]],7) == Tuple{Int64, Int64}[]
    @test get_row([[1, 2], [2, 1, 3], [4, 3, 2, 5], [2, 1, 6]],49) == Tuple{Int64, Int64}[]
    @test get_row([[1, 2], [2, 1, 3], [4, 3, 2, 5], [2, 1, 6], [2, 1, 6]],0) == Tuple{Int64, Int64}[]
    @test get_row([[1, 0, 0], Int64[], Int64[], Int64[], Int64[], Int64[]],1) == [(1, 1)]
    @test get_row([[1, 2, 3], [3, 2, 1], [1, 2, 3], [3, 2, 1], [1, 2, 3]],5) == Tuple{Int64, Int64}[]
    @test get_row([[1, 2], [2, 1, 3], [4, 3, 2, 5], [2, 1, 6], [2, 1, 6]],9) == Tuple{Int64, Int64}[]
    @test get_row([[0]],9) == Tuple{Int64, Int64}[]
    @test get_row([[1, 2, 3], [3, 2, 1], [1, 2, 1, 3], [1, 2, 1, 3], [3, 2, 1], [1, 2, 3], [3, 2, 1], [1, 2, 3]],5) == Tuple{Int64, Int64}[]
    @test get_row([[1, 2], [2, 1, 3], [4, 3, 2, 5], [2, 1, 6]],34) == Tuple{Int64, Int64}[]
    @test get_row(Vector{Int64}[],-89) == Tuple{Int64, Int64}[]
    @test get_row([Int64[], Int64[], Int64[], Int64[], Int64[]],2) == Tuple{Int64, Int64}[]
    @test get_row([[1, 2, 3], [1, 2, 3], [3, 2, 1], [1, 2, 3]],5) == Tuple{Int64, Int64}[]
    @test get_row(Vector{Int64}[],10) == Tuple{Int64, Int64}[]
    @test get_row([[1, 2], [2, 1, 3], [2, 1, 1]],1) == [(1, 1), (2, 2), (3, 3), (3, 2)]
    @test get_row([[3, 2, 1], [3, 2, 2], [1, 2, 9, 3], [3, 2, 2], [1, 2, 3]],8) == Tuple{Int64, Int64}[]
    @test get_row([[1, 2, 3], [3, 2, 1], [1, 2, 3], [3, 2, 1]],-27) == Tuple{Int64, Int64}[]
    @test get_row([Int64[], Int64[], Int64[], Int64[], Int64[]],62) == Tuple{Int64, Int64}[]
    @test get_row([Int64[], Int64[], Int64[], Int64[], Int64[], Int64[]],-98) == Tuple{Int64, Int64}[]
    @test get_row([[1, 2, 3], [3, 2, 1], [1, 2, 3], [3, 2, 1], [1, 2, 3]],34) == Tuple{Int64, Int64}[]
    @test get_row([Int64[]],6) == Tuple{Int64, Int64}[]
    @test get_row(Vector{Int64}[],6) == Tuple{Int64, Int64}[]
    @test get_row([[1, 5, 3, 5, -66, 5, 9, 5, 11, 5, 13, 5]],5) == [(1, 12), (1, 10), (1, 8), (1, 6), (1, 4), (1, 2)]
    @test get_row([[1, 2, 3], [3, 2, 1], [1, 2, 3], [3, 2, 1], [1, 2, 3], [3, 2, 1]],3) == [(1, 3), (2, 1), (3, 3), (4, 1), (5, 3), (6, 1)]
    @test get_row([[4, 3, 2, 5]],-27) == Tuple{Int64, Int64}[]
    @test get_row([[1, 2, 3], [3, 2, 1], [1, 2, 1, 3], [1, 2, 1, 3], [3, 2, 1], [1, 2, 3], [1, 2, 3]],5) == Tuple{Int64, Int64}[]
    @test get_row([[1, 0, 0], Int64[], Int64[], Int64[], Int64[], Int64[]],9) == Tuple{Int64, Int64}[]
    @test get_row([[1, 2, 3], [3, 2, 1], [1, 2, 3], [3, 2, 1], [1, 2, 3]],74) == Tuple{Int64, Int64}[]
    @test get_row([[1, 2, 3], [3, 2, 1], [1, 2, 3], [3, 2, 1], [1, 2, 3], [1, 2, 3]],4) == Tuple{Int64, Int64}[]
    @test get_row([[1, 2, 3], [3, 2, 1], [1, 2, 3], [3, 2, 1], [1, 2, 3]],45) == Tuple{Int64, Int64}[]
    @test get_row([[0, 1, 0, 1, 1, 0, 1, 0], [1, 0, 0], Int64[], Int64[], Int64[], Int64[], Int64[]],1) == [(1, 7), (1, 5), (1, 4), (1, 2), (2, 1)]
    @test get_row([[1, 2, 3], [3, 2, 1], [1, 2, 3], [3, 2, 1]],-26) == Tuple{Int64, Int64}[]
    @test get_row([[1, 2], [1, 1], [2, 1, 3], [1, 1]],1) == [(1, 1), (2, 2), (2, 1), (3, 2), (4, 2), (4, 1)]
    @test get_row([[1, 2], [2, 1, 3], [4, 3, 2, 4, 5], [4, 3, 2, 4, 5], [2, 1, 6], [2, 1, 6]],62) == Tuple{Int64, Int64}[]
    @test get_row([[-6, -38, 25, 3, 45]],0) == Tuple{Int64, Int64}[]
    @test get_row([Int64[], Int64[], Int64[]],-98) == Tuple{Int64, Int64}[]
    @test get_row([Int64[], Int64[], Int64[]],0) == Tuple{Int64, Int64}[]
    @test get_row([[1, 2, 3], [3, 2, 1], [1, 2, 3], [3, 2, 1], [1, 2, 3], [1, 2, 3]],2) == [(1, 2), (2, 2), (3, 2), (4, 2), (5, 2), (6, 2)]
    @test get_row(Vector{Int64}[],-1) == Tuple{Int64, Int64}[]
    @test get_row([Int64[], Int64[]],13) == Tuple{Int64, Int64}[]
    @test get_row([[1, 2], [2, 1, 3], [4, 3, 2, 5], [2, 1, 6]],-73) == Tuple{Int64, Int64}[]
    @test get_row([Int64[]],8) == Tuple{Int64, Int64}[]
    @test get_row([[1, 5], [2, 1, 3], [4, 3, 2, 5], [2, 1, 6]],44) == Tuple{Int64, Int64}[]
    @test get_row([Int64[], Int64[], Int64[], Int64[]],0) == Tuple{Int64, Int64}[]
    @test get_row([Int64[], Int64[], Int64[]],-1) == Tuple{Int64, Int64}[]
    @test get_row([Int64[], Int64[], Int64[], Int64[]],4) == Tuple{Int64, Int64}[]
    @test get_row([[5]],5) == [(1, 1)]
    @test get_row([[1, 2, 3], [4, 5, 6], [7, 8, 9]],0) == Tuple{Int64, Int64}[]
    @test get_row([[1, 1, 1], [1, 1, 1], [1, 1, 1]],1) == [(1, 3), (1, 2), (1, 1), (2, 3), (2, 2), (2, 1), (3, 3), (3, 2), (3, 1)]
    @test get_row([[1, 2, 3, 4], [1, 2, 3], [1, 2], [1]],1) == [(1, 1), (2, 1), (3, 1), (4, 1)]
    @test get_row([Int64[], Int64[], Int64[]],5) == Tuple{Int64, Int64}[]
    @test get_row([[1, 2, 3, 4, 5]],3) == [(1, 3)]
    @test get_row([[1], [2], [3]],2) == [(2, 1)]
    @test get_row([[1, 2], [2, 1, 3], [4, 3, 2, 5], [2, 1, 6]],6) == [(4, 3)]
    @test get_row([[5, 3, 5, 7, 5, 9, 5, 11, 5, 13, 5]],5) == [(1, 11), (1, 9), (1, 7), (1, 5), (1, 3), (1, 1)]
    @test get_row([[-59, 0]],1) == Tuple{Int64, Int64}[]
    @test get_row([[-59, 0]],80) == Tuple{Int64, Int64}[]
    @test get_row([[2, 1], [1, 2], [2, 1], [4, 3, 2, 5], [2, 1, 6], [2, 1]],6) == [(5, 3)]
    @test get_row([[1, 0], [1, 0]],80) == Tuple{Int64, Int64}[]
    @test get_row([[1], [1], [1], [1], [1]],1) == [(1, 1), (2, 1), (3, 1), (4, 1), (5, 1)]
    @test get_row([[1, 5, 3, 5, 7, 5, 9, 5, 11, 5, 13, 5, 3]],0) == Tuple{Int64, Int64}[]
    @test get_row([[5, 3, 5, 7, 5, 9, 5, 11, 5, 13, 5], [5, 3, 5, 7, 5, 9, 5, 11, 5, 13, 5]],4) == Tuple{Int64, Int64}[]
    @test get_row(Vector{Int64}[],0) == Tuple{Int64, Int64}[]
    @test get_row([[1, 2], [2, 1, 3], [1, 3, 2, 1], [2, 1, 1], [1, 2]],-95) == Tuple{Int64, Int64}[]
    @test get_row([[1], [1], [1], [1]],9) == Tuple{Int64, Int64}[]
    @test get_row([[1, 5, 3, 5, 7, 5, 9, 5, 11, 5, 13, 6, 5, 3]],0) == Tuple{Int64, Int64}[]
    @test get_row([[1], [1], [1, 1], [1]],2) == Tuple{Int64, Int64}[]
    @test get_row([[2, 1], [1, 2], [2, 1], [4, 3, 2, 5], [2, 1, 6], [2, 1]],7) == Tuple{Int64, Int64}[]
    @test get_row([[1], [1], [1], [1], [1]],2) == Tuple{Int64, Int64}[]
    @test get_row([[1], [1], [1], [1]],0) == Tuple{Int64, Int64}[]
    @test get_row([[2, 1], [1, 4, 2], [2, 1], [4, 3, 2, 5], [2, 1, 6], [2, 1]],7) == Tuple{Int64, Int64}[]
    @test get_row([[1], [1], Int64[], [1]],0) == Tuple{Int64, Int64}[]
    @test get_row([[1], [1]],0) == Tuple{Int64, Int64}[]
    @test get_row([[1], [1], [1, 1], [1, 2], [1, 1]],3) == Tuple{Int64, Int64}[]
    @test get_row([[1]],10) == Tuple{Int64, Int64}[]
    @test get_row([[2, 1], [1, 2, 2], [2, 1], [4, 3, 2, 5], [2, 1, 6], [2, 1]],7) == Tuple{Int64, Int64}[]
    @test get_row([[2, 1], [1, 2], [2, 1], [4, 3, 2, 5], [2, 1, 6], [2, 1]],5) == [(4, 4)]
    @test get_row([[80, 2, 1], [80, 2, 1], [1, 2], [80, 2, 1], [4, 3, 2, 5], [2, 1, 6], [80, 2, 1]],5) == [(5, 4)]
    @test get_row([[2, 1], [1, 2, 2], [2, 1], [4, 3, 2, 5], [2, 1, 6], [2, 1], [2, 1]],7) == Tuple{Int64, Int64}[]
    @test get_row(Vector{Int64}[],2) == Tuple{Int64, Int64}[]
    @test get_row([[1], [1], [11, 1], [1], [1]],2) == Tuple{Int64, Int64}[]
    @test get_row([[2, 1], [1, 2, 2], [2, 1], [4, 3, 2, 5], [2, 1]],8) == Tuple{Int64, Int64}[]
    @test get_row([[1], [1], [1, 1], [1]],7) == Tuple{Int64, Int64}[]
    @test get_row([[1], [1], [2, 1], [2, 1], [1], [2, 1]],11) == Tuple{Int64, Int64}[]
    @test get_row([[2, 0, 1], [1, 2], [2, 0, 1], [4, 3, 2, 5], [2, 1, 6], [2, 0, 1]],6) == [(5, 3)]
    @test get_row([[1, 2], [2, 1, 3], [1, 3, 2, 1], [2, 1, 1], [1, 2]],-96) == Tuple{Int64, Int64}[]
    @test get_row([[-59, 0], [-59, 0]],80) == Tuple{Int64, Int64}[]
    @test get_row([Int64[], [1], [1], [1], Int64[]],1) == [(2, 1), (3, 1), (4, 1)]
    @test get_row([[2, 2], [1, 2], [2, 2], [4, 3, 2, 5], [2, 1, 6], [2, 2], [2, 2]],5) == [(4, 4)]
    @test get_row([[1], [1], [11, 1], [1]],2) == Tuple{Int64, Int64}[]
    @test get_row([[1, 2], [2, 1, 3], [1, 3, 2, 1], [2, 1, 1], [1, 2], [1, 2]],11) == Tuple{Int64, Int64}[]
    @test get_row(Vector{Int64}[],-96) == Tuple{Int64, Int64}[]
    @test get_row([[1], [1], [11, 1]],0) == Tuple{Int64, Int64}[]
    @test get_row([[1], [1], [-59, 11, 1]],0) == Tuple{Int64, Int64}[]
    @test get_row(Vector{Int64}[],-59) == Tuple{Int64, Int64}[]
    @test get_row([[1, 0], [1, 0], [1, 0]],81) == Tuple{Int64, Int64}[]
    @test get_row([[1], [1], [-59, 11, 1]],1) == [(1, 1), (2, 1), (3, 3)]
    @test get_row([[1], [1, 1], [11, 1], [1, 1], [1]],2) == Tuple{Int64, Int64}[]
    @test get_row([[2], [1, 2], [2], [4, 3, 2, 5], [2, 1, 6], [2], [2]],5) == [(4, 4)]
    @test get_row([[2, 1], [1, 2, 2], [1, 2, 2], [2, 1], [4, 3, 2, 5], [2, 1, 6], [2, 1]],7) == Tuple{Int64, Int64}[]
    @test get_row([[1, 5, 3, 5, 7, 5, 9, 5, 11, 5, 13, 5], [1, 5, 3, 5, 7, 5, 9, 5, 11, 5, 13, 5]],5) == [(1, 12), (1, 10), (1, 8), (1, 6), (1, 4), (1, 2), (2, 12), (2, 10), (2, 8), (2, 6), (2, 4), (2, 2)]
    @test get_row([[1], [1], [-59, 11, 1]],81) == Tuple{Int64, Int64}[]
    @test get_row([[1], [1], [1], [1], [1]],0) == Tuple{Int64, Int64}[]
    @test get_row([[1]],0) == Tuple{Int64, Int64}[]
    @test get_row([[1], [1], Int64[], [1]],-28) == Tuple{Int64, Int64}[]
    @test get_row([[1, 0], [1, 0]],-32) == Tuple{Int64, Int64}[]
    @test get_row([[5, 3, 5, 7, 5, 9, 5, 11, 5, 13, 5], [5, 3, 5, 7, 5, 9, 5, 11, 5, 13, 5]],5) == [(1, 11), (1, 9), (1, 7), (1, 5), (1, 3), (1, 1), (2, 11), (2, 9), (2, 7), (2, 5), (2, 3), (2, 1)]
    @test get_row([[1, 1], [1], [1], [1], [1, 1], [1]],2) == Tuple{Int64, Int64}[]
    @test get_row([Int64[], [1], [1], [1], Int64[], [1]],1) == [(2, 1), (3, 1), (4, 1), (6, 1)]
    @test get_row([Int64[], Int64[], Int64[], Int64[], Int64[]],-32) == Tuple{Int64, Int64}[]
    @test get_row([[2, 1, 1], [1, 2], [2, 1, 1], [4, 3, 2, 5], [2, 1, 6], [2, 1, 1]],6) == [(5, 3)]
    @test get_row([[1], [1], [1]],9) == Tuple{Int64, Int64}[]
    @test get_row(Vector{Int64}[],79) == Tuple{Int64, Int64}[]
    @test get_row([[1], [2, 1, 3], [1, 3, 2, 1], [2, 1, 1], [1]],-96) == Tuple{Int64, Int64}[]
    @test get_row([[-59]],1) == Tuple{Int64, Int64}[]
    @test get_row(Vector{Int64}[],-58) == Tuple{Int64, Int64}[]
    @test get_row([[1], [1], Int64[], [1]],-1) == Tuple{Int64, Int64}[]
    @test get_row([[-59, 0], [-59, 0], [-59, 0]],80) == Tuple{Int64, Int64}[]
    @test get_row([[2], [1], [11, 1], [1], [2]],2) == [(1, 1), (5, 1)]
    @test get_row([[2, 1], [4, 3, 3, 2, 5], [1, 2, 2], [2, 1], [4, 3, 3, 2, 5], [2, 1, 6], [2, 1], [2, 1]],7) == Tuple{Int64, Int64}[]
    @test get_row([[1], [1], [1, 1], [1, 2], [1, 1]],2) == [(4, 2)]
    @test get_row([[2, 1], [1, 2, 2], [2, 1], [4, 3, 3, 2, 5], [2, 1, 6], [4, 3, 3, 2, 5], [2, 1], [2, 1]],7) == Tuple{Int64, Int64}[]
    @test get_row([[2, 1], [1, 2, 2, 2], [2, 1], [4, 3, 2, 5], [2, 1, 6], [2, 1], [1, 2, 2, 2], [2, 1]],7) == Tuple{Int64, Int64}[]
    @test get_row([[1], [0], [1], [0], [1]],2) == Tuple{Int64, Int64}[]
    @test get_row([[1], [1], [1, 1], [79, 2], [1, 1]],3) == Tuple{Int64, Int64}[]
    @test get_row([[0], Int64[], Int64[], Int64[], Int64[]],-32) == Tuple{Int64, Int64}[]
    @test get_row([[1], [1], [1], [1]],81) == Tuple{Int64, Int64}[]
    @test get_row([[1, 0], [1, 0], [1, 0], [1, 0]],81) == Tuple{Int64, Int64}[]
end