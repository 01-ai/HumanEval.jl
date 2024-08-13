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
function sum_of_digits(n::Int)::Int
    digits = Int[]
    if n < 0
        n = -n
        digits = [-Int(digit) for digit in string(n)[1]]
        digits = vcat(digits, [Int(digit) for digit in string(n)[2:end]])
    else
        digits = [Int(digit) for digit in string(n)]
    end
    return sum(digits)
end

function count_nums(xs::Vector{Int})::Int
    count = 0
    for x in xs
        if sum_of_digits(x) > 0
            count += 1
        end
    end
    return count
end

# Examples
println(count_nums(Int[]))          # 0
println(count_nums([-1, 11, -11]))  # 1
println(count_nums([1, 1, 2]))      # 3
