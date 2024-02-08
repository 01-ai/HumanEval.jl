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
    # Check constraints
    @assert 0 <= number <= 1000 "Number of eaten carrots should be between 0 and 1000"
    @assert 0 <= need <= 1000 "Number of needed carrots should be between 0 and 1000"
    @assert 0 <= remaining <= 1000 "Remaining carrots should be between 0 and 1000"

    # Calculate total number of carrots to eat
    total_need = number + need

    # Check if there are enough carrots to satisfy the need
    if total_need <= remaining
        # Eat the needed carrots and return the result
        return [total_need, remaining - total_need]
    else
        # Eat all remaining carrots and return the result
        return [remaining, 0]
    end
end
