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
    function count_odd_digits(s::String)::Int
        count = 0
        for c in s
            if isdigit(c) && (parse(Int, c) % 2 != 0)
                count += 1
            end
        end
        return count
    end

    # Main logic to process each string and construct the output
    result = Vector{String}()
    for x in xs
        odd_count = count_odd_digits(x)
        # Construct the output string with the odd count replacing the relevant parts
        output_str = replace("the number of odd elements in the string of the input.",
                             "in" => "$(odd_count)n", "string" => "str$(odd_count)ng", "input" => "$(odd_count)nput")
        push!(result, output_str)
    end

    return result
end
