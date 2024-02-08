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
    planets = ("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune")
    planet1_index = findfirst(x -> x == planet1, planets)
    planet2_index = findfirst(x -> x == planet2, planets)
    
    if planet1_index == nothing || planet2_index == nothing
        return ()
    end
    
    if planet1_index < planet2_index
        return planets[planet1_index+1:planet2_index-1]
    else
        return planets[planet2_index+1:planet1_index-1]
    end
end
