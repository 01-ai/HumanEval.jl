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
    # Step 1: Initialize an empty vector for the result
    result = Vector{String}()
    
    # Step 2: Iterate through each string in the input vector
    for x in xs
        # Count the number of odd digits in the current string
        odd_count = count(digit -> isodd(parse(Int, digit)), collect(x))
        
        # Construct the result string with the odd count replacing 'i'
        result_string = replace("the number of odd elements in the string i of the input.",
                                "i" => string(odd_count))
        
        # Append the constructed string to the result vector
        push!(result, result_string)
    end
    
    # Step 3: Return the result vector
    return result
end
