"""
    specialFilter(nums::Vector{Int})::Int

Write a function that takes an array of numbers as input and returns the number
of elements in the array that are greater than 10 and both first and last digits
of a number are odd (1, 3, 5, 7, 9).

# Example

```jldoctest
julia> specialFilter([15, -73, 14, -15])
1

julia> specialFilter([33, -2, -3, 45, 21, 109])
2
```
"""

To implement the `specialFilter` function, we will follow these steps:

1. Define the function `specialFilter` that takes a vector of integers as its argument.
2. Initialize a counter to keep track of the numbers that meet the criteria.
3. Iterate over each number in the input vector.
4. For each number, check if it is greater than 10.
5. If the number is greater than 10, convert it to a string to easily access the first and last digits.
6. Check if both the first and last characters of the string representation are odd digits.
7. If the number meets all the criteria, increment the counter.
8. After iterating through all numbers, return the counter.

Now, let's write the code for the `specialFilter` function.
