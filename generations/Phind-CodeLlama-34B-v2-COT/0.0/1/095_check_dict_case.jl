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
function check_dict_case(d::Dict{String, String})::Bool
    # Check if the dictionary is empty
    if isempty(d)
        return false
    end

    # Get the first key from the dictionary
    first_key = first(keys(d))

    # Check the case of the first key
    if islowercase(first_key)
        # Iterate through the rest of the keys and check if they are also lower case
        for key in keys(d)
            if !islowercase(key)
                return false
            end
        end
    elseif isuppercase(first_key)
        # Iterate through the rest of the keys and check if they are also upper case
        for key in keys(d)
            if !isuppercase(key)
                return false
            end
        end
    end

    # If all keys have the same case as the first key, return true
    return true
end
