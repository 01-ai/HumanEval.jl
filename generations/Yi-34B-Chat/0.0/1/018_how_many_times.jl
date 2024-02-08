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
    # Initialize count to 0
    count = 0

    # Loop through the original string
    for i in 1:length(s)
        # Check if the substring exists at the current position
        if s[i:i+length(sub_s)-1] == sub_s
            # Increment the count
            count += 1
        end
    end

    return count
end
