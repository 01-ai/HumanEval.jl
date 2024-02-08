"""
    fizz_buzz(n::Int)

Return the number of times the digit 7 appears in integers less than `n` which are
divisible by 11 or 13.

# Examples

```jldoctest
julia> fizz_buzz(50)
0

julia> fizz_buzz(78)
2

julia> fizz_buzz(79)
3
```
"""
function fizz_buzz(n::Int)
    ns = []
    for i = 1:n-1
        if i % 11 == 0 || i % 13 == 0
            push!(ns, i)
        end
    end
    ans = 0
    for x in ns
        for c in string(x)
            ans += (c == '7')
        end
    end
    return ans
end
