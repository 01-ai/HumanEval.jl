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

    # Check if all keys are either in lower case or upper case
    all_lower = all(k -> k == lowercase(k), keys(d))
    all_upper = all(k -> k == uppercase(k), keys(d))

    # Return true if either all keys are lower case or all keys are upper case
    return all_lower || all_upper
end

# Examples
println(check_dict_case(Dict("a" => "apple", "b" => "banana"))) # true
println(check_dict_case(Dict("a" => "apple", "A" => "banana", "B" => "banana"))) # false
println(check_dict_case(Dict("a" => "apple", "8" => "banana", "a" => "apple"))) # false
println(check_dict_case(Dict("Name" => "John", "Age" => "36", "City" => "Houston"))) # false
println(check_dict_case(Dict("STATE" => "NC", "ZIP" => "12345"))) # true
