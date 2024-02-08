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
        if 'A' <= c <= 'Z'  # Check if the character is an uppercase letter
            sum += Int(c)  # Add the ASCII value of the character to the sum
        end
    end
    return sum
end

# Examples
println(digitSum(""))  # 0
println(digitSum("abAB"))  # 131
println(digitSum("abcCd"))  # 67
println(digitSum("helloE"))  # 69
println(digitSum("woArBld"))  # 131
println(digitSum("aAaaaXa"))  # 153
