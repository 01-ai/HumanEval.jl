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
    count = 0
    for i in 1:n-1
        if i % 11 == 0 || i % 13 == 0
            # Convert the number to a string to check for the digit '7'
            count += count_digits_7(i)
        end
    end
    return count
end

function count_digits_7(number::Int)
    digits_7 = 0
    for digit in string(number)
        if digit == '7'
            digits_7 += 1
        end
    end
    return digits_7
end