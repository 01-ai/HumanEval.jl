"""
    smallest_change(xs::Vector{Int})::Int

Given an array arr of integers, find the minimum number of elements that need to
be changed to make the array palindromic. A palindromic array is an array that
is read the same backwards and forwards. In one change, you can change one
element to any other element.

# Examples

```jldoctest
julia> smallest_change([1, 2, 3, 5, 4, 7, 9, 6])
4

julia> smallest_change([1, 2, 3, 4, 3, 2, 2])
1

julia> smallest_change([1, 2, 3, 2, 1])
0
```
"""
function smallest_change(xs::Vector{Int})::Int
    n = length(xs)
    if n == 1
        return 0
    end

    # Create a frequency map of elements in the array
    freq_map = Dict{Int, Int}()
    for x in xs
        if haskey(freq_map, x)
            freq_map[x] += 1
        else
            freq_map[x] = 1
        end
    end

    # Count the number of elements that need to be changed
    changes = 0
    for i in 1:div(n, 2)
        if xs[i] != xs[n - i + 1]
            if haskey(freq_map, xs[n - i + 1]) && freq_map[xs[n - i + 1]] > 0
                freq_map[xs[n - i + 1]] -= 1
            elseif haskey(freq_map, xs[i]) && freq_map[xs[i]] > 1
                freq_map[xs[i]] -= 1
            else
                changes += 1
            end
        end
    end

    return changes
end
