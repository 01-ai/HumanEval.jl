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
    # Check if the dictionary is empty
    if isempty(d)
        return false
    end

    # Initialize variables to keep track of case types
    all_lower = true
    all_upper = true

    for key in keys(d)
        # If any character is not a letter, return false
        if any(!isletter, key)
            return false
        end

        # Check if the key is not all lower or not all upper
        if key != lowercase(key)
            all_lower = false
        end
        if key != uppercase(key)
            all_upper = false
        end

        # If neither all_lower nor all_upper holds, return false
        if !all_lower && !all_upper
            return false
        end
    end

    # If all keys are either all lower or all upper, return true
    return true
end
