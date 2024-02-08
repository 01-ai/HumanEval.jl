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
function get_positive(xs::Vector)
    # 1. Initialize an empty vector `positive_xs` to store the positive numbers.
    positive_xs = Int[]

    # 2. Iterate over each element `x` in the input vector `xs`.
    for x in xs
        # 3. Check if `x` is positive (greater than 0).
        if x > 0
            # 4. If `x` is positive, push it to the `positive_xs` vector.
            push!(positive_xs, x)
        end
    end

    # 5. After the loop, return the `positive_xs` vector.
    return positive_xs
end
