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
    if n == 0
        return 0
    end

    # Find the middle element(s) of the array
    if n % 2 == 0
        mid = n ÷ 2
    else
        mid = (n + 1) ÷ 2
    end

    # Initialize a dictionary to store the frequency of each element in the first half of the array
    freq = Dict{Int, Int}()
    for i = 1:mid
        freq[xs[i]] = get(freq, xs[i], 0) + 1
    end

    # Initialize the number of changes required
    changes = 0

    # Iterate through the second half of the array
    for i = mid+1:n
        # If the current element is not present in the first half, increase the number of changes
        if !haskey(freq, xs[i])
            changes += 1
        else
            # If the current element is present in the first half, decrease its frequency
            freq[xs[i]] -= 1
            # If the frequency becomes zero, remove the element from the dictionary
            if freq[xs[i]] == 0
                delete!(freq, xs[i])
            end
        end
    end

    return changes
end
