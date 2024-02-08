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

    # Step 2: Calculate the sum of integers from n to m
    sum_of_series = ((m - n + 1) * (n + m)) ÷ 2

    # Step 3: Calculate the average
    avg = sum_of_series ÷ (m - n + 1)

    # Step 4: Round the average (Note: The division above ensures it's already an integer)

    # Step 5: Convert to binary and return
    return string(avg, base=2)
end
