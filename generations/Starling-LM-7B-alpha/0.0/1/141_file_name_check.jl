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
    # Check if the file name contains more than three digits
    if count(x -> x in '0':'9', file_name) > 3
        return "No"
    end

    # Check if the file name contains exactly one dot
    if count(x -> x == '.', file_name) != 1
        return "No"
    end

    # Get the substring before the dot
    before_dot = file_name[1:find(x -> x == '.', file_name) - 1]

    # Check if the substring before the dot is not empty and starts with a latin alphapet letter
    if length(before_dot) == 0 || !(before_dot[1] in 'a':'z' && before_dot[1] in 'A':'Z')
        return "No"
    end

    # Get the substring after the dot
    after_dot = file_name[find(x -> x == '.', file_name) + 1:end]

    # Check if the substring after the dot is one of ["txt", "exe", "dll"]
    if after_dot != "txt" && after_dot != "exe" && after_dot != "dll"
        return "No"
    end

    return "Yes"
end
