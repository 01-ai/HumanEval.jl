"""
    unique_digits(xs::Vector{Int})::Vector{Int}

Given a list of positive integers `xs`. Return a sorted list of all
elements that hasn't any even digit.

!!! note

    Returned list should be sorted in increasing order.

# Examples

```jldoctest
julia> unique_digits([15, 33, 1422, 1])
3-element Vector{Int64}:
  1
 15
 33

julia> unique_digits([152, 313, 1422, 10])
1-element Vector{Int64}:
 313
```
"""
function unique_digits(xs::Vector{Int})::Vector{Int}
    # Step 2: Initialize an empty vector to store the numbers without even digits
    result = Int[]

    # Step 3: Iterate over each number in the input vector
    for x in xs
        # Step 4: Convert the number to a string and check for even digits
        has_even_digit = any(digit -> iseven(parse(Int, digit)), string(x))
        
        # Step 5: If the number does not contain any even digit, add it to the result
        if !has_even_digit
            push!(result, x)
        end
    end

    # Step 6: Sort the result vector in increasing order
    sort!(result)

    # Step 7: Return the sorted result vector
    return result
end
println(unique_digits([15, 33, 1422, 1])) # Should print [1, 15, 33]
println(unique_digits([152, 313, 1422, 10])) # Should print [313]
