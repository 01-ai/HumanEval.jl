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
    
    product_of_signs = 1
    sum_of_magnitudes = 0
    
    for x in xs
        sign = x == 0 ? 0 : (x > 0 ? 1 : -1)
        product_of_signs *= sign
        sum_of_magnitudes += abs(x)
    end
    
    return sum_of_magnitudes * product_of_signs
end
