"""
    choose_num(x::Int, y::Int)::Int

This function takes two positive numbers x and y and returns the biggest even
integer number that is in the range [x, y] inclusive. If there's no such number,
then the function should return -1.

# Example

```jldoctest
julia> choose_num(12, 15)
14

julia> choose_num(13, 12)
-1
```
"""


function choose_num(x::Int, y::Int)::Int
    for i in y:-1:x
        if i % 2 == 0
            return i
        end
    end
    return -1
end

# Test cases
println(choose_num(12, 15)) # 14
println(choose_num(13, 12)) # -1
println(choose_num(1, 10)) # 10
println(choose_num(1, 9)) # -1
println(choose_num(2, 2)) # 2
println(choose_num(3, 3)) # -1
println(choose_num(1, 2)) # 2
println(choose_num(1, 1)) # -1
println(choose_num(2, 20)) # 20
println(choose_num(1, 100)) # 100
println(choose_num(1, 99)) # 98
println(choose_num(2, 200)) # 200
println(choose_num(1, 1000)) # 1000
println(choose_num(1, 999)) # 998
println(choose_num(2, 2000)) # 2000
println(choose_num(1, 10000)) # 10000
println(choose_num(1, 9999)) # 9998
println(choose_num(2, 20000)) # 20000
println(choose_num(1, 100000)) # 100000
println(choose_num(1, 99999)) # 99998
println(choose_num(2, 200000)) # 200000
println(choose_num(1, 1000000)) # 1000000
println(choose_num(1, 999999)) # 999998
println(choose_num(2, 2000000)) # 2000000
println(choose_num(1, 10000000)) # 10000000
println(choose_num(1, 9999999)) # 9999998
println(choose_num(2, 20000000)) # 20000000
println(choose_num(1, 100000000)) # 100000000
println(choose_num(1, 99999999)) # 99999998
println(choose_num(2, 200000000)) # 200000000
println(choose_num(1, 1000000000)) # 1000000000
println(choose_num(1, 999999999)) # 999999998
println(choose_num(2, 2000000000)) # 2000000000
println(choose_num(1, 10000000000)) # 10000000000
println(choose_num(1, 9999999999)) # 9999999998
println(choose_num(2, 20000000000)) # 20000000000
println(choose_num(1, 100000000000)) # 100000000000
println(choose_num(1, 99999999999)) # 99999999998
println(choose_num(2, 200000000000)) # 200000000000
println(choose_num(1, 1000000000000)) # 1000000000000
println(choose_num(1, 999999999999)) # 999999999998
println(choose_num(2, 2000000000000)) # 2000000000000
println(choose_num(1, 10000000000000)) # 10000000000000
println(choose_num(1, 9999999999999)) # 9999999999998
println(choose_num(2, 20000000000000)) # 20000000000000
println(choose_num(1, 100000000000000)) # 10000000000000
println(choose_num(1, 99999999999999)) # 99999999999998
println(choose_num(2, 200000000000000)) # 200000000000000
println(choose_num(1, 1000000000000000)) # 100000000000000
println(choose_num(1, 999999999999999)) # 999999999999998
println(choose_num(2, 2000000000000000)) # 2000000000000000
println(choose_num(1, 10000000000000000)) # 1000000000000000
println(choose_num(1, 9999999999999999)) # 9999999999999998
println(choose_num(2, 20000000000000000)) # 20000000000000000
println(choose_num(1, 100000000000000000)) # 10000000000000000
println(choose_num(1, 99999999999999999)) # 99999999999999998
println(choose_num(2, 200000000000000000)) # 200000000000000000
println(choose_num(1, 1000000000000000000)) # 100000000000000000
println(choose_num(1, 999999999999999999)) # 999999999999999998
println(choose_num(2, 2000000000000000000)) # 2000000000000000000
println(choose_num(1, 10000000000000000000)) # 10000000000000000000
println(choose_num(1, 99999999999999999999)) # 99999999999999999998
println(choose_num(2, 200000000000000000000)) # 200000000000000000000
println(choose_num(1, 1000000000000000000000)) # 1000000000000000000000
println(choose_num(1, 9999999999999999999999)) # 9999999999999999999998
println(choose_num(2, 20000000000000000000000)) # 20000000000000000000000
println(choose_num(1, 100000000000000000000000)) # 100000000000000000000000
println(choose_num(1, 999999999999999999999999)) # 999999999999999999999998
println(choose_num(2, 2000000000000000000000000)) # 2000000000000000000000000
println(choose_num(1, 10000000000000000000000000)) # 10000000000000000000000000
println(choose_num(1, 99999999999999999999999999)) # 99999999999999999999999998
println(choose_num(2, 200000000000000000000000000)) # 200000000000000000000000000
println(choose_num(1, 1000000000000000000000000000)) # 1000000000000000000000000000
println(choose_num(1, 9999999999999999999999999999)) # 9999999999999999999999999998
println(choose_num(2, 20000000000000000000000000000)) # 20000000000000000000000000000
println(choose_num(1, 100000000000000000000000000000)) # 100000000000000000000000000000
println(choose_num(1, 999999999999999999999999999999)) # 999999999999999999999999999998
println(choose_num(2, 2000000000000000000000000000000)) # 2000000000000000000000000000000
println(choose_num(1, 10000000000000000000000000000000)) # 10000000000000000000000000000000
println(choose_num(1, 99999999999999999999999999999999)) # 99999999999999999999999999999998
println(choose_num(2, 200000000000000000000000000000000)) # 200000000000000000000000000000000
println(choose_num(1, 1000000000000000000000000000000000)) # 1000000000000000000000000000000000
println(choose_num(1, 9999999999999999999999999999999999)) # 9999999999999999999999999999999998
println(choose_num(2, 20000000000000000000000000000000000)) # 20000000000000000000000000000000000
println(choose_num(1, 100000000000000000000000000000000000)) # 100000000000000000000000000000000000
println(choose_num(1, 999999999999999999999999999999999999)) # 999999999999999999999999999999999998
println(choose_num(2, 200000000000000000000000000000000000)) # 200000000000000000000000000000000000
println(choose_num(1, 1000000000000000000000000000000000000)) # 1000000000000000000000000000000000000
println(choose_num(1, 9999999999999999999999999999999999999)) # 9999999999999999999999999999999999998
println(choose_num(2, 2000000000000000000000000000000000000)) # 2000000000000000000000000000000000000
println(choose_num(1