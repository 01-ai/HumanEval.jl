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

### Step-by-Step Outline

1. **Define a mapping** from number words ("zero" to "nine") to their corresponding numeric values (0 to 9). This will be used to convert the input string into a list of numeric values that can be easily sorted.

2. **Split the input string** into a list of words. The input string is space-delimited, so splitting by spaces will give us the individual number words.

3. **Convert the list of number words to numeric values** using the mapping defined in step 1. This step transforms the problem from sorting words to sorting numbers, which is straightforward.

4. **Sort the list of numeric values**. This can be done using Julia's built-in sorting functions.

5. **Convert the sorted list of numeric values back to number words** using the inverse of the mapping defined in step 1. This step transforms the sorted numeric values back into the format expected for the output.

6. **Join the sorted list of number words into a single string**. The output should be a space-delimited string of number words, so we'll join the list with spaces.

7. **Return the sorted string**.

### Julia Code Implementation

