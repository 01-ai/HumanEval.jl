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
    # Check if the file name matches the pattern
    # 1. Starts with a letter
    # 2. Contains exactly one dot
    # 3. The extension is one of "txt", "exe", or "dll"
    # 4. There are not more than three digits in the name

    # Use a regular expression to match the file name pattern
    pattern = r"^[a-zA-Z]([a-zA-Z0-9]*\.)?[a-zA-Z0-9]*\.(txt|exe|dll)$"

    # Check if the file name matches the pattern
    if occursin(pattern, file_name)
        # Split the file name into the base name and extension
        base_name, extension = splitext(file_name)
        
        # Check if there are not more than three digits in the base name
        if count(==('.'), base_name) > 1
            return "No"
        end
        
        # Check if the extension is one of "txt", "exe", or "dll"
        if extension ≠ ".txt" && extension ≠ ".exe" && extension ≠ ".dll"
            return "No"
        end
        
        # Check if the base name starts with a letter
        if !(base_name[1] in ['a'..'z', 'A'..'Z'])
            return "No"
        end
        
        # All checks passed, return "Yes"
        return "Yes"
    else
        return "No"
    end
end

# Example usage
println(file_name_check("example.txt"))  # Should return "Yes"
println(file_name_check("1example.dll")) # Should return "No" (the name should start with a latin alphapet letter)
