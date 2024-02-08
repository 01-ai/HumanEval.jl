"""
    even_odd_count(num::Int)::Tuple{Int, Int}

Given an integer, return a tuple that has the number of even and odd digits
respectively.

# Examples

```jldoctest
julia> even_odd_count(-12)
(1, 1)

julia> even_odd_count(123)
(1, 2)
```
"""
function even_odd_count(num::Int)::Tuple{Int, Int}
    even_count = 0
    odd_count = 0
    
    # Step 2: Handle negative numbers
    num = abs(num)
    
    # Step 3: Convert the number to a string
    num_str = string(num)
    
    # Step 4: Loop through each character in the string
    for digit_char in num_str
        # Step 5: Convert character to integer
        digit = parse(Int, digit_char)
        
        # Step 6: Check if the digit is even or odd and increment the counters
        if digit % 2 == 0
            even_count += 1
        else
            odd_count += 1
        end
    end
    
    # Step 7: Return the tuple with even and odd counts
    return (even_count, odd_count)
end
println(even_odd_count(-12)) # Expected output: (1, 1)
println(even_odd_count(123)) # Expected output: (1, 2)
