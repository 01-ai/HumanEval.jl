"""
    how_many_times(s::String, sub_s::String)::Int

Find how many times a given substring can be found in the original string. Count
overlaping cases.

# Examples

```jldoctest
julia> how_many_times("", "a")
0

julia> how_many_times("aaa", "a")
3

julia> how_many_times("aaaa", "aa")
3
```
"""
function how_many_times(s::String, sub_s::String)::Int
    # Step 1: Return 0 if sub_s is empty
    if isempty(sub_s)
        return 0
    end
    
    # Step 2: Initialize the counter
    count = 0
    
    # Step 3: Loop through the string
    for i in 1:(length(s) - length(sub_s) + 1)
        # Step 4: Check if the current substring matches sub_s
        if s[i:i+length(sub_s)-1] == sub_s
            # Step 5: Increment the counter
            count += 1
        end
    end
    
    # Step 6: Return the counter
    return count
end
