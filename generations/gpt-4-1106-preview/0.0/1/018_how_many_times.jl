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
    # If the substring is empty or longer than the original string, return 0
    if isempty(sub_s) || length(sub_s) > length(s)
        return 0
    end

    count = 0
    for i in 1:(length(s) - length(sub_s) + 1)
        # Check if the substring matches starting at position i
        if s[i:i+length(sub_s)-1] == sub_s
            count += 1
        end
    end

    return count
end

# Examples
println(how_many_times("", "a")) # Output: 0
println(how_many_times("aaa", "a")) # Output: 3
println(how_many_times("aaaa", "aa")) # Output: 3
