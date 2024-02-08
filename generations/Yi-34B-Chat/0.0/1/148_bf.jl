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
    # Check if the input planets are valid
    valid_planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]
    if planet1 ∉ valid_planets || planet2 ∉ valid_planets
        return ()
    end

    # Sort the planets by their distance from the sun
    sorted_planets = sort(valid_planets, by=x -> parse(Float64, replace(x, " " => "")))

    # Find the indices of the input planets in the sorted list
    planet1_index = findfirst(x -> x == planet1, sorted_planets)
    planet2_index = findfirst(x -> x == planet2, sorted_planets)

    # Calculate the range of planets between the two input planets
    start_index = min(planet1_index, planet2_index)
    end_index = max(planet1_index, planet2_index)

    # Return the planets in the range
    return tuple(sorted_planets[start_index:end_index])
end
