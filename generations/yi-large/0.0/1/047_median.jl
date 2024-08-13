"""
    median(l::Vector)

Return median of elements in the list l.

# Examples

```jldoctest
julia> median([3, 1, 2, 4, 5])
3

julia> median([-10, 4, 6, 1000, 10, 20])
8.0
```
"""
function median(l::Vector{T}) where {T <: Real}
    n = length(l)
    if n == 0
        throw(ArgumentError("median of an empty array is undefined"))
    end

    sorted_l = sort(l)
    mid = div(n, 2)

    if isodd(n)
        return sorted_l[mid + 1]
    else
        return (sorted_l[mid] + sorted_l[mid + 1]) / 2
    end
end

# Test cases
println(median([3, 1, 2, 4, 5])) # Expected output: 3
println(median([-10, 4, 6, 1000, 10, 20])) # Expected output: 8.0
