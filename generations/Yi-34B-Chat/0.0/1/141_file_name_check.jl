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
    # Check for more than three digits
    if occursin(r"\d{4,}", file_name)
        return "No"
    end

    # Check for exactly one dot
    if occursin(r"\.", file_name) == 0 || occursin(r"\.", file_name) > 1
        return "No"
    end

    # Check for latin alphabet at the beginning of the string before the dot
    if !occursin(r"[a-zA-Z]", file_name[1:findfirst(r"\.", file_name) - 1])
        return "No"
    end

    # Check for valid extensions
    if !occursin(r"\.txt|\.exe|\.dll", file_name)
        return "No"
    end

    return "Yes"
end
