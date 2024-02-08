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
    # Check if there are more than three digits in the file name
    if count(isdigit, file_name) > 3
        return "No"
    end

    # Check if the file name contains exactly one dot
    if count(==('.'), file_name) != 1
        return "No"
    end

    # Split the file name into two parts before and after the dot
    parts = split(file_name, ".")
    if length(parts) != 2
        return "No"
    end

    # Check if the substring before the dot starts with a letter and is not empty
    if !isletter(parts[1][1]) || isempty(parts[1])
        return "No"
    end

    # Check if the substring after the dot is one of the allowed extensions
    if !(parts[2] in ["txt", "exe", "dll"])
        return "No"
    end

    # If all checks pass, the file name is valid
    return "Yes"
end
