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
    count_sevens = 0
    for i in 1:n-1
        if i % 11 == 0 || i % 13 == 0
            count_sevens += count_occurrences_of_seven(i)
        end
    end
    return count_sevens
end

function count_occurrences_of_seven(number::Int)
    count = 0
    for digit in string(number)
        if digit == '7'
            count += 1
        end
    end
    return count
end

# Examples
println(fizz_buzz(50))  # Expected output: 0
println(fizz_buzz(78))  # Expected output: 2
println(fizz_buzz(79))  # Expected output: 3
