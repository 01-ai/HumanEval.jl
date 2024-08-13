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
    # Initialize the strongest extension and its strength
    strongest_extension = ""
    strongest_strength = -Inf

    # Iterate over the extensions
    for extension in extensions
        # Calculate the strength of the current extension
        cap = count(isupper, extension)
        sm = count(islower, extension)
        strength = cap - sm

        # Update the strongest extension if the current one is stronger
        if strength > strongest_strength
            strongest_extension = extension
            strongest_strength = strength
        end
    end

    # Return the class name with the strongest extension
    return class_name * "." * strongest_extension
end

# Example usage
println(strongest_extension("Slices", ["SErviNGSliCes", "Cheese", "StuFfed"]))
# Output: "Slices.SErviNGSliCes"

println(strongest_extension("my_class", ["AA", "Be", "CC"]))
# Output: "my_class.AA"
