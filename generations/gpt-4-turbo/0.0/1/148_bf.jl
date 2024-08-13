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
    # List of planets in order from the Sun
    planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]
    
    # Check if both planets are valid
    if planet1 ∉ planets || planet2 ∉ planets
        return ()
    end
    
    # Get indices of the planets
    idx1 = findfirst(==(planet1), planets)
    idx2 = findfirst(==(planet2), planets)
    
    # Determine the range between the two planets
    if idx1 < idx2
        return tuple(planets[idx1+1:idx2-1]...)
    else
        return tuple(planets[idx2+1:idx1-1]...)
    end
end
