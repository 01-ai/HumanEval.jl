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
    lower_case = all(islower, keys(d))
    upper_case = all(isupper, keys(d))
    return lower_case || upper_case
end

# Test cases
@assert check_dict_case(Dict("a" => "apple", "b" => "banana")) == true
@assert check_dict_case(Dict("a" => "apple", "A" => "banana", "B" => "banana")) == false
@assert check_dict_case(Dict("a" => "apple", "8" => "banana", "a" => "apple")) == false
@assert check_dict_case(Dict("Name" => "John", "Age" => "36", "City" => "Houston")) == false
@assert check_dict_case(Dict("STATE" => "NC", "ZIP" => "12345")) == true
