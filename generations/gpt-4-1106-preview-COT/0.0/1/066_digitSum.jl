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
    # Step 1: Initialize the sum
    sum = 0
    
    # Step 2: Iterate over each character in the string
    for c in s
        # Step 3: Check if the character is an uppercase letter
        if 'A' <= c <= 'Z'
            # Step 4: Convert to ASCII and add to sum
            sum += Int(c)
        end
    end
    
    # Step 5: Return the sum
    return sum
end
println(digitSum(""))          # Expected output: 0
println(digitSum("abAB"))      # Expected output: 131
println(digitSum("abcCd"))     # Expected output: 67
println(digitSum("helloE"))    # Expected output: 69
println(digitSum("woArBld"))   # Expected output: 131
println(digitSum("aAaaaXa"))   # Expected output: 153
