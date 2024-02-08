"""
    fruit_distribution(s::String, n::Int)::Int

In this task, you will be given a string that represents a number of apples and
oranges that are distributed in a basket of fruit this basket contains apples,
oranges, and mango fruits. Given the string that represents the total number of
the oranges and apples and an integer that represent the total number of the
fruits in the basket return the number of the mango fruits in the basket.

# Examples

```jldoctest
julia> fruit_distribution("5 apples and 6 oranges", 19) # 19 - 5 - 6
8

julia> fruit_distribution("0 apples and 1 oranges", 3)  # 3 - 0 - 1
2

julia> fruit_distribution("2 apples and 3 oranges", 100) # 100 - 2 - 3
95

julia> fruit_distribution("100 apples and 1 oranges", 120) # 120 - 100 - 1
19
```
"""
function fruit_distribution(s::String, n::Int)::Int
    # Extract the number of apples and oranges from the string
    apples = parse(Int, match(r"(\d+) apples", s).captures[1])
    oranges = parse(Int, match(r"(\d+) oranges", s).captures[1])
    
    # Calculate the number of mango fruits
    mangoes = n - apples - oranges
    
    return mangoes
end
