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
    # Function to calculate the strength of an extension
    function calculate_strength(extension::String)
        CAP = count(isuppercase, extension)
        SM = count(islowercase, extension)
        return CAP - SM
    end
    
    # Initialize variables to track the strongest extension
    max_strength = -Inf
    strongest_ext = ""
    
    # Iterate over each extension to find the strongest one
    for ext in extensions
        strength = calculate_strength(ext)
        if strength > max_strength
            max_strength = strength
            strongest_ext = ext
        end
    end
    
    # Return the result in the required format
    return class_name * "." * strongest_ext
end