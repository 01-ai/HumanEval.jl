"""
    sorted_list_sum(xs::Vector{String})::Vector{String}

Write a function that accepts a list of strings as a parameter, deletes the
strings that have odd lengths from it, and returns the resulted list with a
sorted order,

The list is always a list of strings and never an array of numbers, and it may
contain duplicates. The order of the list should be ascending by length of each
word, and you should return the list sorted by that rule. If two words have the
same length, sort the list alphabetically. The function should return a list of
strings in sorted order. You may assume that all words will have the same
length.

# Examples

```jldoctest
julia> sorted_list_sum(["aa", "a", "aaa"])
1-element Vector{String}:
 "aa"

julia> sorted_list_sum(["ab", "a", "aaa", "cd"])
2-element Vector{String}:
 "ab"
 "cd"
```
"""

"""
    sorted_list_sum(xs::Vector{String})::Vector{String}

Write a function that accepts a list of strings as a parameter, deletes the
strings that have odd lengths from it, and returns the resulted list with a
sorted order,

The list is always a list of strings and never an array of numbers, and it may
contain duplicates. The order of the list should be ascending by length of each
word, and you should return the list sorted by that rule. If two words have the
same length, sort the list alphabetically. The function should return a list of
strings in sorted order. You may assume that all words will have the same
length.

# Examples

```jldoctest
julia> sorted_list_sum(["aa", "a", "aaa"])
1-element Vector{String}:
 "aa"

julia> sorted_list_sum(["ab", "a", "aaa", "cd"])
2-element Vector{String}:
 "ab"
 "cd"
```
"""
function sorted_list_sum(xs::Vector{String})::Vector{String}
    # Filter out strings with odd lengths
    filtered_list = filter(x -> length(x) % 2 == 0, xs)

    # Sort the filtered list first by length, then alphabetically
    sorted_list = sort(filtered_list, by = x -> (length(x), x))

    return sorted_list
end
