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
    # Step 1: Check if the dictionary is empty
    if isempty(d)
        return false
    end

    # Step 2: Initialize boolean variables
    all_lower = true
    all_upper = true

    # Step 3: Iterate over the keys of the dictionary
    for key in keys(d)
        # Step 4: Check if the key is a string (should always be true based on Dict{String} type)
        if !isa(key, String)
            return false
        end

        # Step 5: Check if the key is in lower case
        if key != lowercase(key)
            all_lower = false
        end

        # Step 6: Check if the key is in upper case
        if key != uppercase(key)
            all_upper = false
        end
    end

    # Step 7 and 8: Return true if either all_lower or all_upper is true, else false
    return all_lower || all_upper
end
