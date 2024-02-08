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
    if count(isequal('.'), file_name) != 1
        return "No"
    end

    # Split the file name into name and extension
    parts = split(file_name, ".")
    name, extension = parts[1], parts[2]

    # Check if the name starts with a letter and there are no more than three digits
    if !(isa(name[1], Char) && all(isa(c, Char) ? '0' <= c <= '9' : true, name[2:end]))
        return "No"
    end

    # Check if the extension is one of the allowed ones
    if !(extension in ["txt", "exe", "dll"])
        return "No"
    end

    return "Yes"
end
