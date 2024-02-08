"""
    search(numbers::Vector)::Int

You are given a non-empty list of positive integers. Return the greatest integer
that is greater than zero, and has a frequency greater than or equal to the
value of the integer itself. The frequency of an integer is the number of times
it appears in the list. If no such a value exist, return -1.

# Examples

```jldoctest
julia> search([4, 1, 2, 2, 3, 1])
2

julia> search([1, 2, 2, 3, 3, 3, 4, 4, 4])
3

julia> search([5, 5, 4, 4, 4])
-1
```
"""

To implement the `search` function, we will follow these steps:

1. Create a dictionary (or a `Dict` in Julia) to count the frequency of each integer in the list.
2. Iterate over the list of numbers and update the frequency count in the dictionary.
3. Initialize a variable to keep track of the greatest integer that meets the condition (let's call it `max_valid_number`).
4. Iterate over the keys of the dictionary (the unique numbers in the list).
   - For each key, check if the frequency is greater than or equal to the value of the key itself.
   - If the condition is met, update `max_valid_number` if the current key is greater than the current `max_valid_number`.
5. After iterating through all keys, check if `max_valid_number` has been updated from its initial value.
   - If it has been updated, return `max_valid_number`.
   - If it has not been updated, return -1, indicating that no such number exists.

Now, let's write the code for the `search` function.
