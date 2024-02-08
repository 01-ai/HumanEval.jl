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
    if isempty(d)
        return false
    end

    lower_case = true
    upper_case = true

    for key in keys(d)
        if !all(islower, key)
            lower_case = false
        end
        if !all(isupper, key)
            upper_case = false
        end
    end

    return lower_case || upper_case
end
