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
    # Check if n is greater than m
    if n > m
        return -1
    end

    # Calculate the average of the integers from n through m
    average = (n + m) // 2

    # Round the average to the nearest integer
    rounded_average = round(Int, average)

    # Convert the rounded average to binary
    binary_rounded_average = string(rounded_average, base=2, pad=length(string(m)))

    # Return the binary representation
    return binary_rounded_average
end
