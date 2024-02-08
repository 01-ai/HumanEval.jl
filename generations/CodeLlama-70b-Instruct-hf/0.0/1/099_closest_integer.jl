"""
    closest_integer(value::String)::Int

Create a function that takes a value (string) representing a number and returns
the closest integer to it. If the number is equidistant from two integers, round
it away from zero.

!!! note

    Rounding away from zero means that if the given number is equidistant
    from two integers, the one you should return is the one that is the
    farthest from zero. For example closest_integer("14.5") should
    return 15 and closest_integer("-14.5") should return -15.

# Examples

```jldoctest
julia> closest_integer("10")
10

julia> closest_integer("15.3")
15
```
"""

1.  function closest_integer(value::String)::Int
2.      # Convert the string to a float
3.      num = parse(Float64, value)
4.  
5.      # Check if the number is equidistant from two integers
6.      if num % 1 == 0.5
7.          # Round away from zero
8.          return round(Int, num + 0.5)
9.      else
10.         # Round to the nearest integer
11.         return round(Int, num)
12.     end
13. end
