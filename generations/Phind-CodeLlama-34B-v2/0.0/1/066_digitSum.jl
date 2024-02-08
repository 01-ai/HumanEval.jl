"""
    digitSum(s::String)::Int

Write a function that takes a string as input and returns the sum of the upper
characters only ASCII codes.

# Examples

```jldoctest
julia> digitSum("")
0

julia> digitSum("abAB")
131

julia> digitSum("abcCd")
67

julia> digitSum("helloE")
69

julia> digitSum("woArBld")
131

julia> digitSum("aAaaaXa")
153
```
"""
function digitSum(s::String)::Int
    sum = 0
    for c in s
        if isuppercase(c)
            sum += Int(c)
        end
    end
    return sum
end
@assert digitSum("") == 0
@assert digitSum("abAB") == 131
@assert digitSum("abcCd") == 67
@assert digitSum("helloE") == 69
@assert digitSum("woArBld") == 131
@assert digitSum("aAaaaXa") == 153
