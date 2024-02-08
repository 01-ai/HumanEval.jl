"""
    sum_to_n(n::Int)::Int

`sum_to_n` is a function that sums numbers from `1` to `n`.

# Examples

```jldoctest
julia> sum_to_n(30)
465

julia> sum_to_n(100)
5050

julia> sum_to_n(5)
15

julia> sum_to_n(10)
55

julia> sum_to_n(1)
1
```
"""

function sum_to_n(n::Int)::Int
    return n * (n + 1) � 2
end

# Test cases
println(sum_to_n(30))  # 465
println(sum_to_n(100))  # 5050
println(sum_to_n(5))  # 15
println(sum_to_n(10))  # 55
println(sum_to_n(1))  # 1

# Explanation:
# The function `sum_to_n(n::Int)::Int` uses the formula for the sum of an arithmetic series, which is `n * (n + 1) � 2`.
# This formula is derived from the fact that the sum of the first `n` natural numbers is equal to the area of the right triangle with base and height equal to `n + 1`.
# The `� 2` operation is used to get the area of the triangle, because each number in the series is counted twice (once for the number itself and once for its corresponding partner in the sum). 
