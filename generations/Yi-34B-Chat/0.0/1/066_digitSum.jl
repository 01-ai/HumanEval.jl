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
    # Initialize the sum to zero
    sum = 0

    # Loop over each character in the string
    for c in s
        # If the character is a digit (0-9) or an uppercase letter (A-Z), add its
        # ASCII code to the sum
        if c in '0':'9' || c in 'A':'Z'
            # Convert the character to an integer and add it to the sum
            sum += Int(c) - 48 + 65
        end
    end

    # Return the sum
    return sum
end
