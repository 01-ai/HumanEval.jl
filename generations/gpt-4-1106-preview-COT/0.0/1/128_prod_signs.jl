"""
    prod_signs(xs::Vector{Int})::Union{Nothing,Int}

You are given an array `xs` of integers and you need to return sum of magnitudes
of integers multiplied by product of all signs of each number in the array,
represented by 1, -1 or 0. Note: return None for empty `xs`.

Example: julia> prod_signs([1, 2, 2, -4]) -9

julia> prod_signs([0, 1]) 0

julia> prod_signs([])
"""
function prod_signs(xs::Vector{Int})::Union{Nothing,Int}
    # Step 1: Check for empty vector
    if isempty(xs)
        return nothing
    end

    # Step 2: Initialize product of signs
    sign_product = 1

    # Step 3: Initialize sum of magnitudes
    magnitude_sum = 0

    # Step 4: Iterate over elements
    for x in xs
        # Determine the sign and update the product of signs
        sign_product *= if x > 0
            1
        elseif x < 0
            -1
        else
            0
        end

        # Break early if sign_product is 0
        if sign_product == 0
            return 0
        end

        # Update the sum of magnitudes
        magnitude_sum += abs(x)
    end

    # Step 5 & 6: Return the result
    return magnitude_sum * sign_product
end
