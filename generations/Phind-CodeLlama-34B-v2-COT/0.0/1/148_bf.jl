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



# Step-by-step outline:
# 1. Create a list of all the planets in the solar system in the correct order.
# 2. Check if `planet1` and `planet2` are in the list of planets.
# 3. If they are, find the index of `planet1` and `planet2` in the list.
# 4. If `planet1` is closer to the Sun than `planet2`, swap the two.
# 5. Get the sublist of planets located between `planet1` and `planet2` (excluding `planet1` and `planet2`).
# 6. Return the sublist as a tuple.

# Code:
function bf(planet1::String, planet2::String)::NTuple
    planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]

    if !(planet1 in planets) || !(planet2 in planets)
        return ()
    end

    planet1_index = findfirst(isequal(planet1), planets)
    planet2_index = findfirst(isequal(planet2), planets)

    if planet1_index > planet2_index
        planet1_index, planet2_index = planet2_index, planet1_index
    end

    return Tuple(planets[planet1_index+1:planet2_index-1])
end
