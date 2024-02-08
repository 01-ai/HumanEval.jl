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
    for gap in 1:n
        for i in 1:n-gap
            j = i + gap
            if gap == 1
                dp[i, j] = 0
            elseif gap == 2
                dp[i, j] = xs[i] == xs[j] ? 0 : 1
            else
                dp[i, j] = min(dp[i+1, j-1] + (xs[i] == xs[j] ? 0 : 1),
                                dp[i+1, j] + 1,
                                dp[i, j-1] + 1)
            end
        end
    end
    return dp[1, n]
end
