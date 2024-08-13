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
    length(xs) == 0 && return nothing

    sign_product = 1
    magnitude_sum = 0
    has_zero = false

    for x in xs
        if x == 0
            has_zero = true
            break
        end
        sign_product *= sign(x)
        magnitude_sum += abs(x)
    end

    has_zero ? 0 : sign_product * magnitude_sum
end
