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
    # Initialize an empty list to store the result
    result = []

    # Iterate over each number in the input list
    for num in xs
        # Initialize a flag to check if the number has any even digit
        has_even_digit = false

        # Convert the number to a string to easily check each digit
        str_num = string(num)

        # Iterate over each digit in the number
        for digit in str_num
            # If the digit is even, set the flag to true and break the loop
            if parse(Int, digit) % 2 == 0
                has_even_digit = true
                break
            end
        end

        # If the flag is still false, the number doesn't have any even digit
        # so add it to the result list
        if !has_even_digit
            push!(result, num)
        end
    end

    # Return the sorted result list
    return sort(result)
end
