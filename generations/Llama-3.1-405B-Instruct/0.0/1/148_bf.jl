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
    # Define the order of planets in our solar system
    planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]
    
    # Check if both planet names are correct
    if !(planet1 in planets) || !(planet2 in planets)
        return ()
    end
    
    # Find the indices of the two planets
    idx1 = findfirst(isequal(planet1), planets)
    idx2 = findfirst(isequal(planet2), planets)
    
    # Swap indices if planet1 is farther from the Sun than planet2
    if idx1 > idx2
        idx1, idx2 = idx2, idx1
    end
    
    # Return the planets between the two indices (exclusive)
    return tuple(planets[idx1+1:idx2-1]...)
end
