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
    if isempty(d)
        return false
    end

    # Extract all keys from the dictionary
    keys_list = collect(keys(d))

    # Check if all keys are in lower case
    all_lower = all(key -> key == lowercase(key), keys_list)
    
    # Check if all keys are in upper case
    all_upper = all(key -> key == uppercase(key), keys_list)

    # Return true if all keys are either all lower case or all upper case
    return all_lower || all_upper
end
