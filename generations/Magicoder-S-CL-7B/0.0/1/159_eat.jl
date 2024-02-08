"""
    eat(number::Int, need::Int, remaining::Int)::Vector{Int}

You're a hungry rabbit, and you already have eaten a certain number of carrots,
but now you need to eat more carrots to complete the day's meals. you should
return an array of [ total number of eaten carrots after your meals, the number
of carrots left after your meals ] if there are not enough remaining carrots,
you will eat all remaining carrots, but will still be hungry.

# Variables:

  - `number::Integer`, the number of carrots that you have eaten.
  - `need::Integer`, the number of carrots that you need to eat.
  - `remaining::Integer`, the number of remaining carrots thet exist in stock

# Constrain

  - 0 <= number <= 1000
  - 0 <= need <= 1000
  - 0 <= remaining <= 1000

# Examples

```jldoctest
julia> eat(5, 6, 10)
2-element Vector{Int64}:
 11
  4

julia> eat(4, 8, 9)
2-element Vector{Int64}:
 12
  1

julia> eat(1, 10, 10)
2-element Vector{Int64}:
 11
  0

julia> eat(2, 11, 5)
2-element Vector{Int64}:
 7
 0
```

Have fun :)
"""


function eat(number::Int, need::Int, remaining::Int)::Vector{Int}
    if need > remaining
        return [number + remaining, 0]
    else
        return [number + need, remaining - need]
    end
end
