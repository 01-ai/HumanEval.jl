"""
file_name_check(file_name::String)::String

Create a function which takes a string representing a file's name, and returns
'Yes' if the the file's name is valid, and returns 'No' otherwise. A file's name
is considered to be valid if and only if all the following conditions are met:

  - There should not be more than three digits ('0'-'9') in the file's name.
  - The file's name contains exactly one dot '.'
  - The substring before the dot should not be empty, and it starts with a
    letter from the latin alphapet ('a'-'z' and 'A'-'Z').
  - The substring after the dot should be one of these: ["txt", "exe", "dll"]

# Examples

```jldoctest
julia> file_name_check("example.txt")
"Yes"

julia> file_name_check("1example.dll")  #  (the name should start with a latin alphapet letter)
"No"
```
"""
function file_name_check(file_name::String)::String
    cond1 = length(filter(isdigit, file_name)) <= 3
    cond2 = length(findall(==('.'), file_name)) == 1

    dot_idx = findfirst('.', file_name)
    cond3 = !isnothing(dot_idx) && dot_idx > 1 && 'a' <= lowercase(file_name[begin]) <= 'z'
    cond4 = !isnothing(dot_idx) && file_name[dot_idx+1:end] in ["txt", "exe", "dll"]

    cond1 && cond2 && cond3 && cond4 ? "Yes" : "No"
end
