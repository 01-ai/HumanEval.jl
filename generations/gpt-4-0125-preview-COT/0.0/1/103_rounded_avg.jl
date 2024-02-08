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
    # Step 1: Check if n is greater than m
    if n > m
        return -1
    end

    # Step 2: Calculate the average
    # The sum of an arithmetic series: sum = (n + m) * (m - n + 1) / 2
    # Number of terms: m - n + 1
    # Average: sum / number of terms = (n + m) / 2
    avg = (n + m) / 2

    # Step 3: Round the average
    rounded_avg = round(Int, avg)

    # Step 4: Convert to binary
    binary_representation = string(rounded_avg, base=2)

    # Step 5: Return the binary string
    return binary_representation
end
