"""
    same_chars(s0::String, s1::String)::Bool

Check if two words have the same characters.

# Examples

```jldoctest
julia> same_chars("eabcdzzzz", "dddzzzzzzzddeddabc")
true

julia> same_chars("abcd", "dddddddabc")
true

julia> same_chars("dddddddabc", "abcd")
true

julia> same_chars("eabcd", "dddddddabc")
false

julia> same_chars("abcd", "dddddddabce")
false

julia> same_chars("eabcdzzzz", "dddzzzzzzzddddabc")
false
```
"""
function same_chars(s0::String, s1::String)::Bool
    # Create a dictionary to count the frequency of each character in s0
    freq_s0 = Dict{Char, Int}()
    for c in s0
        freq_s0[c] = get(freq_s0, c, 0) + 1
    end

    # Check if the frequency of each character in s1 is the same as in s0
    for c in s1
        if !haskey(freq_s0, c) || freq_s0[c] == 0
            return false
        else
            freq_s0[c] -= 1
        end
    end

    # If all characters in s1 have the same frequency as in s0, return true
    return all(v -> v == 0, values(freq_s0))
end
