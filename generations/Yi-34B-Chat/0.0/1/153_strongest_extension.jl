"""
    strongest_extension(class_name::String, extensions::Vector{String})::String

You will be given the name of a class (a string) and a list of extensions. The
extensions are to be used to load additional classes to the class. The strength
of the extension is as follows: Let CAP be the number of the uppercase letters
in the extension"s name, and let SM be the number of lowercase letters in the
extension"s name, the strength is given by the fraction CAP - SM. You should
find the strongest extension and return a string in this format:
ClassName.StrongestExtensionName.

If there are two or more extensions with the same strength, you should choose
the one that comes first in the list.

# Examples

```jldoctest
julia> strongest_extension("Slices", ["SErviNGSliCes", "Cheese", "StuFfed"])  # "SErviNGSliCes" is the strongest extension since (its strength is -1)
"Slices.SErviNGSliCes"

julia> strongest_extension("my_class", ["AA", "Be", "CC"])
"my_class.AA"
```
"""
function strongest_extension(class_name::String, extensions::Vector{String})::String
    # Initialize the strongest extension with the first extension in the list
    strongest_ext = extensions[1]
    strongest_str = strength(strongest_ext)

    # Loop through the remaining extensions and update the strongest extension
    # if a stronger one is found
    for ext in extensions[2:end]
        current_str = strength(ext)
        if current_str > strongest_str
            strongest_ext = ext
            strongest_str = current_str
        end
    end

    # Return the class name with the strongest extension
    return "$class_name.$strongest_ext"
end

# Helper function to calculate the strength of an extension
function strength(ext::String)
    # Calculate the strength based on the number of uppercase and lowercase
    # letters in the extension name
    cap = count(x -> isuppercase(x), ext)
    sm = count(x -> islowercase(x), ext)
    return cap - sm
end
