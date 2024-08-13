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
    for char in s
        if 'A' <= char <= 'Z'
            sum += Int(char)
        end
    end
    return sum
end
println(digitSum(""))          # Output: 0
println(digitSum("abAB"))      # Output: 131
println(digitSum("abcCd"))     # Output: 67
println(digitSum("helloE"))    # Output: 69
println(digitSum("woArBld"))   # Output: 131
println(digitSum("aAaaaXa"))   # Output: 153
