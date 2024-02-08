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
    # Check if the input array is empty
    if isempty(xs)
        return nothing
    end

    # Initialize sum_magnitudes and product_signs
    sum_magnitudes = 0
    product_signs = 1

    # Iterate over each element in the array
    for x in xs
        # Update sum_magnitudes
        sum_magnitudes += abs(x)

        # Update product_signs
        if x < 0
            product_signs *= -1
        elseif x > 0
            product_signs *= 1
        end
    end

    # Return the product of sum_magnitudes and product_signs
    return sum_magnitudes * product_signs
end
