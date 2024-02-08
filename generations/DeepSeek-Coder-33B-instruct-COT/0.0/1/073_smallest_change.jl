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
    dp = zeros(Int, n, n)
    for len in 2:n
        for i in 1:n-len+1
            j = i + len - 1
            if xs[i] == xs[j]
                dp[i, j] = dp[i+1, j-1]
            else
                dp[i, j] = min(dp[i+1, j], dp[i, j-1]) + 1
            end
        end
    end
    return dp[1, n]
end
