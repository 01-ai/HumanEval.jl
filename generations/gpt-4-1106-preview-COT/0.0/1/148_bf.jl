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
    # Step 2: List of planets in order from the Sun
    planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]
    
    # Step 3: Check if both planets are valid
    if !(planet1 in planets && planet2 in planets)
        return ()
    end
    
    # Step 4: Find indices of the planets
    index1 = findfirst(isequal(planet1), planets)
    index2 = findfirst(isequal(planet2), planets)
    
    # Step 5: Determine the range of indices
    start_index, end_index = min(index1, index2), max(index1, index2)
    
    # Step 6: Slice the list to get the planets in between
    in_between_planets = planets[start_index+1:end_index-1]
    
    # Step 7: Return the result as a tuple
    return tuple(in_between_planets...)
end
