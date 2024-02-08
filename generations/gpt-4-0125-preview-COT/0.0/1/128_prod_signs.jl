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
    # Step 1: Check for empty array
    if isempty(xs)
        return Nothing
    end

    # Step 2: Initialize variables
    sum_magnitudes = 0
    prod_signs = 1

    # Step 3: Iterate through array
    for x in xs
        # Step 3a: Update sum of magnitudes
        sum_magnitudes += abs(x)
        
        # Step 3b: Update product of signs
        if x < 0
            prod_signs *= -1
        elseif x == 0
            prod_signs = 0
            break  # No need to continue if we encounter 0
        end
    end

    # Step 4 & 5: Calculate final result and return
    return sum_magnitudes * prod_signs
end
