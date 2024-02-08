"""
    get_positive(xs::Vector)

Return only positive numbers in the list.

# Examples

```jldoctest
julia> get_positive([-1, 2, -4, 5, 6])
3-element Vector{Int64}:
 2
 5
 6

julia> get_positive([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])
7-element Vector{Int64}:
   5
   3
   2
   3
   9
 123
   1
```
"""
function get_positive(xs::Vector{Int})
    # Filter the vector to include only positive numbers
    positive_xs = filter(x -> x > 0, xs)
    return positive_xs
end

# Example usage
println(get_positive([-1, 2, -4, 5, 6]))
println(get_positive([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10]))