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
    # Check if there is exactly one dot in the file name
    if count(c -> c == '.', file_name) != 1
        return "No"
    end

    # Split the file name into the name and extension parts
    name_part, extension_part = split(file_name, '.', limit=2)

    # Check if the name part is not empty and starts with a latin alphabet letter
    if isempty(name_part) || !occursin(r"^[a-zA-Z]", name_part)
        return "No"
    end

    # Check if the extension part is one of the allowed extensions
    if extension_part ∉ ["txt", "exe", "dll"]
        return "No"
    end

    # Check if there are more than three digits in the name part
    if length(filter(c -> isdigit(c), name_part)) > 3
        return "No"
    end

    # If all checks pass, the file name is valid
    return "Yes"
end
