"""
    count_nums(xs::Vector{Int})::Int

Write a function `count_nums` which takes an array of integers and returns the
number of elements which has a sum of digits > 0. If a number is negative, then
its first signed digit will be negative: e.g. -123 has signed digits -1, 2, and
3.

# Examples

```jldoctest
julia> count_nums(Int[])
0

julia> count_nums([-1, 11, -11])
1

julia> count_nums([1, 1, 2])
3
```
"""
function count_nums(xs::Vector{Int})::Int
    count = 0
    for x in xs
        sum_digits = 0
        if x < 0
            sum_digits -= abs(x) % 10  # Subtract the first digit
            x = div(x, -10)  # Remove the first digit and make x positive
        end
        while x > 0
            sum_digits += x % 10
            x = div(x, 10)
        end
        if sum_digits > 0
            count += 1
        end
    end
    return count
end
println(count_nums(Int[]))  # Expected output: 0
println(count_nums([-1, 11, -11]))  # Expected output: 1
println(count_nums([1, 1, 2]))  # Expected output: 3
