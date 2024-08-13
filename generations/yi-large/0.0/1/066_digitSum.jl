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
        if isuppercase(char)
            sum += Int(char)
        end
    end
    return sum
end

# Test cases
println(digitSum(""))           # Expected: 0
println(digitSum("abAB"))       # Expected: 131
println(digitSum("abcCd"))      # Expected: 67
println(digitSum("helloE"))     # Expected: 69
println(digitSum("woArBld"))    # Expected: 131
println(digitSum("aAaaaXa"))    # Expected: 153
