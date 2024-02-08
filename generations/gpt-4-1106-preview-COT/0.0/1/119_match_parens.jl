"""
    match_parens(lst::Vector{String})::String

You are given a list of two strings, both strings consist of open parentheses
"(" or close parentheses ")" only. Your job is to check if it is possible to
concatenate the two strings in some order, that the resulting string will be
good. A string S is considered to be good if and only if all parentheses in S
are balanced. For example: the string "(())()" is good, while the string "())"
is not. Return "Yes" if there"s a way to make a good string, and return "No"
otherwise.

# Examples

```jldoctest
julia> match_parens(["()(", ")"])
"Yes"

julia> match_parens([")", ")"])
"No"
```
"""

To implement the `match_parens` function, we will follow these steps:

1. Check if the input `lst` is a list of exactly two strings. If not, return "No".
2. For each permutation of the two strings (there are only two permutations since there are two strings), do the following:
   a. Concatenate the strings in the order of the permutation.
   b. Check if the concatenated string is balanced.
      - Initialize a counter to 0.
      - Iterate through each character in the concatenated string.
      - If the character is an open parenthesis "(", increment the counter.
      - If the character is a close parenthesis ")", decrement the counter.
      - If at any point the counter becomes negative, the string is not balanced, so break the loop.
      - If the counter is 0 at the end of the iteration, the string is balanced.
   c. If the concatenated string is balanced, return "Yes".
3. If none of the permutations result in a balanced string, return "No".

Now, let's write the code for the `match_parens` function.
