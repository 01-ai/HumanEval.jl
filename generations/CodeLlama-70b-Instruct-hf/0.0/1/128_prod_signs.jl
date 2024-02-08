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
    if length(xs) == 0
        return nothing
    end
    prod = 1
    sum = 0
    for x in xs
        if x < 0
            prod *= -1
        end
        sum += abs(x)
    end
    return prod * sum
end
