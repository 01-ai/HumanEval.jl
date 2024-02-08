"""
    sort_numbers(numbers::String)::String

Input is a space-delimited string of numberals from "zero" to "nine".  Valid
choices are "zero", "one", "two", "three", "four", "five", "six", "seven",
"eight" and "nine".  Return the string with numbers sorted from smallest to
largest

# Examples

```jldoctest
julia> sort_numbers("three one five")
"one three five"
```
"""

To implement the `sort_numbers` function, we can follow these steps:

1. Define a dictionary (or associative array) that maps the string representation of numbers to their corresponding integer values. This will help us to sort the numbers easily.
2. Split the input string into an array of words (number names) using space as the delimiter.
3. Convert each word in the array to its corresponding integer value using the dictionary created in step 1.
4. Sort the array of integers.
5. Convert the sorted integers back to their string representation using the inverse of the dictionary from step 1.
6. Join the sorted string representations with spaces to form the final sorted string.
7. Return the sorted string.

Now, let's write the code for the `sort_numbers` function following the outline above.
