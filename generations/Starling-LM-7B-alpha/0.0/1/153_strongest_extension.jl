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
    # Calculate the strength of each extension
    strengths = [(CAP - SM, index) for index in eachindex(extensions) for (CAP, SM) in enumerate(extensions)]

    # Sort the strengths in descending order
    sorted_strengths = sort(strengths, rev=true)

    # Get the strongest extension
    strongest_extension = extensions[sorted_strengths[1].index]

    # Return the result
    return string(class_name, ".", strongest_extension)
end
