"""
    odd_count(xs::Vector{String})::Vector{String}

Given a list of strings, where each string consists of only digits, return a
list. Each element `i` of the output should be "the number of odd elements in
the string i of the input." where all the i"s should be replaced by the number
of odd digits in the i"th string of the input.

# Example

```jldoctest
julia> odd_count(["1234567"])
1-element Vector{String}:
 "the number of odd elements 4n the str4ng 4 of the 4nput."

julia> odd_count(["3", "11111111"])
2-element Vector{String}:
 "the number of odd elements 1n the str1ng 1 of the 1nput."
 "the number of odd elements 8n the str8ng 8 of the 8nput."
```
"""
function odd_count(xs::Vector{String})::Vector{String}
    # Function to count odd digits in a string
    function count_odd_digits(s::String)
        count(c -> c in ['1', '3', '5', '7', '9'], s)
    end

    # Create the output vector
    result = Vector{String}(undef, length(xs))

    # Process each string in the input vector
    for (i, x) in enumerate(xs)
        odd_count = count_odd_digits(x)
        odd_str = string(odd_count)
        result[i] = "the number of odd elements $(odd_str)n the str$(odd_str)ng $(odd_str) of the $(odd_str)nput."
    end

    return result
end
