"""
    fizz_buzz(n::Int)

Return the number of times the digit 7 appears in integers less than `n` which are
divisible by 11 or 13.

# Examples

```jldoctest
julia> fizz_buzz(50)
0

julia> fizz_buzz(78)
2

julia> fizz_buzz(79)
3
```
"""
function fizz_buzz(n::Int)
    # Step 1: Initialize the counter
    count_sevens = 0

    # Step 2: Iterate over the range of numbers
    for i in 1:(n-1)
        # Step 3: Check divisibility by 11 or 13
        if i % 11 == 0 || i % 13 == 0
            # Step 4: Convert to string and count '7's
            count_sevens += count('7', string(i))
        end
    end

    # Step 6: Return the counter
    return count_sevens
end
println(fizz_buzz(50)) # Expected output: 0
println(fizz_buzz(78)) # Expected output: 2
println(fizz_buzz(79)) # Expected output: 3
