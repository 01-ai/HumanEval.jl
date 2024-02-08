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
    # Step 1: Initialize the total eaten carrots
    total_eaten = number
    
    # Step 2: Calculate the carrots to eat (already given as `need`)
    
    # Step 3 & 4: Check carrot availability and eat carrots
    if need <= remaining
        # Enough carrots available
        total_eaten += need
        remaining -= need
    else
        # Not enough carrots, eat all remaining
        total_eaten += remaining
        remaining = 0
    end
    
    # Step 5: Return the result
    return [total_eaten, remaining]
end
