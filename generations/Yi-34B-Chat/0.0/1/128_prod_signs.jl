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
    # Base case: empty array
    if length(xs) == 0
        return nothing
    end

    # Initialize the product of signs and the sum of magnitudes
    sign_product = 1
    mag_sum = 0

    # Loop through the array and update the product and sum
    for x in xs
        if x != 0
            if x > 0
                sign_product *= 1
            elseif x < 0
                sign_product *= -1
            end
            mag_sum += abs(x)
        end
    end

    # Return the product of signs times the sum of magnitudes
    return sign_product * mag_sum
end
