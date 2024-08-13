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
    digits_count = count(isdigit, file_name)
    dot_index = findfirst(isequal('.'), file_name)
    
    if digits_count > 3 || dot_index == nothing
        return "No"
    end
    
    first_letter_valid = isletter(file_name[1]) && (file_name[1] ∈ 'a':'z' || file_name[1] ∈ 'A':'Z')
    if !first_letter_valid
        return "No"
    end
    
    pre_dot = file_name[1:dot_index-1]
    post_dot = file_name[dot_index+1:end]
    
    valid_extensions = ["txt", "exe", "dll"]
    extension_valid = post_dot ∈ valid_extensions
    
    if pre_dot == "" || !extension_valid
        return "No"
    end
    
    return "Yes"
end
