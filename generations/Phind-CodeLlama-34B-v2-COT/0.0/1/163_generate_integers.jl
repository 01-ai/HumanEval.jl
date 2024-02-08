"""
    generate_integers(a::Int, b::Int)::Vector{Int}

Given two positive integers a and b, return the even digits between a and b, in
ascending order.

# Example

```jldoctest
julia> generate_integers(2, 8)
4-element Vector{Int64}:
 2
 4
 6
 8

julia> generate_integers(8, 2)
4-element Vector{Int64}:
 2
 4
 6
 8

julia> generate_integers(10, 14)
Int64[]
```
"""
function generate_integers(a::Int, b::Int)::Vector{Int}
    # Step 1: Determine the lower and upper bounds
    lower_bound = min(a, b)
    upper_bound = max(a, b)

    # Step 2: Initialize an empty vector to store the even digits
    even_digits = Int[]

    # Step 3: Iterate over the range from lower_bound to upper_bound
    for num in lower_bound:upper_bound
        # Step 3.1: Convert the current number to a string
        num_str = string(num)

        # Step 3.2: Iterate over the characters in num_str
        for char in num_str
            # Step 3.2.1: Convert the current character back to an integer
            digit = parse(Int, char)

            # Step 3.2.2: Check if the digit is even
            if digit % 2 == 0
                # Step 3.2.3: If it is, push it to the even_digits vector
                push!(even_digits, digit)
            end
        end
    end

    # Step 4: Remove duplicates from the even_digits vector
    unique!(even_digits)

    # Step 5: Sort the even_digits vector in ascending order
    sort!(even_digits)

    # Step 6: Return the sorted vector of unique even digits
    return even_digits
end
