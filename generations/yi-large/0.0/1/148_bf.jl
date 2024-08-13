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
function bf(planet1::String, planet2::String)::Tuple
    # Define the list of planets in order from the Sun
    planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]
    
    # Find the indices of the input planets
    index1 = findfirst(isequal(planet1), planets)
    index2 = findfirst(isequal(planet2), planets)
    
    # Check if both planets are in the list
    if index1 === nothing || index2 === nothing
        return ()  # Return an empty tuple if either planet is not found
    end
    
    # Determine the start and end indices for the slice
    start_index = min(index1, index2) + 1
    end_index = max(index1, index2)
    
    # Slice the planet list and return the result as a tuple
    return tuple(planets[start_index:end_index-1]...)
end

# Test the function
println(bf("Jupiter", "Neptune"))
println(bf("Earth", "Mercury"))
println(bf("Mercury", "Uranus"))
