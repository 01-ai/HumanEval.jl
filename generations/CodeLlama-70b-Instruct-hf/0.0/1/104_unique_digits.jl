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
    # Create an empty list to store the unique elements
    unique_elements = Int[]

    # Iterate through each element in the list
    for x in xs
        # Convert the element to a string
        x_str = string(x)

        # Check if the element has any even digits
        has_even_digit = false
        for char in x_str
            digit = parse(Int, char)
            if digit % 2 == 0
                has_even_digit = true
                break
            end
        end

        # If the element doesn't have any even digits, add it to the unique_elements list
        if !has_even_digit
            push!(unique_elements, x)
        end
    end

    # Sort the unique_elements list in increasing order
    sort!(unique_elements)

    # Return the unique_elements list
    return unique_elements
end
