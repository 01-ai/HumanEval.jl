"""
    check_if_last_char_is_a_letter(s::String)::Bool

Create a function that returns `true` if the last character
of a given string is an alphabetical character and is not
a part of a word, and `false` otherwise.

Note: "word" is a group of characters separated by space.

# Examples

```jldoctest
julia> check_if_last_char_is_a_letter("apple pie")
false

julia> check_if_last_char_is_a_letter("apple pi e")
false

julia> check_if_last_char_is_a_letter("apple pi e ")
false

julia> check_if_last_char_is_a_letter("")
false
```
"""
function check_if_last_char_is_a_letter(s::String)::Bool
    xs = split(s)
    isempty(xs) && return false
    x = xs[end]
    length(x) > 1 && return false
    x = x[begin]

    if 'a' <= lowercase(x) <= 'z'
        all(w -> !occursin(x, w), xs[begin:end-1])
    else
        false
    end
end