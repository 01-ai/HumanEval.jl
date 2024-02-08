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

    # Step 2: Initialize tracking variables
    all_lower = true
    all_upper = true

    # Step 3: Iterate through dictionary keys
    for key in keys(d)
        # Step 3a: Check if the key is a string (implicit in type signature)
        
        # Step 3b: Check case of the key
        if key != lowercase(key)
            all_lower = false
        end
        if key != uppercase(key)
            all_upper = false
        end
        
        # Step 3c: Early termination
        if !all_lower && !all_upper
            return false
        end
    end

    # Step 4: Determine the result
    return all_lower || all_upper
end
