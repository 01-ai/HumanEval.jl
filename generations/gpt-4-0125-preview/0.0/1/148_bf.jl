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
    # Ordered list of planets by their proximity to the Sun
    planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]
    
    # Find indices of the given planets
    index1 = findfirst(isequal(planet1), planets)
    index2 = findfirst(isequal(planet2), planets)
    
    # Check if both planets were found
    if isnothing(index1) || isnothing(index2)
        return ()
    end
    
    # Ensure index1 is less than index2 for correct slicing
    if index1 > index2
        index1, index2 = index2, index1
    end
    
    # Return the planets between the given two, excluding the start and end planets
    return Tuple(planets[index1+1:index2-1])
end
