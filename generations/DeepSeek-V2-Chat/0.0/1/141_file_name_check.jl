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
    # Check for exactly one dot
    dot_count = count(c -> c == '.', file_name)
    if dot_count != 1
        return "No"
    end

    # Split the file name into parts before and after the dot
    parts = split(file_name, ".")
    prefix = parts[1]
    suffix = parts[2]

    # Check if the prefix is not empty and starts with a letter
    if isempty(prefix) || !isletter(prefix[1])
        return "No"
    end

    # Check if the suffix is one of the allowed extensions
    allowed_suffixes = ["txt", "exe", "dll"]
    if suffix ∉ allowed_suffixes
        return "No"
    end

    # Check for no more than three digits in the prefix
    digit_count = count(c -> isdigit(c), prefix)
    if digit_count > 3
        return "No"
    end

    return "Yes"
end
