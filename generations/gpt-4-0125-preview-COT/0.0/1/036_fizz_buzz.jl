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
    # Step 1: Initialize a counter
    count_sevens = 0

    # Step 2: Iterate through numbers less than `n`
    for i in 1:n-1
        # Step 3: Check divisibility by 11 or 13
        if i % 11 == 0 || i % 13 == 0
            # Step 4: Count digit 7 in the number
            count_sevens += count('7', string(i))
        end
    end

    # Step 5: Return the counter
    return count_sevens
end
