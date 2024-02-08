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
    # Convert both strings to lowercase and remove whitespaces
    s0 = lowercase(replace(s0, " ", ""))
    s1 = lowercase(replace(s1, " ", ""))

    # Check if the lengths of the two strings are equal
    if length(s0) != length(s1)
        return false
    end

    # Create a frequency dictionary for each string
    freq_dict_s0 = Dict{Char, Int}()
    freq_dict_s1 = Dict{Char, Int}()

    # Count the frequency of each character in the first string
    for char in s0
        if haskey(freq_dict_s0, char)
            freq_dict_s0[char] += 1
        else
            freq_dict_s0[char] = 1
        end
    end

    # Count the frequency of each character in the second string
    for char in s1
        if haskey(freq_dict_s1, char)
            freq_dict_s1[char] += 1
        else
            freq_dict_s1[char] = 1
        end
    end

    # Check if the frequency dictionaries of the two strings are equal
    for (char, freq) in freq_dict_s0
        if freq != freq_dict_s1[char]
            return false
        end
    end

    return true
end
