"""
    compare(game::Vector{Int}, guess::Vector{Int})::Vector{Int}

I think we all remember that feeling when the result of some long-awaited event
is finally known. The feelings and thoughts you have at that moment are
definitely worth noting down and comparing. Your task is to determine if a
person correctly guessed the results of a number of matches. You are given two
arrays of scores and guesses of equal length, where each index shows a match.
Return an array of the same length denoting how far off each guess was. If they
have guessed correctly, the value is 0, and if not, the value is the absolute
difference between the guess and the score.

# Examples

```jldoctest
julia> compare([1, 2, 3, 4, 5, 1], [1, 2, 3, 4, 2, -2])
6-element Vector{Int64}:
 0
 0
 0
 0
 3
 3

julia> compare([0, 5, 0, 0, 0, 4], [4, 1, 1, 0, 0, -2])
6-element Vector{Int64}:
 4
 4
 1
 0
 0
 6
```
"""
function compare(game::Vector{Int}, guess::Vector{Int})::Vector{Int}
    # Step 2: Initialize the result vector
    result = Vector{Int}(undef, length(game))
    
    # Step 3: Iterate over the indices of the game vector
    for i in 1:length(game)
        # Step 4: Calculate the absolute difference
        difference = abs(game[i] - guess[i])
        
        # Step 5: Append the difference to the result vector
        result[i] = difference
    end
    
    # Step 6: Return the result vector
    return result
end