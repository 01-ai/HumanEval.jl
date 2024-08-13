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
    # Check if the file name contains exactly one dot
    if count(==('.'), file_name) != 1
        return "No"
    end
    
    # Split the file name into the part before and after the dot
    parts = split(file_name, '.')
    if length(parts) != 2
        return "No"
    end
    
    before_dot, after_dot = parts[1], parts[2]
    
    # Check if the substring before the dot is not empty and starts with a letter
    if isempty(before_dot) || !startswith(before_dot, r"^[a-zA-Z]")
        return "No"
    end
    
    # Check if the substring after the dot is one of the allowed extensions
    valid_extensions = ["txt", "exe", "dll"]
    if after_dot ∉ valid_extensions
        return "No"
    end
    
    # Check if there are more than three digits in the file name
    digit_count = count(c -> isdigit(c), file_name)
    if digit_count > 3
        return "No"
    end
    
    return "Yes"
end

# Examples
println(file_name_check("example.txt"))  # "Yes"
println(file_name_check("1example.dll"))  # "No"
