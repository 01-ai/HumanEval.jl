"""
    check_dict_case(d::Dict{String})::Bool

Given a dictionary, return `true` if all keys are strings in lower case or all
keys are strings in upper case, else return `false`. The function should return
`false` is the given dictionary is empty.

# Examples

```jldoctest
julia> check_dict_case(Dict("a" => "apple", "b" => "banana"))
true

julia> check_dict_case(Dict("a" => "apple", "A" => "banana", "B" => "banana"))
false

julia> check_dict_case(Dict("a" => "apple", "8" => "banana", "a" => "apple"))
false

julia> check_dict_case(Dict("Name" => "John", "Age" => "36", "City" => "Houston"))
false

julia> check_dict_case(Dict("STATE" => "NC", "ZIP" => "12345"))
true
```
"""
function check_dict_case(d::Dict{String})::Bool
    # Return false if the dictionary is empty
    isempty(d) && return false

    # Get the case of the first key
    first_key = first(keys(d))
    all_lower = islowercase(first_key)
    all_upper = isuppercase(first_key)

    # Check if all keys have the same case
    for key in keys(d)
        if all_lower && !islowercase(key)
            return false
        elseif all_upper && !isuppercase(key)
            return false
        end
    end

    # If we reach here, all keys have the same case
    return true
end
