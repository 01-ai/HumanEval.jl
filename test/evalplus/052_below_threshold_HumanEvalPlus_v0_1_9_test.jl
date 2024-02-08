@testitem "052_below_threshold_HumanEvalPlus_v0_1_9_test.jl" tags=[:HumanEvalPlus_v0_1_9] begin
    include(joinpath(ENV["GENERATION_DIR"], "052_below_threshold.jl"))
    @test below_threshold([0, 0, 0, 0],1) == true
    @test below_threshold([1, 3, 5, 7],10) == true
    @test below_threshold([-1, -2, -3, -4],0) == true
    @test below_threshold([2, 4, 6, 8],7) == false
    @test below_threshold(Union{}[],5) == true
    @test below_threshold([1, 2, 3, 4],4) == false
    @test below_threshold([-4, -3, -2, -1],-5) == false
    @test below_threshold([1, 2, 4, 10],0) == false
    @test below_threshold([1, 4, 7, 10],6) == false
    @test below_threshold([3.5, 2.2, 1.1],5) == true
    @test below_threshold([1, 3, 4],4) == false
    @test below_threshold([1, 4, 7, 10],-2) == false
    @test below_threshold([1, 4, -4, 7, 10],6) == false
    @test below_threshold([1, 2, 3, -1, 4],4) == false
    @test below_threshold([1, 3, 5, 7, 5],10) == true
    @test below_threshold([4, -4, 7, 10],6) == false
    @test below_threshold([-4, -3, -2, -1],-1) == false
    @test below_threshold([1, 4, 7, 10, 7],6) == false
    @test below_threshold([-4, -3, -2, 4, -4],-1) == false
    @test below_threshold([1, 2, 3, -1, 4],5) == true
    @test below_threshold([1, 3, 5, 7],11) == true
    @test below_threshold([0, -1, 0, 0, 0],0) == false
    @test below_threshold([1, 4, 7, 9],10) == true
    @test below_threshold([1, 2, -4, 4],4) == false
    @test below_threshold(Bool[1, 0],5) == true
    @test below_threshold([-1, -2, -4],0) == true
    @test below_threshold(Bool[1, 0],4) == true
    @test below_threshold([1, 3, 7, 5],10) == true
    @test below_threshold([1, 2, 3, -1, 4, 4],4) == false
    @test below_threshold([1, 3, 10, 4],5) == false
    @test below_threshold([3, 1, 4, 7, 10, 7],6) == false
    @test below_threshold([1.1, 3.5, 2.2, 1.1],5) == true
    @test below_threshold([-4, -3, 4, -4],-1) == false
    @test below_threshold([1, 4, 7, 9, 1],10) == true
    @test below_threshold([1, 4, 7, 10, 7],5) == false
    @test below_threshold([3.5, 2.6445924145352944, 2.2, 1.1],3) == false
    @test below_threshold([0, -1, -2, -4],0) == false
    @test below_threshold([1, 3, 7, 5],-3) == false
    @test below_threshold([0, 0, 2, 0, 0],1) == false
    @test below_threshold([-1, -2, -4],-4) == false
    @test below_threshold(Bool[1, 0, 0],3) == true
    @test below_threshold([1, 3, 7, 5],-1) == false
    @test below_threshold([4, -4, 7, 10],-2) == false
    @test below_threshold([1, 4, 7, 9],6) == false
    @test below_threshold([7, -2, -3, -3, -4],0) == false
    @test below_threshold(Bool[1, 0, 0],-4) == false
    @test below_threshold([3.5, 2.2, 1.1],-4) == false
    @test below_threshold([-4, -3, -2, 4],-1) == false
    @test below_threshold([1, 2, 3, 4],1) == false
    @test below_threshold([4, -4, 7, 10],7) == false
    @test below_threshold([0, -1, 0, 0, 0],8) == true
    @test below_threshold([1, 2, 5, 3, 4],4) == false
    @test below_threshold([-1, 8, -2, -4, 8],-2) == false
    @test below_threshold([1, 3, 7, 5],8) == true
    @test below_threshold([-1, -2, -4],-5) == false
    @test below_threshold([2, 4, 6, 8],6) == false
    @test below_threshold([-3, -2, 4],-1) == false
    @test below_threshold([1, 4, 7, 9, 1],11) == true
    @test below_threshold([1, 4, 7, 9, 9],10) == true
    @test below_threshold([-2, -4],-4) == false
    @test below_threshold([1, 5, 7],10) == true
    @test below_threshold([4, -4, 7, 10, -4],7) == false
    @test below_threshold([1, 3, 4],2) == false
    @test below_threshold([1, -3, 2, 3, 4],1) == false
    @test below_threshold([6, 4, -4, 7, 10],7) == false
    @test below_threshold([3.5, 2.2, 3.5],5) == true
    @test below_threshold([1, 2, -5, -4, 4],4) == false
    @test below_threshold([1, 3, 7, 5],9) == true
    @test below_threshold([-2, -4],-5) == false
    @test below_threshold([1, 4, 7, 10, 7],4) == false
    @test below_threshold(Bool[1, 0, 0],5) == true
    @test below_threshold([1, 3, 7, 11],-3) == false
    @test below_threshold([-1, 8, -2, 8],-2) == false
    @test below_threshold([1, 0, 2, 0, 0],2) == false
    @test below_threshold([-3, -3, -2, 4],-1) == false
    @test below_threshold([3.5, 3.5, 2.2, 3.5, 3.5],5) == true
    @test below_threshold([4, -4, -2, 7, 10],6) == false
    @test below_threshold([1, 0, 2, 0, 0],3) == true
    @test below_threshold([1, 2, 3, -1, 4, 4],5) == true
    @test below_threshold([1, 3, 7, 5, 3],9) == true
    @test below_threshold([1, 8, 7, 5],-3) == false
    @test below_threshold([-2, -3, -3, -4],0) == true
    @test below_threshold([-3, -2, 4, 4, -2],0) == false
    @test below_threshold([-1, 1, 2, 3, -1, 4, 4],4) == false
    @test below_threshold([3, 5, 7],11) == true
    @test below_threshold([-4, -3, -2, 4],0) == false
    @test below_threshold([-3, -2, 4],8) == true
    @test below_threshold(Bool[0, 1, 0],4) == true
    @test below_threshold([1, 2, -5, -4, 4],11) == true
    @test below_threshold([-4, -3, -2, 4, -2],1) == false
    @test below_threshold([3, 1, 1, 4, 7, 10, 7],6) == false
    @test below_threshold(Bool[1, 1, 1],4) == true
    @test below_threshold([5.5, 6.2, 7.9, 8.1],9) == true
    @test below_threshold([10, 20, -30, 40, -50],15) == false
    @test below_threshold([100, -200, 300, -400, 500, -600],100) == false
    @test below_threshold(Union{Float64, Int64}[1000, 500, 250, 125, 62.5, 31.25],2000) == true
    @test below_threshold([10000000, 9000000, 8000000, 7000000, 6000000, 2000000],10000001) == true
    @test below_threshold(Union{Float64, Int64}[100, 200, 300, 0.1, 0.2, 0.3],0) == false
    @test below_threshold(Union{}[],0) == true
    @test below_threshold([10000000, 9000000, 10, 8000000, 7000000, 6000000, 2000000],10000001) == true
    @test below_threshold([2000000, 10000000, 9000000, 10, 8000000, 7000000, 6000000, 2000000],10000001) == true
    @test below_threshold(Union{}[],-1) == true
    @test below_threshold([10000000, 9000000, 8000001, 8000000, 7000000, 6000000, 2000000],10000001) == true
    @test below_threshold(Union{}[],1) == true
    @test below_threshold([10, 20, -30, 40, -50],20) == false
    @test below_threshold(Union{Float64, Int64}[1000, 500, 250, 125, 62.5, 31.25],125) == false
    @test below_threshold([100, -200, 300, -400, 500, -600],1) == false
    @test below_threshold([5.5, 6.2, 7.9, 8.1],500) == true
    @test below_threshold([100, 2000000, 300, -400, 500, -600],100) == false
    @test below_threshold([10000000, 9000000, 8000000, 7000000, 6000000, -200, 10000000],10000001) == true
    @test below_threshold([10, 20, -30, 40, -50],14) == false
    @test below_threshold([100, -200, -400, 500, -600],8000001) == true
    @test below_threshold([5.5, 6.2, 7.9, 8.1],501) == true
    @test below_threshold([2000000, 10000000, 9000000, 10, 8000000, 7000000, 6000000, 2000000, 7000000],10000001) == true
    @test below_threshold([5.5, 6.2, 7.9, 8.1],10) == true
    @test below_threshold([2000000, 10000000, 9000000, 10, 8000000, 6000000, 2000000, 8000000],10000001) == true
    @test below_threshold(Union{}[],7000000) == true
    @test below_threshold([5.5, 6.2, 7.9, 8.1, 6.2],10) == true
    @test below_threshold([10000000, 9000000, 10000001, 10, 8000000, 6000000, 2000000],10000001) == false
    @test below_threshold([5.5, 6.2, 7.9, 8.1, 6.2, 6.2],10) == true
    @test below_threshold([62.5, 16.953176162073675, 2.9851560365316985],1) == false
    @test below_threshold([2000000, 8000001, 10000000, 9000000, 10, 8000000, 7000000, 6000000, 2000000],10000001) == true
    @test below_threshold([100, 2000000, 300, -400, 500, -600],-1) == false
    @test below_threshold([10000000, 9000000, 8000000, 7000000, 6000000, -200, 10000000],10000002) == true
    @test below_threshold([0.1, 5.5, 6.2, 7.9, 8.1],500) == true
    @test below_threshold([5.5, 6.2, 7.9, 8.1],100) == true
    @test below_threshold([10000000, 9000000, 10, 8000000, 7000000, 6000000, 2000000],10000002) == true
    @test below_threshold([10000000, 9000000, 8000001, 8000000, 7000000, 6000000, 2000000, 7000000],125) == false
    @test below_threshold([2000000, 10000000, 9000000, 10, 8000000, 6000000, 2000000, 8000000],10000002) == true
    @test below_threshold([100, -200, -400, 500, -600],8000002) == true
    @test below_threshold([5.5, 6.2, 7.9, 8.565673083320917],10) == true
    @test below_threshold([10, 20, -30, 40, -50],499) == true
    @test below_threshold([10, 20, 21, -30, 40, -50],15) == false
    @test below_threshold([100, 2000000, 300, 500, -600],8000000) == true
    @test below_threshold([2000000, 10000000, 9000000, 10, 200, 7000000, 6000000, 2000000],10000000) == false
    @test below_threshold(Union{Float64, Int64}[1000, 500, 250, 125, 62.5, 31.25],1999) == true
    @test below_threshold([5.5, 6.2, 8.565673083320917],10) == true
    @test below_threshold([10000000, 9000000, 10000001, 10, 8000000, 6000000, 2000000],10) == false
    @test below_threshold([100, 250, 2000000, 300, -400, 500, -600],100) == false
    @test below_threshold([5.5, 6.2, 7.9, 8.1, 5.6573184258702085, 6.2],10) == true
    @test below_threshold([5.5, 6.2, 7.9, 6.287047990560678, 8.1],10000000) == true
    @test below_threshold([62.5, 16.953176162073675, 2.9851560365316985, 16.953176162073675],1) == false
    @test below_threshold([2000000, 10000000, 9000000, 10, 8000000, 6000000, 2000000, 8000000],10000003) == true
    @test below_threshold([2000000, 10000000, 9000000, 8000000, 6000000, 2000000, 8000000],10000001) == true
    @test below_threshold([10, 20, 1, 40, -50],15) == false
    @test below_threshold([2000000, 8000001, 10000000, 9000000, 10, 8000000, 7000000, 2000000, 6000000, 2000000],10000001) == true
    @test below_threshold([2000000, 8000001, 10000000, 9000000, 10, 8000000, 7000000, 2000000, 6000000, 2000000, 2000000],10000001) == true
    @test below_threshold(Union{}[],1000) == true
    @test below_threshold([2000000, 8000001, 1000, 10000000, 9000000, 10, 8000000, 2000000, 6000000, 2000000, 2000000],499) == false
    @test below_threshold([10, 20, -30, 40, 499],14) == false
    @test below_threshold([5.5, 7.9, 8.1],9) == true
    @test below_threshold(Union{}[],-2) == true
    @test below_threshold([10, 20, -30, 40, -50],19) == false
    @test below_threshold([100, 250, 2000000, 300, -400, 500, -600],1999) == false
    @test below_threshold(Union{Float64, Int64}[1000, 500, 126, 250, 125, 62.5, 31.25, 31.25, 500],2000) == true
    @test below_threshold([7.468707181862638, 5.5, 6.2, 7.9, 8.565673083320917],10) == true
    @test below_threshold([2000000, 10000000, 9000000, 8000000, 6000000, 2000000, 8000000],-50) == false
    @test below_threshold([10000000, 9000000, 10000001, 10, 8000000, 6000000, 2000000, 10000001],10) == false
    @test below_threshold([10, 20, -30, 40, -50],13) == false
    @test below_threshold([100, -200, 300, -400, 500],1) == false
    @test below_threshold([5.5, 6.2, 8.565673083320917, 6.2],10) == true
    @test below_threshold(Union{}[],1001) == true
    @test below_threshold([10000000, 9000000, 8000000, 7000000, 6000000, 2000000],8000002) == false
    @test below_threshold([10, 20, 21, -30, 40, -50],14) == false
    @test below_threshold(Union{Float64, Int64}[100, 200, 300, 0.1, 0.2],0) == false
    @test below_threshold([10000000, 9000000, 10000001, 10, 8000000, 6000000, 2000000, 10000001],0) == false
    @test below_threshold(Union{Float64, Int64}[100, 200, 300, 0.1, 0.2],9000000) == true
    @test below_threshold([-200, 10, 20, -30, 40, -50],8000000) == true
    @test below_threshold([10000000, 9000000, 10, 8000000, 7000000, 6000000, 2000000],100) == false
    @test below_threshold([5.5, 6.2, 7.9],11) == true
    @test below_threshold([16.953176162073675, 2.9851560365316985],1) == false
    @test below_threshold([100, -200, 300, -400, 500, 300],1) == false
    @test below_threshold([-200, 300, -400, 500, -600],100) == false
    @test below_threshold([10, 20, -30, 40, -50, 20],499) == true
    @test below_threshold([10, 20, -30, 40, 20, -50],19) == false
    @test below_threshold([5.5, 2.8, 6.2, 8.1],9) == true
    @test below_threshold([0.1, 5.5, 7.9, 8.1],500) == true
    @test below_threshold([100, -200, 300, -400, 500, 499, -600],1) == false
    @test below_threshold([10, 20, 1, 40, 9, -50, -50],499) == true
    @test below_threshold([100, -200, 300, 0, 500, 300],9) == false
    @test below_threshold([2000000, 9000000, 8000000, 6000000, 2000000, 8000000],-51) == false
    @test below_threshold([-200, 300, -400, -600, 300],100) == false
    @test below_threshold([5.5, 6.2, 7.9, 8.1, 6.2, 6.2],8000001) == true
    @test below_threshold([10000000, 9000000, 10000001, 10, 8000000, 6000000, 2000000, 10000001],8000001) == false
    @test below_threshold([5.5, 2.8, 6.2, 8.1],7000001) == true
    @test below_threshold([-200, 300, 8000000, -400, -600, 300],100) == false
    @test below_threshold([5.5, 6.2, 7.9],13) == true
    @test below_threshold(Union{Float64, Int64}[1000, 500, 250, 125, 6.635714530100879, 62.5, 31.25],2000000) == true
    @test below_threshold([100, 250, 2000000, 300, -400, 500, -600],1998) == false
    @test below_threshold([10000000, 9000000, 1998, 8000000, 7000000, 6000000, 2000000],100) == false
    @test below_threshold([100, 2000000, 300, -400, 500, -600],-2) == false
    @test below_threshold([5.5, 6.2, 7.9, 8.1, 5.6573184258702085, 6.2, 7.9],10) == true
    @test below_threshold([1.5, 1000.0, 500.0, 250.0, 125.0, 6.635714530100879, 62.5, 31.25],2000000) == true
    @test below_threshold([2000000, 10000000, 9000000, 10, 8000000, 7000000, 6000000, 1001, 2000000, 7000000],10000000) == false
    @test below_threshold([10000000, 8000002, 9000000, 8000001, 8000000, 7000000, 6000000, 2000000, 7000000],125) == false
    @test below_threshold([10, 20, 1, 40, 9, -50, -50],500) == true
    @test below_threshold([2000000, 10000000, 9000000, 10, 8000000, 6000000, 2000, 8000000],-199) == false
    @test below_threshold([-200, 300, 8000000, -400, -600, 300],1001) == false
    @test below_threshold([2000000, 10000000, 9000000, 8000000, 6000000, 2000000, 8000000, 8000000],10000001) == true
    @test below_threshold([2000000, 10000000, 9000000, 8000000, 6000000, 2000000, 8000000],200) == false
    @test below_threshold([100, -200, 300, -400, 500, 499, -600],10000001) == true
    @test below_threshold([10, 20, 21, 300, -30, 40, -50, 10],10) == false
    @test below_threshold([100, -200, -400, 500, -600],10) == false
    @test below_threshold([9.263975784000001, 5.5, 6.2, 8.565673083320917, 6.2],10) == true
    @test below_threshold([5.5, 2.8, 6.2, 8.1],10000001) == true
    @test below_threshold([2000000, 10000000, 9000000, 8000000, 6000000, 2000000, 8000000],9999999) == false
    @test below_threshold([2000000, 10000000, 9000000, 10, 8000000, 6000000, 2000000, 8000000, 2000000],10000001) == true
    @test below_threshold(Union{Float64, Int64}[100, 200, 300, 0.1, 0.2, 0.3, 0.2],-1) == false
    @test below_threshold([5.5, 6.2, 3.18463343128131, 7.9, 8.1, 5.6573184258702085, 6.2],10) == true
    @test below_threshold([100, -400, 499, -600],8000001) == true
    @test below_threshold([8000001, 10000000, 9000000, 10, 8000000, 7000000, 6000000, 2000000],10000001) == true
    @test below_threshold([2000000, 10000000, 9000000, 10, 8000000, 6000000, 2000, 8000000],7000001) == false
    @test below_threshold([10, -400, 20, -30, 40, 499],40) == false
    @test below_threshold([8000001, 9999998, 10000000, 9000000, 10, 9999999, 8000000, 7000000, 6000000, 2000000],10000001) == true
    @test below_threshold([5.5, 2.1549458848411773, 6.2, 7.9],10) == true
    @test below_threshold([5.5, 2.1549458848411773, 6.2, 7.9],9) == true
    @test below_threshold([10000000, 9000000, 8000000, 6000000, -200, 10000000],10000001) == true
    @test below_threshold([10, 20, -30, 40, -50],12) == false
    @test below_threshold([10000000, 9000000, 8000001, 8000000, 7000000, 6000000, 2000000],-200) == false
    @test below_threshold([10000000, 9000000, 1998, 8000000, 7000000, 6000000, 2000000, 6000000],100) == false
    @test below_threshold(Union{Float64, Int64}[100, 300, 0.1, 0.2],9000000) == true
    @test below_threshold([5.5, 6.2, 7.9, 5.5],11) == true
    @test below_threshold(Union{Float64, Int64}[1000, 500, 250, 125, 6.635714530100879, 62.5, 31.25],2000001) == true
    @test below_threshold([9, 20, 2000, 40, -50],499) == false
    @test below_threshold([10, 20, 21, -30, 40, -50],7000001) == true
    @test below_threshold([-200, 10, 20, -30, 40, 8000000, -50],8000000) == false
    @test below_threshold([2000000, 8000001, 10000000, 9000000, 10, 8000000, 7000000, 2000000, 6000000, 2000000, 2000000],10000002) == true
    @test below_threshold([100, -200, 0, 500, 300],9) == false
    @test below_threshold([100, -200, 300, -400, 500, -600, 500],19) == false
    @test below_threshold([100, 2000000, 10000002, 500, 8000002],8000000) == false
    @test below_threshold([2000000, 10000000, 9000000, 10, 8000000, 7000000, 6000000, 2000000, 7000000],10000000) == false
    @test below_threshold([5.5, 2.8, 8.1],7000001) == true
    @test below_threshold(Union{}[],999) == true
    @test below_threshold([-200, 300, 8000000, -400, -600, 300, 300],125) == false
    @test below_threshold([5.5, 6.2, 8.462009039856612, 8.565673083320917],10) == true
    @test below_threshold([2000000, 8000001, 1000, 10000000, 8000001, 10, 8000000, 2000000, 6000000, 2000000, 2000000],9999998) == false
    @test below_threshold([5.5, 6.2, 7.9, 8.1, 8.855464118192813, 5.6573184258702085, 6.2],10) == true
    @test below_threshold([2000000, 10000000, 9000000, 8000000, 6000000, 2000000, 8000000],10000000) == false
    @test below_threshold([8000001, 9999998, 10000000, 9000000, 10, 9999999, 8000000, 7000000, 6000000, 2000000, 9999998],20) == false
    @test below_threshold([10000000, 9000000, 8000001, 8000000, 7000000, 6000001, 2000000, 7000000],125) == false
    @test below_threshold([10, 20, 1000, -30, 40, -50],15) == false
    @test below_threshold([10, 20, -30, 0, 40, -50],13) == false
    @test below_threshold([2000000, 10000000, 9000000, 8000000, 6000001, 2000000, 8000000],-50) == false
    @test below_threshold([2000000, 10000000, 10, 200, 7000000, 6000000, 2000000],10000000) == false
    @test below_threshold([100, -200, 300, 9999998, -400, 500, 499, -600],10000002) == true
    @test below_threshold([2000000, 10000000, 9000000, -30, 10, 8000000, 6000000, 2000000, 8000000],-2) == false
    @test below_threshold([100, -200, -400, 500],6000000) == true
    @test below_threshold([2000000, 8000001, 10000000, 9000000, 10, 8000000, 7000000, 2000000, 6000000, 10, 2000000, 2000000],10000001) == true
    @test below_threshold([100, -200, -400, 500, -600],40) == false
    @test below_threshold([5.5, 6.2, 7.9, 6.287047990560678, 7.938381848412779, 8.1, 7.9],10000000) == true
    @test below_threshold([10, 6000001, -30, 40, -50],13) == false
    @test below_threshold([5.5, 6.2, 7.9, 8.1],9999999) == true
    @test below_threshold([10, 20, -30, 40, -50, 20],126) == true
    @test below_threshold([10000000, 9000000, 8000001, 8000000, 7000000, 6000000, 2000001],10000001) == true
    @test below_threshold([5.5, 6.2, 7.9, 8.1, 8.855464118192813, 5.6573184258702085, 11.869088428731756, 6.2],10000001) == true
    @test below_threshold([100, 9999999, -400, 19],8000001) == false
    @test below_threshold([8000001, 1000, 9999998, 10000000, 9000000, 10, 9999999, 8000000, 7000000, 6000000, 2000000, 9999998],20) == false
    @test below_threshold(Union{}[],2000) == true
    @test below_threshold([2000000, 10000000, 9000000, 8000000, 6000000, 2000000, 7999999],125) == false
    @test below_threshold([-200, 10, 20, -30, 40, -50],9000000) == true
    @test below_threshold([-200, 10, -200, 11, -30, 40, -50],8000000) == true
    @test below_threshold([5.5, 2.1549458848411773, 6.2, 7.9],9999999) == true
    @test below_threshold([10, 20, -30, 40, 500, 20],126) == false
    @test below_threshold([10000000, 9000000, 8000000, 7000000, 6000000, 2000000, 6000000],99) == false
    @test below_threshold([2.194922883433771, 6.2, 7.9, 8.1],9999999) == true
    @test below_threshold(Bool[1, 0, 1, 0, 0, 0, 1, 0, 1, 0],-1) == false
    @test below_threshold(Union{Float64, Int64}[1000, 500, 250, 125, 6.635714530100879, 62.5, 31.25, 31.25],499) == false
    @test below_threshold([2000000, 501, 10000000, 9000000, 8000000, 6000000, 2000000, 8000000, 8000000],10000001) == true
    @test below_threshold([10, 20, 14, 40, -50],12) == false
    @test below_threshold([10, 20, -30, 40, -50, -50],12) == false
    @test below_threshold([10000000, 9000000, 10000001, 10, 8000000, 6000000, 2000000, 10000001],8000002) == false
    @test below_threshold([5.5, 6.2, 7.9, 8.1, 6.2, 6.2],1) == false
    @test below_threshold([2000000, 10000000, 9000000, 8000000, 6000000, 2000000, 7999999],200) == false
    @test below_threshold([100, -200, 300, -400, 500],12) == false
    @test below_threshold([0.1],1001) == true
    @test below_threshold([100, -200, 300, -400, 500, 499, -600],9000000) == true
    @test below_threshold(Union{Float64, Int64}[1000, 500, 250, 125, 6.635714530100879, 62.5, 31.25, 31.25, 100],499) == false
    @test below_threshold([2000000, 10000001, 9000000, 8000000, 6000000, 2000000, 8000000],10000001) == false
    @test below_threshold([2000000, 10000002, 8000002],2000) == false
    @test below_threshold([5.5, 6.2, 7.934953681964755, 8.1, 5.6573184258702085, 6.2],10) == true
    @test below_threshold([10, 20, -30, 40, -50, -50],-61) == false
    @test below_threshold([2000000, 10000000, 9000000, 8000000, 6000000, 8000000],9999999) == false
    @test below_threshold([100, 2000000, 300, -400, 500],-1) == false
    @test below_threshold([10, 20, -30, 40, 499, -30],14) == false
    @test below_threshold([5.5, 2.8, 6.2, 8.1],2000001) == true
    @test below_threshold([100, 2000, -200, 0, 500, 300],13) == false
    @test below_threshold([2000000, 9000000, 8000000, 6000000, 2000001, 8000000],-51) == false
    @test below_threshold([100, 9999999, -400],8000001) == false
    @test below_threshold([8000001, 9999998, 9000000, 10, 9999999, 8000000, 7000000, 6000000, 2000000],10000001) == true
    @test below_threshold([100, -200, 300, -400, 500, -600, 300],1) == false
    @test below_threshold([2000000, 9000000, 8000000, 6000000, 2000001, 8000000],-52) == false
    @test below_threshold([2000000, 10000000, 200, 7000000, -30, 6000000, 2000000],10000000) == false
    @test below_threshold([5.5, 6.2, 7.9, 8.565673083320917],13) == true
    @test below_threshold([6.2, 7.9, 8.1, 6.2, 6.2],8000001) == true
    @test below_threshold([10000000, 9000000, 10000001, 10, 8000000, 6000000, 2000000, 10000001, 10000000],10) == false
    @test below_threshold([2000000, 10000000, 9000000, 8000000, 6000000, 2000000, 7999999, 2000000],200) == false
    @test below_threshold([10000000, 9000000, 10000001, 9, 8000000, 6000000, 10000001],-400) == false
    @test below_threshold([10, 20, 21, 300, -30, 40, 11, 10],10) == false
    @test below_threshold([10, 20, -30, -50, 40],13) == false
    @test below_threshold([5.5, 2.1549458848411773, 6.2, 7.9],-30) == false
    @test below_threshold([-200, 300, 8000000, -400, -600, 300, -200],100) == false
    @test below_threshold([10000000, 9000000, 10000001, 2000001, 10, 8000000, 6000000, 2000000],10) == false
    @test below_threshold([5.5, 6.2, 7.9],-1) == false
    @test below_threshold([9, 20, 40, -50],499) == true
    @test below_threshold([-200, 300, 8000000, -600, 300],100) == false
    @test below_threshold([100, 9999999, -400, 19],8000000) == false
    @test below_threshold([2.194922883433771, 6.2, 7.9, 8.1],9999998) == true
    @test below_threshold([5.5, 2.194922883433771, 6.2, 8.1],125) == true
    @test below_threshold([100, 1999999, 2000000, 300, 500, -600],8000000) == true
    @test below_threshold([10, 20, -30, 40, -50],16) == false
    @test below_threshold([5],5) == false
    @test below_threshold([10],5) == false
    @test below_threshold([4],5) == true
    @test below_threshold([5, 5, 5],5) == false
    @test below_threshold([1, 2, 3, 4],5) == true
    @test below_threshold([10, 20, 30],5) == false
    @test below_threshold([-5, 10, -3, 1],0) == false
    @test below_threshold([0, 0, 0, 0],5) == true
    @test below_threshold([-5, -4, -3],-6) == false
    @test below_threshold([10000000, 9000000, 8000000, 7000000, 6000000, 2000000],2000) == false
    @test below_threshold([10, 20, -30, 40, -50],6000000) == true
    @test below_threshold(Union{Float64, Int64}[100, 200, 300, 0.1, 0.2, 0.3],6000000) == true
    @test below_threshold([10, 20, -30, 40, -50, 20],6000000) == true
    @test below_threshold([10000000, 9000000, 8000000, 2000, 6000000, 2000000],2000) == false
    @test below_threshold([5.5, 6.2, 7.9, 8.1],300) == true
    @test below_threshold([6.2, 7.9, 8.1],300) == true
    @test below_threshold(Union{Float64, Int64}[100, 200, 300, 0.1, 0.2, 0.3],40) == false
    @test below_threshold([5.5, 6.2, 7.9],-200) == false
    @test below_threshold([5.5, 6.2, 7.9],8000000) == true
    @test below_threshold([5.5, 6.2, 7.9],300) == true
    @test below_threshold(Union{Float64, Int64}[100, 200, 300, 0.1, 0.2, 0.3, 0.2],0) == false
    @test below_threshold([5.5, 6.2, 7.9, 7.9],300) == true
    @test below_threshold([6.2, 7.9, 7.9],300) == true
    @test below_threshold([10000000, 9000000, 8000000, 2000, 6000000, 2000000],10000001) == true
    @test below_threshold(Union{Float64, Int64}[100, 200, 300, 0.1, 0.2, 0.3, 0.2, 100],0) == false
    @test below_threshold([100, -200, 300, -400, 500, -600],2000) == true
    @test below_threshold([6.2, 7.9],-201) == false
    @test below_threshold(Union{Float64, Int64}[1000, 500, 250, 125, 62.5, 30.807804019985152],2000) == true
    @test below_threshold(Union{Float64, Int64}[1000, 0.7, 500, 250, 125, 62.5, 31.25],2000) == true
    @test below_threshold([6.4133956835438735, 7.9],-200) == false
    @test below_threshold([10, 20, 15, 40, -50, 20],6000000) == true
    @test below_threshold([7.9, 7.9, 7.9],1000) == true
    @test below_threshold([10, 20, -30, 40, -50, 20],9) == false
    @test below_threshold(Union{Float64, Int64}[100, 200, 300, 0.06967522411157957, 0.2, 0.3, 0.2, 100],0) == false
    @test below_threshold(Union{Float64, Int64}[1000, 500, 250, 125, 62.5, 30.807804019985152],8000000) == true
    @test below_threshold([10, 20, -30, -51, 40, -50, 20],6000000) == true
    @test below_threshold([5.766499924540022, 7.9, 7.9],300) == true
    @test below_threshold([5.5, 6.2, 7.9, 6.2],300) == true
    @test below_threshold([10, 20, -51, 40, -50, 20],6000000) == true
    @test below_threshold([5.5, 6.2, 7.9, 6.2],301) == true
    @test below_threshold(Union{Float64, Int64}[100, 200, 300, 0.1, 0.2, 0.3, 0.2],40) == false
    @test below_threshold([10000000, 9000000, 8000000, 2000, 6000000, 500, 2000000],2000) == false
    @test below_threshold([10, 20, -51, 40, -50, 200, 20],6000000) == true
    @test below_threshold([5.5, 6.2212876393256, 6.2, 7.9, 6.2],302) == true
    @test below_threshold(Union{Float64, Int64}[1000, 500, 250, 125, 62.5, 30.807804019985152, 500],2001) == true
    @test below_threshold(Union{Float64, Int64}[1000, 500, 250, 62.5, 30.807804019985152],2000) == true
    @test below_threshold([5.5, 5.50048632089892, 7.9, 7.9],300) == true
    @test below_threshold(Union{Float64, Int64}[1000, 500, 250, 62.5, 30.807804019985152, 62.5],2000) == true
    @test below_threshold([5.5, 6.2, 8.8519061638015],300) == true
    @test below_threshold([5.5, 5.50048632089892, 7.9],300) == true
    @test below_threshold([5.5, 7.9],-200) == false
    @test below_threshold([10000000, 9000000, 8000000, 2000, 6000000, 100, 8000000],2000) == false
    @test below_threshold([5.5, 7.9],-199) == false
    @test below_threshold(Union{Float64, Int64}[100, 200, 300, 0.1, 0.2, 0.3, 0.2, 100],9) == false
    @test below_threshold(Union{Float64, Int64}[1000, 500, 250, 62.5, 30.807804019985152],-200) == false
    @test below_threshold(Union{Float64, Int64}[500, 250, 62.5, 30.807804019985152],2000) == true
    @test below_threshold([6.576799211228067, 5.5, 5.50048632089892, 6.2212876393256, 7.9, 7.9],300) == true
    @test below_threshold(Union{Float64, Int64}[100, 200, 300, 0.1, 0.2, 0.3],302) == true
    @test below_threshold([6.2, 7.9],250) == true
    @test below_threshold([6.576799211228067, 5.5, 5.50048632089892, 6.2212876393256, 7.9],300) == true
    @test below_threshold([10, 20, -30, 39, 40, -50],6000000) == true
    @test below_threshold([5.5, 7.9],2001) == true
    @test below_threshold([5.871122108907659, 6.2, 7.9, 6.2],301) == true
    @test below_threshold([5.5, 6.2212876393256, 6.2, 7.9, 6.2],-200) == false
    @test below_threshold([10, 20, -30, 39, 40, -50],302) == true
    @test below_threshold(Union{Float64, Int64}[1000, 500, 250, 6000000, 62.5, 31.25],2000) == false
    @test below_threshold([10000000, 9000000, 8000000, 2000, 6000000, 2000000],10000000) == false
    @test below_threshold([5.5, 5.50048632089892, 0.5, 7.9, 7.9],300) == true
    @test below_threshold([6.2, 7.9],299) == true
    @test below_threshold(Union{Float64, Int64}[1000, 500, 250, 125, 30.807804019985152, 500],2001) == true
    @test below_threshold([10, 20, -30, -51, 40, -50, 20],-399) == false
    @test below_threshold([10000000, 9000000, 8000000, 2000, 6000000, 500, 2000000],15) == false
    @test below_threshold([5.5, 6.6284378542197375, 5.50048632089892, 7.9, 7.9],300) == true
    @test below_threshold([6.990844960737688, 5.5, 6.2, 7.9, 8.1],300) == true
    @test below_threshold([6.2],-201) == false
    @test below_threshold(Union{Float64, Int64}[100, 200, 0.1, 0.2, 0.3, 0.2],0) == false
    @test below_threshold([5.5, 6.38359489632532, 8.8519061638015],300) == true
    @test below_threshold([6.2, 7.9, 7.9],299) == true
    @test below_threshold([1.430414675639685, 6.2, 7.9, 0.32055210364227493],300) == true
    @test below_threshold(Union{Float64, Int64}[100, 200, 300, 0.2, 0.3],1) == false
    @test below_threshold([7.9, 7.9, 7.9, 7.9],1000) == true
    @test below_threshold([5.5, 6.878384299672373, 7.9],15) == true
    @test below_threshold([30, 97, 90, -200, 59],0) == false
    @test below_threshold([30, 97, 90, 59],0) == false
    @test below_threshold([5.5, 6.6284378542197375, 5.50048632089892, 7.9, 7.9],299) == true
    @test below_threshold(Union{Float64, Int64}[1000, 500, 250, 125, 62.5, 30.807804019985152],7999999) == true
    @test below_threshold([6.2, 7.9, 6.2],-201) == false
    @test below_threshold(Union{Float64, Int64}[1000, 500, 250, 62.5, 62.534685136963134, 30.807804019985152, 62.5],2000) == true
    @test below_threshold([10000000, 9000000, 8000000, 2000, 6000000, 100, 8000000],-50) == false
    @test below_threshold([6.110733640513043, 5.5, 6.2],8000000) == true
    @test below_threshold([10, 20, -51, 40, -50, 20, 40],6000000) == true
    @test below_threshold([10, 20, -51, 40, -50, 20, -51],6000001) == true
    @test below_threshold(Union{Float64, Int64}[100, 200, 300, 0.1, 0.2, 0.3, 0.2, 100],8) == false
    @test below_threshold([2.5, 7.9, 7.9, 7.9],1000) == true
    @test below_threshold(Union{Float64, Int64}[1000, 500, 250, 62.5, 30.807804019985152, 62.5],200) == false
    @test below_threshold([-400, 100, -200, 300, -400, 500, -600, -600],302) == false
    @test below_threshold(Union{Float64, Int64}[100, 200, 300, 0.06967522411157957, 0.2, 0.3, 0.2, 100, 0.2],0) == false
    @test below_threshold([10000000, 9000000, 8000000, 2000, 6000000, 100, 8000000],10000001) == true
    @test below_threshold([5.871122108907659, 6.2, 7.9],301) == true
    @test below_threshold([7.9, 7.9, 7.9, 7.9, 7.9],1000) == true
    @test below_threshold([6.576799211228067, 5.5, 1.5311576847949309, 5.50048632089892, 6.2212876393256, 7.9, 7.9],-199) == false
    @test below_threshold([3.284373826304595, 1000.0, 500.0, 250.0, 62.5, 30.807804019985152, 500.0],2000) == true
    @test below_threshold([7.9, 7.9, 7.9, 7.9, -0.28791951724548404, -0.28791951724548404],1000) == true
    @test below_threshold([0.2, 62.5, -63.579573934400166, 0.5, 98.82739614126038, -0.28791951724548404, -50.78504214587984, 58.062454697705476, 55.110190228263775, 10.520189946545017],0) == false
    @test below_threshold([10, 20, -30, 40, -50],59) == true
    @test below_threshold(Union{Float64, Int64}[1000, 500, 250, 62.5, 30.807804019985152, -50.78504214587984, 62.5],2000) == true
    @test below_threshold([10000001, -200, 300, -400, 500, -600],1999) == false
    @test below_threshold([5.5, 6.2],300) == true
    @test below_threshold([10000000, 9000000, 7999999, 2000, 6000000, 2000000],10000001) == true
end
