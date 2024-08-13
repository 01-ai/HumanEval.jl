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
    # Define the valid extensions
    valid_extensions = ["txt", "exe", "dll"]
    
    # Split the filename by the dot
    parts = split(file_name, ".")
    
    # Check if there is exactly one dot in the filename
    if length(parts) != 2
        return "No"
    end
    
    # Check if the name starts with a latin alphabet letter
    if !isalpha(parts[1][1])
        return "No"
    end
    
    # Check if the number of digits is not more than three
    if sum(isdigit, file_name) > 3
        return "No"
    end
    
    # Check if the extension is valid
    if !(parts[2] in valid_extensions)
        return "No"
    end
    
    # If all checks pass, the filename is valid
    return "Yes"
end
