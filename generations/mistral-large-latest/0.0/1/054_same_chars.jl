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
    """
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
    dict0 = Dict{Char, Int}()
    dict1 = Dict{Char, Int}()

    for char in s0
        if haskey(dict0, char)
            dict0[char] += 1
        else
            dict0[char] = 1
        end
    end

    for char in s1
        if haskey(dict1, char)
            dict1[char] += 1
        else
            dict1[char] = 1
        end
    end

    return dict0 == dict1
end
