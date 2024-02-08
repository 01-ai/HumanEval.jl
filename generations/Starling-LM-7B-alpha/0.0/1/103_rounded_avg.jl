"""
    rounded_avg(n::Int, m::Int)::Union{Int, String}

You are given two positive integers n and m, and your task is to compute the
average of the integers from n through m (including n and m). Round the answer
to the nearest integer and convert that to binary. If n is greater than m,
return -1.

# Examples

```jldoctest
julia> rounded_avg(1, 5)
"11"

julia> rounded_avg(7, 5)
-1

julia> rounded_avg(10, 20)
"1111"

julia> rounded_avg(20, 33)
"11010"
```
"""
 function rounded_avg(n::Int, m::Int)::Union{Int, String}
    if n > m
        return -1
    end

    total = 0
    for i in range(n, m+1)
        total += i
    end

    avg = round(total / (m - n + 1))

    binary_avg = convert(String, avg, 2)

    return binary_avg
end
