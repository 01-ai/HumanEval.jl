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
    planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]
    
    # Find the indices of the given planets
    idx1 = findfirst(==("$(planet1)"), planets)
    idx2 = findfirst(==("$(planet2)"), planets)
    
    # Return an empty tuple if either planet name is incorrect
    if idx1 === nothing || idx2 === nothing
        return ()
    end
    
    # Ensure idx1 is less than idx2 for correct slicing
    if idx1 > idx2
        idx1, idx2 = idx2, idx1
    end
    
    # Get the planets between the two indices
    between_planets = planets[idx1+1:idx2-1]
    
    return tuple(between_planets...)
end
