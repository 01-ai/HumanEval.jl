@testitem "127_intersection_HumanEvalPlus_v0_1_9_test.jl" tags=[:HumanEvalPlus_v0_1_9] begin
    include(joinpath(ENV["GENERATION_DIR"], "127_intersection.jl"))
    @test intersection([0, 0],[0, 1]) == "NO"
    @test intersection([10, 20],[15, 25]) == "YES"
    @test intersection([-15, 15],[-10, 10]) == "NO"
    @test intersection([0, 5],[6, 10]) == "NO"
    @test intersection([5, 10],[1, 7]) == "YES"
    @test intersection([11, 11],[11, 11]) == "NO"
    @test intersection([1, 5],[3, 7]) == "YES"
    @test intersection([-6, -2],[-1, 1]) == "NO"
    @test intersection([7, 13],[10, 23]) == "YES"
    @test intersection([-10, 0],[-2, 2]) == "YES"
    @test intersection([-6, -2],[-6, -2]) == "NO"
    @test intersection([6, 6],[6, 6]) == "NO"
    @test intersection([0, 1],[0, 0]) == "NO"
    @test intersection([3, 7],[3, 7]) == "NO"
    @test intersection([7, 12],[10, 23]) == "YES"
    @test intersection([-6, -2],[-1, 0]) == "NO"
    @test intersection([1, 5],[1, 5]) == "NO"
    @test intersection([5, 6],[5, 6]) == "NO"
    @test intersection([5, 5],[5, 5]) == "NO"
    @test intersection([0, 0],[0, 0]) == "NO"
    @test intersection([3, 13],[3, 13]) == "NO"
    @test intersection([-2, -2],[-2, -2]) == "NO"
    @test intersection([2, 3],[2, 3]) == "NO"
    @test intersection([10, 23],[10, 23]) == "YES"
    @test intersection([-15, 20],[-15, 20]) == "NO"
    @test intersection([10, 20],[10, 20]) == "NO"
    @test intersection([5, 11],[1, 7]) == "YES"
    @test intersection([7, 12],[7, 12]) == "YES"
    @test intersection([5, 10],[-1, 7]) == "YES"
    @test intersection([2, 5],[3, 7]) == "YES"
    @test intersection([0, 3],[0, 0]) == "NO"
    @test intersection([5, 10],[5, 10]) == "YES"
    @test intersection([-10, 0],[-10, 0]) == "NO"
    @test intersection([2, 2],[2, 2]) == "NO"
    @test intersection([-15, 12],[-10, 10]) == "NO"
    @test intersection([-2, 7],[-2, 7]) == "NO"
    @test intersection([-15, 15],[-15, 15]) == "NO"
    @test intersection([-10, 10],[-10, 10]) == "NO"
    @test intersection([11, 15],[11, 15]) == "NO"
    @test intersection([-15, 6],[-15, 6]) == "NO"
    @test intersection([-15, 1],[-15, 1]) == "NO"
    @test intersection([12, 12],[12, 12]) == "NO"
    @test intersection([-10, 1],[-2, 2]) == "YES"
    @test intersection([12, 13],[12, 13]) == "NO"
    @test intersection([1, 1],[1, 1]) == "NO"
    @test intersection([2, 5],[2, 5]) == "YES"
    @test intersection([-10, 1],[-10, 1]) == "YES"
    @test intersection([7, 13],[9, 10]) == "NO"
    @test intersection([10, 15],[10, 15]) == "YES"
    @test intersection([6, 10],[6, 10]) == "NO"
    @test intersection([1, 6],[3, 7]) == "YES"
    @test intersection([-10, -1],[-10, -1]) == "NO"
    @test intersection([2, 13],[2, 13]) == "YES"
    @test intersection([5, 9],[5, 9]) == "NO"
    @test intersection([10, 21],[10, 21]) == "YES"
    @test intersection([15, 25],[15, 25]) == "NO"
    @test intersection([10, 10],[10, 10]) == "NO"
    @test intersection([-15, 12],[-15, 12]) == "NO"
    @test intersection([7, 13],[3, 10]) == "YES"
    @test intersection([1, 5],[-1, 7]) == "NO"
    @test intersection([-1, 1],[-1, 1]) == "YES"
    @test intersection([-7, -2],[-7, -2]) == "YES"
    @test intersection([4, 10],[4, 10]) == "NO"
    @test intersection([-1, 0],[-1, 0]) == "NO"
    @test intersection([9, 23],[9, 23]) == "NO"
    @test intersection([0, 5],[9, 10]) == "NO"
    @test intersection([2, 7],[2, 7]) == "YES"
    @test intersection([6, 7],[6, 7]) == "NO"
    @test intersection([-1, -1],[-1, -1]) == "NO"
    @test intersection([23, 23],[23, 23]) == "NO"
    @test intersection([9, 9],[9, 9]) == "NO"
    @test intersection([1, 7],[1, 7]) == "NO"
    @test intersection([10, 11],[10, 11]) == "NO"
    @test intersection([7, 13],[7, 13]) == "NO"
    @test intersection([0, 5],[0, 5]) == "YES"
    @test intersection([0, 2],[0, 2]) == "YES"
    @test intersection([8, 8],[8, 8]) == "NO"
    @test intersection([-15, 10],[-15, 10]) == "NO"
    @test intersection([-7, 5],[-7, 5]) == "NO"
    @test intersection([5, 10],[-1, 6]) == "NO"
    @test intersection([2, 12],[2, 12]) == "NO"
    @test intersection([-15, -10],[-15, -10]) == "YES"
    @test intersection([-7, 4],[-7, 4]) == "YES"
    @test intersection([-7, 10],[-7, 10]) == "YES"
    @test intersection([19, 23],[19, 23]) == "NO"
    @test intersection([0, 1],[0, 1]) == "NO"
    @test intersection([-10, 10],[-15, 15]) == "NO"
    @test intersection([2, 4],[2, 4]) == "YES"
    @test intersection([-12, 2],[-12, 2]) == "NO"
    @test intersection([9, 10],[9, 10]) == "NO"
    @test intersection([15, 15],[-10, -10]) == "NO"
    @test intersection([-15, 9],[-15, 9]) == "NO"
    @test intersection([4, 10],[-1, 7]) == "YES"
    @test intersection([-11, 10],[-15, 15]) == "NO"
    @test intersection([-11, 3],[-11, 3]) == "NO"
    @test intersection([1, 12],[1, 12]) == "YES"
    @test intersection([1, 2],[1, 2]) == "NO"
    @test intersection([5, 23],[5, 23]) == "NO"
    @test intersection([1, 6],[1, 6]) == "YES"
    @test intersection([0, 5],[3, 10]) == "YES"
    @test intersection([-10, 10],[-20, 20]) == "NO"
    @test intersection([-100, 50],[25, 150]) == "NO"
    @test intersection([-3, 5],[-9, -2]) == "NO"
    @test intersection([-7, -5],[0, 5]) == "NO"
    @test intersection([-1000, -999],[-1000, -999]) == "NO"
    @test intersection([1000000000, 1000000001],[1000000001, 1000000002]) == "NO"
    @test intersection([-999999999, 1000000000],[-1000000000, 1000000001]) == "NO"
    @test intersection([7, 11],[13, 19]) == "NO"
    @test intersection([100000007, 100000009],[100000009, 100000011]) == "NO"
    @test intersection([-1000000000, 1000000000],[1, 1000000001]) == "NO"
    @test intersection([-100, 50],[-100, 50]) == "NO"
    @test intersection([-3, 50],[-3, 50]) == "YES"
    @test intersection([50, 50],[50, 50]) == "NO"
    @test intersection([1000000000, 1000000002],[1000000001, 1000000002]) == "NO"
    @test intersection([-10, 1000000001],[-10, 1000000001]) == "NO"
    @test intersection([1000000001, 1000000002],[1000000000, 1000000002]) == "NO"
    @test intersection([1000000001, 1000000002],[1000000001, 1000000002]) == "NO"
    @test intersection([-20, 20],[-10, 10]) == "NO"
    @test intersection([1000000000, 1000000001],[1000000000, 1000000001]) == "NO"
    @test intersection([-4, -4],[0, 5]) == "NO"
    @test intersection([100000007, 100000009],[100000007, 100000009]) == "YES"
    @test intersection([1000000000, 1000000001],[1000000001, 1000000001]) == "NO"
    @test intersection([-20, 20],[-20, 20]) == "NO"
    @test intersection([-999, -5],[-999, -5]) == "NO"
    @test intersection([-20, 20],[-4, 10]) == "NO"
    @test intersection([-100, 49],[-100, 49]) == "YES"
    @test intersection([-4, 11],[-4, 11]) == "NO"
    @test intersection([1000000001, 1000000001],[1000000001, 1000000001]) == "NO"
    @test intersection([0, 1000000001],[0, 1000000001]) == "NO"
    @test intersection([-1000000000, 1000000000],[-1000000000, 1000000000]) == "NO"
    @test intersection([1000000000, 1000000002],[1000000000, 1000000002]) == "YES"
    @test intersection([-999, 5],[-999, 5]) == "NO"
    @test intersection([-999, -100],[-999, -100]) == "NO"
    @test intersection([-100, -100],[-100, -100]) == "NO"
    @test intersection([-999, -99],[-999, -99]) == "NO"
    @test intersection([100000009, 100000011],[100000007, 100000009]) == "NO"
    @test intersection([-4, 5],[-9, -2]) == "YES"
    @test intersection([-20, 20],[-4, 9]) == "YES"
    @test intersection([26, 150],[26, 150]) == "NO"
    @test intersection([19, 19],[19, 19]) == "NO"
    @test intersection([-999, 0],[-999, 0]) == "NO"
    @test intersection([7, 11],[7, 11]) == "NO"
    @test intersection([-9, -9],[-9, -9]) == "NO"
    @test intersection([9, 11],[13, 19]) == "NO"
    @test intersection([-4, -4],[-4, -4]) == "NO"
    @test intersection([-999, 1],[-999, 1]) == "NO"
    @test intersection([9, 11],[9, 11]) == "YES"
    @test intersection([-999, 9],[-999, 9]) == "NO"
    @test intersection([1000000000, 1000000003],[1000000001, 1000000002]) == "NO"
    @test intersection([-4, 1000000000],[-4, 1000000000]) == "NO"
    @test intersection([-1000000000, 999999999],[-1000000000, 999999999]) == "NO"
    @test intersection([-20, 20],[-4, 5]) == "NO"
    @test intersection([26, 27],[26, 27]) == "NO"
    @test intersection([-100, 11],[-100, 11]) == "NO"
    @test intersection([-3, -3],[-3, -3]) == "NO"
    @test intersection([-1000, -5],[-1000, -5]) == "NO"
    @test intersection([-999, 6],[-999, 6]) == "NO"
    @test intersection([-999999999, 1000000000],[-999999999, 1000000000]) == "NO"
    @test intersection([-4, 50],[-4, 50]) == "NO"
    @test intersection([999999999, 999999999],[999999999, 999999999]) == "NO"
    @test intersection([-9, 10],[-9, 10]) == "YES"
    @test intersection([-4, 150],[-4, 150]) == "NO"
    @test intersection([-4, 5],[-4, 5]) == "NO"
    @test intersection([-1001, -1000],[-1001, -1000]) == "NO"
    @test intersection([49, 1000000000],[49, 1000000000]) == "NO"
    @test intersection([-1000, -1000],[-1000, -1000]) == "NO"
    @test intersection([-20, 150],[-20, 150]) == "NO"
    @test intersection([-1000, 7],[-1000, 7]) == "NO"
    @test intersection([-1001, -1001],[-1001, -1001]) == "NO"
    @test intersection([25, 25],[25, 25]) == "NO"
    @test intersection([-999, -999],[-1000, -999]) == "NO"
    @test intersection([13, 100000009],[13, 100000009]) == "NO"
    @test intersection([-1000, 0],[-1000, 0]) == "NO"
    @test intersection([-999, -999],[-999, -999]) == "NO"
    @test intersection([-999999999, 20],[-4, 9]) == "YES"
    @test intersection([-100, -99],[-100, -99]) == "NO"
    @test intersection([-10, 50],[-10, 50]) == "NO"
    @test intersection([-1000, -1],[-1000, -1]) == "NO"
    @test intersection([-999, 25],[-999, 25]) == "NO"
    @test intersection([13, 1000000000],[1, 1000000001]) == "NO"
    @test intersection([150, 150],[150, 150]) == "NO"
    @test intersection([1000000002, 1000000002],[1000000002, 1000000002]) == "NO"
    @test intersection([-20, 20],[-4, -4]) == "NO"
    @test intersection([-1000, -6],[-1000, -6]) == "NO"
    @test intersection([-1000, 11],[13, 19]) == "NO"
    @test intersection([19, 150],[19, 150]) == "YES"
    @test intersection([-3, 999999999],[-3, 999999999]) == "NO"
    @test intersection([26, 151],[26, 151]) == "NO"
    @test intersection([-3, 51],[-3, 51]) == "NO"
    @test intersection([-3, 1000000000],[-3, 1000000000]) == "NO"
    @test intersection([-4, 0],[-4, 0]) == "NO"
    @test intersection([-5, 0],[-5, 0]) == "YES"
    @test intersection([-4, 10],[-4, 10]) == "NO"
    @test intersection([100000009, 100000011],[100000008, 100000009]) == "NO"
    @test intersection([-3, 25],[-3, 25]) == "NO"
    @test intersection([49, 49],[49, 49]) == "NO"
    @test intersection([-99, -99],[-99, -99]) == "NO"
    @test intersection([-99, 25],[-99, 25]) == "NO"
    @test intersection([100000009, 100000011],[100000008, 100000008]) == "NO"
    @test intersection([-6, 999999999],[-6, 999999999]) == "NO"
    @test intersection([50, 1000000001],[50, 1000000001]) == "NO"
    @test intersection([100000008, 100000008],[100000008, 100000008]) == "NO"
    @test intersection([100000007, 1000000000],[100000007, 1000000000]) == "NO"
    @test intersection([19, 1000000000],[19, 1000000000]) == "NO"
    @test intersection([-20, 1],[-4, 10]) == "YES"
    @test intersection([-3, 0],[-3, 0]) == "YES"
    @test intersection([50, 1000000002],[50, 1000000002]) == "NO"
    @test intersection([50, 1000000000],[50, 1000000000]) == "NO"
    @test intersection([25, 150],[25, 150]) == "NO"
    @test intersection([-5, -5],[-5, -5]) == "NO"
    @test intersection([25, 1000000001],[25, 1000000001]) == "NO"
    @test intersection([-4, 13],[-4, 13]) == "YES"
    @test intersection([8, 11],[13, 19]) == "NO"
    @test intersection([-4, 10],[-20, 20]) == "NO"
    @test intersection([-3, 100000009],[-3, 100000009]) == "NO"
    @test intersection([13, 19],[9, 11]) == "NO"
    @test intersection([-3, 100000008],[-3, 100000008]) == "NO"
    @test intersection([-20, 1],[-20, 1]) == "NO"
    @test intersection([-4, 19],[-4, 19]) == "YES"
    @test intersection([-7, 5],[0, 5]) == "YES"
    @test intersection([-4, 9],[-20, 20]) == "YES"
    @test intersection([8, 11],[8, 11]) == "YES"
    @test intersection([-20, 2],[-4, 10]) == "NO"
    @test intersection([0, 1000000002],[0, 1000000002]) == "NO"
    @test intersection([11, 1000000000],[11, 1000000000]) == "NO"
    @test intersection([-1000, -99],[-1000, -99]) == "NO"
    @test intersection([26, 26],[26, 26]) == "NO"
    @test intersection([1000000000, 1000000003],[1000000000, 1000000003]) == "YES"
    @test intersection([1000000000, 1000000004],[1000000000, 1000000004]) == "NO"
    @test intersection([6, 25],[6, 25]) == "YES"
    @test intersection([-20, 11],[-20, 11]) == "YES"
    @test intersection([-11, 10],[-11, 10]) == "NO"
    @test intersection([100000009, 100000011],[100000009, 100000009]) == "NO"
    @test intersection([0, 11],[0, 11]) == "YES"
    @test intersection([100000009, 100000011],[100000009, 100000011]) == "YES"
    @test intersection([14, 100000009],[14, 100000009]) == "NO"
    @test intersection([-999, -101],[-999, -101]) == "NO"
    @test intersection([100000008, 100000009],[100000008, 100000009]) == "NO"
    @test intersection([-10, 151],[-10, 151]) == "NO"
    @test intersection([-1001, -1],[-1001, -1]) == "NO"
    @test intersection([-11, 1],[-11, 1]) == "NO"
    @test intersection([-100, 10],[-100, 10]) == "NO"
    @test intersection([149, 150],[149, 150]) == "NO"
    @test intersection([-4, 6],[-4, 6]) == "NO"
    @test intersection([-1000000000, -4],[-1000000000, -4]) == "NO"
    @test intersection([-10, -9],[-10, -9]) == "NO"
    @test intersection([-999, 151],[-999, 151]) == "NO"
    @test intersection([-100, -4],[-100, -4]) == "NO"
    @test intersection([26, 149],[26, 149]) == "NO"
    @test intersection([-4, 7],[-4, 7]) == "YES"
    @test intersection([13, 1000000000],[13, 1000000000]) == "NO"
    @test intersection([-2, 10],[-2, 10]) == "NO"
    @test intersection([1000000000, 1000000001],[11, 1000000001]) == "NO"
    @test intersection([-9, 1],[-9, 1]) == "NO"
    @test intersection([-100, 0],[-100, 0]) == "NO"
    @test intersection([1, 1000000002],[1, 1000000002]) == "NO"
    @test intersection([-7, -5],[-7, -5]) == "YES"
    @test intersection([151, 1000000001],[151, 1000000001]) == "NO"
    @test intersection([-9, 11],[-9, 11]) == "NO"
    @test intersection([100000009, 100000009],[100000009, 100000009]) == "NO"
    @test intersection([13, 19],[13, 19]) == "NO"
    @test intersection([11, 50],[11, 50]) == "NO"
    @test intersection([-1000, 11],[-1000, 11]) == "NO"
    @test intersection([-100, 150],[-100, 150]) == "NO"
    @test intersection([1000000001, 1000000001],[1000000000, 1000000001]) == "NO"
    @test intersection([-7, -6],[-7, -6]) == "NO"
    @test intersection([100000011, 1000000002],[100000011, 1000000002]) == "NO"
    @test intersection([8, 1000000004],[8, 1000000004]) == "NO"
    @test intersection([-6, 50],[-6, 50]) == "NO"
    @test intersection([-1000, -2],[-1000, -2]) == "NO"
    @test intersection([-999999999, 1],[-999999999, 1]) == "NO"
    @test intersection([-19, 150],[-19, 150]) == "NO"
    @test intersection([-1002, -1000],[-1002, -1000]) == "YES"
    @test intersection([-9, 1000000001],[-9, 1000000001]) == "NO"
    @test intersection([-3, 24],[-3, 24]) == "NO"
    @test intersection([-2, 51],[-2, 51]) == "YES"
    @test intersection([-999999999, 50],[-999999999, 50]) == "NO"
    @test intersection([-998, 0],[-998, 0]) == "NO"
    @test intersection([48, 49],[48, 49]) == "NO"
    @test intersection([999999999, 1000000002],[999999999, 1000000002]) == "YES"
    @test intersection([14, 150],[14, 150]) == "NO"
    @test intersection([48, 999999999],[48, 999999999]) == "NO"
    @test intersection([100000008, 100000011],[100000008, 100000008]) == "NO"
    @test intersection([-7, -3],[-7, -3]) == "NO"
    @test intersection([-1000000000, -998],[-1000000000, -998]) == "NO"
    @test intersection([-998, -100],[-998, -100]) == "NO"
    @test intersection([27, 1000000001],[27, 1000000001]) == "NO"
    @test intersection([999999999, 1000000000],[999999999, 1000000000]) == "NO"
    @test intersection([-10, 9],[-10, 9]) == "YES"
    @test intersection([13, 20],[13, 20]) == "YES"
    @test intersection([-4, 27],[-4, 27]) == "YES"
    @test intersection([11, 1000000000],[-1000000000, 1000000001]) == "NO"
    @test intersection([-1, 51],[-1, 51]) == "NO"
    @test intersection([5, 100000011],[5, 100000011]) == "NO"
    @test intersection([27, 50],[27, 50]) == "YES"
    @test intersection([-20, 1000000000],[-20, 1000000000]) == "NO"
    @test intersection([-1, 11],[-1, 11]) == "NO"
    @test intersection([-20, 1],[-4, -4]) == "NO"
    @test intersection([5, 1000000002],[5, 1000000002]) == "NO"
    @test intersection([-999999999, 51],[-999999999, 51]) == "NO"
    @test intersection([100000010, 100000011],[100000010, 100000011]) == "NO"
    @test intersection([-3, 100000008],[-9, -2]) == "NO"
    @test intersection([999999998, 1000000002],[999999998, 1000000002]) == "NO"
    @test intersection([-19, 0],[-19, 0]) == "YES"
    @test intersection([-999, -2],[-999, -2]) == "YES"
    @test intersection([14, 19],[14, 19]) == "YES"
    @test intersection([-2, 11],[-2, 11]) == "YES"
    @test intersection([-999, -1],[-999, -1]) == "NO"
    @test intersection([-4, 28],[-4, 28]) == "NO"
    @test intersection([-6, -6],[-6, -6]) == "NO"
    @test intersection([-7, -4],[0, 5]) == "NO"
    @test intersection([-999999999, 0],[-999999999, 0]) == "NO"
    @test intersection([-99, 10],[-99, 10]) == "YES"
    @test intersection([-3, 2],[-9, -2]) == "NO"
    @test intersection([10, 13],[10, 13]) == "YES"
    @test intersection([-1000000000, 1000000001],[-1000000000, 1000000001]) == "NO"
    @test intersection([-5, 9],[-5, 9]) == "NO"
    @test intersection([0, 6],[0, 6]) == "NO"
    @test intersection([1000000000, 1000000000],[1000000000, 1000000000]) == "NO"
    @test intersection([-21, 2],[-21, 2]) == "YES"
    @test intersection([-4, 100000007],[-4, 100000007]) == "NO"
    @test intersection([13, 149],[13, 149]) == "NO"
    @test intersection([-7, -4],[-6, 5]) == "YES"
    @test intersection([20, 150],[20, 150]) == "NO"
    @test intersection([-5, 10],[-5, 10]) == "NO"
    @test intersection([-999999999, 20],[-999999999, 20]) == "NO"
    @test intersection([19, 151],[19, 151]) == "NO"
    @test intersection([48, 48],[48, 48]) == "NO"
    @test intersection([-21, 50],[-21, 50]) == "YES"
    @test intersection([-20, 2],[-4, -4]) == "NO"
    @test intersection([100000011, 100000011],[100000011, 100000011]) == "NO"
    @test intersection([-11, -10],[-11, -10]) == "NO"
    @test intersection([10, 27],[10, 27]) == "YES"
    @test intersection([-4, 10],[-20, 9]) == "YES"
    @test intersection([-998, 1],[-998, 1]) == "NO"
    @test intersection([-998, -5],[-998, -5]) == "NO"
    @test intersection([-999999998, -999999998],[-999999998, -999999998]) == "NO"
    @test intersection([-999, 24],[-999, 24]) == "NO"
    @test intersection([-21, 20],[-4, 10]) == "NO"
    @test intersection([-1001, 7],[-1001, 7]) == "NO"
    @test intersection([-10, -5],[-3, -1]) == "NO"
    @test intersection([-10, -5],[-3, 0]) == "NO"
    @test intersection([-1, 0],[0, 1]) == "NO"
    @test intersection([0, 1],[2, 3]) == "NO"
    @test intersection([0, 0],[1, 1]) == "NO"
    @test intersection([1, 6],[4, 10]) == "YES"
    @test intersection([0, 4],[-3, -1]) == "NO"
    @test intersection([-10, 7],[-20, 20]) == "YES"
    @test intersection([-8, -5],[-8, -5]) == "YES"
    @test intersection([-999999999, 1000000001],[1000000001, 1000000002]) == "NO"
    @test intersection([-1000, 7],[-20, 20]) == "NO"
    @test intersection([-1, 5],[-1, 5]) == "NO"
    @test intersection([-1001, -999],[-1001, -999]) == "YES"
    @test intersection([-8, -7],[-8, -7]) == "NO"
    @test intersection([-19, 20],[-19, 20]) == "NO"
    @test intersection([-8, -6],[-8, -6]) == "YES"
    @test intersection([-1001, 100000009],[-1001, 100000009]) == "NO"
    @test intersection([-1, 150],[-1, 150]) == "YES"
    @test intersection([-10, -8],[-10, -8]) == "YES"
    @test intersection([-1000, 1000000001],[-1000, 1000000001]) == "NO"
    @test intersection([-1001, 100000010],[-1001, 100000010]) == "NO"
    @test intersection([-999, 1000000000],[1, 1000000001]) == "NO"
    @test intersection([-6, 25],[-6, 25]) == "YES"
    @test intersection([-1000000000, 100000010],[-1000000000, 100000010]) == "NO"
    @test intersection([13, 13],[13, 13]) == "NO"
    @test intersection([-6, 19],[-6, 19]) == "NO"
    @test intersection([-1, 1000000002],[-1, 1000000002]) == "NO"
    @test intersection([-7, 149],[-7, 149]) == "NO"
    @test intersection([-999999999, 1000000000],[-8, 1000000001]) == "NO"
    @test intersection([-100, 50],[25, 151]) == "NO"
    @test intersection([25, 151],[25, 151]) == "NO"
    @test intersection([-99, 50],[25, 150]) == "NO"
    @test intersection([151, 151],[151, 151]) == "NO"
    @test intersection([-8, 1000000002],[-8, 1000000002]) == "NO"
    @test intersection([-9, 25],[-9, 25]) == "NO"
    @test intersection([-1, 50],[-1, 50]) == "NO"
    @test intersection([-999, 1000000000],[1000000000, 1000000001]) == "NO"
    @test intersection([1, 1000000001],[1, 1000000001]) == "NO"
    @test intersection([100000007, 100000007],[100000007, 100000007]) == "NO"
    @test intersection([1, 26],[1, 26]) == "NO"
    @test intersection([-10, 7],[-10, 7]) == "YES"
    @test intersection([-19, -19],[-19, -19]) == "NO"
    @test intersection([-999, 1000000000],[-999, 1000000000]) == "NO"
    @test intersection([-19, 149],[-19, 149]) == "NO"
    @test intersection([100000011, 1000000003],[100000011, 1000000003]) == "NO"
    @test intersection([-19, 25],[-19, 25]) == "NO"
    @test intersection([-999, 20],[-999, 20]) == "YES"
    @test intersection([1000000001, 1000000002],[-999999999, 1000000001]) == "NO"
    @test intersection([23, 151],[23, 151]) == "NO"
    @test intersection([12, 100000007],[12, 100000007]) == "NO"
    @test intersection([-999999999, 1000000000],[-8, -8]) == "NO"
    @test intersection([7, 1000000000],[7, 1000000000]) == "NO"
    @test intersection([-8, 1000000001],[-999999999, 1000000000]) == "NO"
    @test intersection([0, 5],[-7, -5]) == "NO"
    @test intersection([-5, 19],[-5, 19]) == "NO"
    @test intersection([-19, 26],[-19, 26]) == "NO"
    @test intersection([-1001, 1000000002],[-1001, 1000000002]) == "NO"
    @test intersection([11, 100000007],[11, 100000007]) == "NO"
    @test intersection([13, 50],[13, 50]) == "YES"
    @test intersection([149, 149],[149, 149]) == "NO"
    @test intersection([-20, 26],[-20, 26]) == "NO"
    @test intersection([-9, -2],[-9, -2]) == "YES"
    @test intersection([11, 151],[11, 151]) == "NO"
    @test intersection([-10, 11],[-10, 11]) == "NO"
    @test intersection([-9, 24],[-9, 24]) == "NO"
    @test intersection([7, 7],[7, 7]) == "NO"
    @test intersection([0, 100000007],[0, 100000007]) == "YES"
    @test intersection([-999999999, 11],[-999999999, 11]) == "NO"
    @test intersection([-1002, -1001],[-1002, -1001]) == "NO"
    @test intersection([-3, 5],[-3, 5]) == "NO"
    @test intersection([-10, -10],[-10, -10]) == "NO"
    @test intersection([151, 152],[151, 152]) == "NO"
    @test intersection([-7, 151],[-7, 151]) == "NO"
    @test intersection([100000006, 100000007],[100000006, 100000007]) == "NO"
    @test intersection([-999999999, 1000000001],[-999999999, 1000000001]) == "NO"
    @test intersection([-2, 1000000002],[-2, 1000000002]) == "NO"
    @test intersection([8, 1000000000],[8, 1000000000]) == "NO"
    @test intersection([-2, 151],[-2, 151]) == "NO"
    @test intersection([-8, -8],[-8, -8]) == "NO"
    @test intersection([-1000000001, 1000000000],[1, 1000000001]) == "NO"
    @test intersection([100000010, 1000000002],[100000010, 1000000002]) == "NO"
    @test intersection([12, 50],[12, 50]) == "NO"
    @test intersection([100000009, 1000000002],[-999999999, 1000000001]) == "NO"
    @test intersection([-11, -8],[-11, -8]) == "YES"
    @test intersection([12, 100000006],[12, 100000006]) == "NO"
    @test intersection([12, 20],[12, 20]) == "NO"
    @test intersection([1000000000, 1000000002],[-999999999, 1000000001]) == "NO"
    @test intersection([-20, 10],[-20, 10]) == "NO"
    @test intersection([-1000000001, 20],[-1000000001, 20]) == "YES"
    @test intersection([11, 1000000001],[11, 1000000001]) == "NO"
    @test intersection([1000000001, 1000000002],[1000000000, 1000000001]) == "NO"
    @test intersection([1000000002, 1000000002],[1000000000, 1000000001]) == "NO"
    @test intersection([20, 20],[20, 20]) == "NO"
    @test intersection([-11, -7],[-11, -7]) == "NO"
    @test intersection([-8, 1000000000],[-999999999, 1000000000]) == "NO"
    @test intersection([-1000000001, 100000008],[-1000000001, 100000008]) == "YES"
    @test intersection([-8, 100000011],[-8, 100000011]) == "NO"
    @test intersection([-10, 8],[-10, 8]) == "NO"
    @test intersection([-5, -1],[-5, -1]) == "NO"
    @test intersection([-9, 1000000001],[1000000001, 1000000002]) == "NO"
    @test intersection([-1000000000, 20],[-1000000000, 20]) == "NO"
    @test intersection([13, 14],[13, 14]) == "NO"
    @test intersection([-999999999, 1000000001],[1000000000, 1000000002]) == "NO"
    @test intersection([-8, 7],[-8, 7]) == "NO"
    @test intersection([12, 14],[12, 14]) == "YES"
    @test intersection([-1001, 100000011],[-1001, 100000011]) == "NO"
    @test intersection([150, 1000000002],[150, 1000000002]) == "NO"
    @test intersection([-2, 150],[-2, 150]) == "NO"
    @test intersection([100000007, 100000011],[100000007, 100000011]) == "NO"
    @test intersection([-2, 19],[-2, 19]) == "NO"
    @test intersection([-1000000000, -1001],[-1000000000, -1001]) == "NO"
    @test intersection([23, 50],[23, 50]) == "NO"
    @test intersection([-1002, -1002],[-1002, -1002]) == "NO"
    @test intersection([24, 150],[24, 150]) == "NO"
    @test intersection([999999999, 1000000000],[-8, 1000000001]) == "NO"
    @test intersection([-11, 1000000000],[-8, -8]) == "NO"
    @test intersection([-9, 12],[-9, 12]) == "NO"
    @test intersection([-1003, -1002],[-1003, -1002]) == "NO"
    @test intersection([-8, 1000000001],[-8, 1000000001]) == "YES"
    @test intersection([-11, 19],[-11, 19]) == "NO"
    @test intersection([-1000000000, 1000000000],[-999999999, -20]) == "NO"
    @test intersection([14, 149],[14, 149]) == "NO"
    @test intersection([12, 19],[12, 19]) == "YES"
    @test intersection([100000010, 100000012],[100000010, 100000012]) == "YES"
    @test intersection([100000009, 100000012],[100000009, 100000012]) == "YES"
    @test intersection([149, 100000008],[149, 100000008]) == "NO"
    @test intersection([11, 1000000002],[11, 1000000002]) == "NO"
    @test intersection([11, 23],[11, 23]) == "NO"
    @test intersection([14, 100000010],[14, 100000010]) == "NO"
    @test intersection([20, 21],[20, 21]) == "NO"
    @test intersection([150, 100000008],[150, 100000008]) == "NO"
    @test intersection([11, 12],[11, 12]) == "NO"
    @test intersection([151, 100000008],[151, 100000008]) == "NO"
    @test intersection([100000010, 1000000003],[100000010, 1000000003]) == "NO"
    @test intersection([-8, 25],[-8, 25]) == "NO"
    @test intersection([-7, -7],[-7, -7]) == "NO"
    @test intersection([-8, 1000000001],[1000000000, 1000000000]) == "NO"
    @test intersection([-6, 27],[-6, 27]) == "NO"
    @test intersection([-999, -11],[-999, -11]) == "NO"
    @test intersection([26, 100000007],[26, 100000007]) == "NO"
    @test intersection([-20, 50],[-20, 50]) == "NO"
    @test intersection([-7, 1000000002],[-7, 1000000002]) == "YES"
    @test intersection([-1000, 1000000000],[-1000, 1000000000]) == "NO"
    @test intersection([-1000, -999],[-999, -999]) == "NO"
    @test intersection([-9, 1000000001],[-999999999, 1000000000]) == "YES"
    @test intersection([-1000, 100000009],[-1000, 100000009]) == "NO"
    @test intersection([-999, 26],[-999, 26]) == "NO"
    @test intersection([-1, 19],[-1, 19]) == "NO"
    @test intersection([-6, 18],[-6, 18]) == "NO"
    @test intersection([-8, -8],[-999999999, 1000000000]) == "NO"
    @test intersection([-7, 100000007],[-7, 100000007]) == "NO"
    @test intersection([-999999999, 1000000001],[13, 1000000002]) == "NO"
    @test intersection([24, 24],[24, 24]) == "NO"
    @test intersection([-999, 1000000000],[0, 1000000001]) == "NO"
    @test intersection([-11, 1000000002],[-11, 1000000002]) == "NO"
    @test intersection([18, 18],[18, 18]) == "NO"
    @test intersection([8, 50],[8, 50]) == "NO"
    @test intersection([-6, -5],[-6, -5]) == "NO"
    @test intersection([-8, 1000000001],[999999999, 1000000000]) == "NO"
    @test intersection([-10, 10],[-20, 0]) == "NO"
    @test intersection([50, 151],[50, 151]) == "YES"
    @test intersection([-11, 20],[-11, 20]) == "YES"
    @test intersection([10, 149],[10, 149]) == "YES"
    @test intersection([-20, 1000000002],[-20, 1000000002]) == "NO"
    @test intersection([-100, 100000009],[-100, 100000009]) == "NO"
    @test intersection([-999, 100000011],[-999, 100000011]) == "NO"
    @test intersection([-1000, 12],[-1000, 12]) == "NO"
    @test intersection([50, 100000009],[50, 100000009]) == "YES"
    @test intersection([-5, 14],[-5, 14]) == "YES"
    @test intersection([-6, 149],[-6, 149]) == "NO"
    @test intersection([27, 149],[27, 149]) == "NO"
    @test intersection([150, 1000000000],[150, 1000000000]) == "NO"
    @test intersection([-2, 12],[-2, 12]) == "NO"
    @test intersection([-1000, 151],[-1000, 151]) == "YES"
    @test intersection([-5, 1000000002],[-5, 1000000002]) == "YES"
    @test intersection([1000000001, 1000000002],[-999999999, 999999999]) == "NO"
    @test intersection([-1000000000, -999999999],[-1000000000, -999999999]) == "NO"
    @test intersection([-1000000001, 13],[-1000000001, 13]) == "NO"
    @test intersection([-7, 11],[-7, 11]) == "NO"
    @test intersection([-6, 147],[-6, 147]) == "NO"
    @test intersection([-100, 149],[-100, 149]) == "NO"
    @test intersection([-1000000001, -3],[-1000000001, -3]) == "NO"
    @test intersection([-2, 1000000001],[-2, 1000000001]) == "NO"
    @test intersection([-1003, -7],[-1003, -7]) == "NO"
    @test intersection([-1000000000, 1000000001],[-999999999, 1000000000]) == "NO"
    @test intersection([-19, 13],[-19, 13]) == "NO"
    @test intersection([-8, 1000000000],[-8, 1000000000]) == "NO"
    @test intersection([-8, 11],[-8, 11]) == "YES"
    @test intersection([-999, -998],[-999, -998]) == "NO"
    @test intersection([-1002, -5],[-1002, -5]) == "YES"
    @test intersection([-11, -11],[-11, -11]) == "NO"
    @test intersection([-999, 100000007],[-999, 100000007]) == "NO"
    @test intersection([49, 151],[49, 151]) == "NO"
    @test intersection([-1000000000, 100000011],[-1000000000, 100000011]) == "NO"
    @test intersection([-1000000000, 100000008],[-1000000000, 100000008]) == "NO"
    @test intersection([14, 14],[14, 14]) == "NO"
    @test intersection([-8, 1000000001],[-1000000000, 1000000000]) == "NO"
    @test intersection([-9, 1000000000],[-9, 1000000000]) == "YES"
    @test intersection([11, 22],[11, 22]) == "YES"
    @test intersection([-9, -8],[-9, -8]) == "NO"
    @test intersection([14, 50],[14, 50]) == "NO"
    @test intersection([-1000000001, 1000000000],[-1000000001, 1000000000]) == "NO"
    @test intersection([100000007, 1000000002],[100000007, 1000000002]) == "NO"
    @test intersection([50, 149],[50, 149]) == "NO"
    @test intersection([-2, 21],[-2, 21]) == "YES"
    @test intersection([14, 151],[14, 151]) == "YES"
    @test intersection([-1000, -998],[-1000, -998]) == "YES"
    @test intersection([-1000000000, 1000000000],[1, 21]) == "NO"
    @test intersection([-3, 18],[-3, 18]) == "NO"
    @test intersection([-999999998, 1000000000],[-8, 1000000001]) == "NO"
    @test intersection([-3, 21],[-3, 21]) == "NO"
    @test intersection([-999999999, 19],[-999999999, 19]) == "NO"
    @test intersection([25, 100000007],[25, 100000007]) == "NO"
    @test intersection([-999, 21],[-999, 21]) == "NO"
    @test intersection([4, 5],[4, 5]) == "NO"
    @test intersection([6, 8],[6, 8]) == "YES"
    @test intersection([49, 1000000001],[49, 1000000001]) == "NO"
    @test intersection([100000009, 1000000002],[-999999999, 1000000002]) == "NO"
    @test intersection([-998, -998],[-998, -998]) == "NO"
    @test intersection([-1001, 19],[-1001, 19]) == "NO"
    @test intersection([-1003, 1000000001],[-1003, 1000000001]) == "NO"
    @test intersection([-999, 19],[-999, 19]) == "NO"
    @test intersection([100000009, 1000000001],[100000009, 1000000001]) == "NO"
    @test intersection([-19, 49],[-19, 49]) == "NO"
    @test intersection([21, 21],[21, 21]) == "NO"
    @test intersection([-999999999, 1000000002],[-999999999, 1000000002]) == "NO"
    @test intersection([-1, 151],[-1, 151]) == "NO"
    @test intersection([4, 1000000001],[999999999, 1000000001]) == "YES"
    @test intersection([-999999998, -7],[-999999998, -7]) == "NO"
    @test intersection([-1000000001, 1000000000],[0, 1000000001]) == "NO"
    @test intersection([-6, 150],[-6, 150]) == "NO"
    @test intersection([-1000000000, -1000000000],[-1000000000, -1000000000]) == "NO"
    @test intersection([-1000, 26],[-1000, 26]) == "NO"
    @test intersection([-99, -1],[-99, -1]) == "NO"
    @test intersection([-9, 100000012],[-9, 100000012]) == "NO"
    @test intersection([-11, 27],[-11, 27]) == "NO"
    @test intersection([21, 23],[21, 23]) == "YES"
    @test intersection([15, 100000010],[15, 100000010]) == "NO"
    @test intersection([20, 1000000002],[20, 1000000002]) == "NO"
    @test intersection([-999, 153],[-999, 153]) == "NO"
end
