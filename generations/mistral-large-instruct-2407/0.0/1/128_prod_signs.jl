"""
    prod_signs(xs::Vector{Int})::Union{Nothing,Int}

You are given an array `xs` of integers and you need to return sum of magnitudes
of integers multiplied by product of all signs of each number in the array,
represented by 1, -1 or 0. Note: return None for empty `xs`.

Example: julia> prod_signs([1, 2, 2, -4]) -9

julia> prod_signs([0, 1]) 0

julia> prod_signs([])
"""

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
    if isempty(xs)
        return nothing
    end

    # Calculate the product of signs
    sign_product = 1
    for x in xs
        if x == 0
            sign_product = 0
            break
        elseif x < 0
            sign_product *= -1
        else
            sign_product *= 1
        end
    end

    # Calculate the sum of magnitudes
    magnitude_sum = sum(abs.(xs))

    # Return the product of the sign product and the magnitude sum
    return sign_product * magnitude_sum
end

# Test cases
println(prod_signs([1, 2, 2, -4]))  # Output: -9
println(prod_signs([0, 1]))         # Output: 0
println(prod_signs([]))             # Output: nothing
