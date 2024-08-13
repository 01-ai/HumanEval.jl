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

    # Split the file name into name and extension
    name, ext = split(file_name, '.')

    # Check if the name part is not empty and starts with a letter
    if isempty(name) || !isletter(name[1])
        return "No"
    end

    # Check if the extension is valid
    if !(ext in ["txt", "exe", "dll"])
        return "No"
    end

    # Count the number of digits in the file name
    digit_count = count(isdigit, file_name)
    if digit_count > 3
        return "No"
    end

    # If all checks pass, return "Yes"
    return "Yes"
end
