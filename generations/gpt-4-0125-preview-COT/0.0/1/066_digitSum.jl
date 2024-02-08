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
    # Step 1: Initialize sum variable
    sum = 0
    
    # Step 2: Iterate through each character in the string
    for char in s
        # Step 3 & 4: Check if a character is uppercase and add its ASCII value to sum
        if isuppercase(char)
            sum += Int(char)
        end
    end
    
    # Step 5: Return the sum
    return sum
end
