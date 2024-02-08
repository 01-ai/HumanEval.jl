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
    # Step 1: Initialize a counter
    count = 0

    # Step 2: Check for empty string or substring
    if isempty(s) || isempty(sub_s)
        return 0
    end

    # Step 3: Search for the substring in the string
    for i in 1:length(s) - length(sub_s) + 1
        if s[i:i+length(sub_s)-1] == sub_s
            count += 1
        end
    end

    # Step 4: Return the counter
    return count
end
