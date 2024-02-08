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
    # Step 1: Define the order of planets
    planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]
    
    # Step 2: Validate Input
    if !(planet1 in planets) || !(planet2 in planets)
        return ()
    end
    
    # Step 3: Find Positions
    pos1 = findfirst(==(planet1), planets)
    pos2 = findfirst(==(planet2), planets)
    
    # Step 4: Determine Range
    if pos1 < pos2
        result = planets[pos1+1:pos2-1]
    else
        result = planets[pos2+1:pos1-1]
    end
    
    # Step 5: Return Result
    return tuple(result...)
end
