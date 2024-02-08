"""
    bf(planet1::String, planet2::String)::NTuple

There are eight planets in our solar system: the closerst to the Sun is Mercury,
the next one is Venus, then Earth, Mars, Jupiter, Saturn, Uranus, Neptune. Write
a function that takes two planet names as strings `planet1` and `planet2`. The
function should return a tuple containing all planets whose orbits are located
between the orbit of `planet1` and the orbit of `planet2`, sorted by the
proximity to the sun. The function should return an empty tuple if `planet1` or
`planet2` are not correct planet names.

# Examples

```jldoctest
julia> bf("Jupiter", "Neptune")
("Saturn", "Uranus")

julia> bf("Earth", "Mercury")
("Venus",)

julia> bf("Mercury", "Uranus")
("Venus", "Earth", "Mars", "Jupiter", "Saturn")
```
"""
function bf(planet1::String, planet2::String)::NTuple
    # Define the order of the planets from the Sun
    planets_order = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]
    
    # Check if both planets are valid
    if !(planet1 in planets_order) || !(planet2 in planets_order)
        return ()
    end
    
    # Get the indices of the planets
    index1 = findfirst(isequal(planet1), planets_order)
    index2 = findfirst(isequal(planet2), planets_order)
    
    # Ensure index1 is less than index2 for correct ordering
    if index1 > index2
        index1, index2 = index2, index1
    end
    
    # Return the planets between the two indices, excluding the start and end planets
    return tuple(planets_order[(index1 + 1):(index2 - 1)]...)
end

# Examples
println(bf("Jupiter", "Neptune")) # Should print ("Saturn", "Uranus")
println(bf("Earth", "Mercury"))   # Should print ("Venus",)
println(bf("Mercury", "Uranus"))  # Should print ("Venus", "Earth", "Mars", "Jupiter", "Saturn")
