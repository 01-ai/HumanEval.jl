"""
    starts_one_ends(n::Int)::Int

Given a positive integer `n`, return the count of the numbers of n-digit
positive integers that start or end with 1.
"""

### Outline

To implement the `starts_one_ends` function in Julia, we can follow these steps:

1. **Understand the Problem**: We need to count all n-digit numbers that either start or end with 1. This includes numbers like 1, 11, 21, ..., 91 for a single digit, and for two digits, it includes numbers like 10, 11, ..., 19, and any number ending in 1.

2. **Calculate Starting with 1**: For any n-digit number starting with 1, the first digit is fixed as 1. The remaining (n-1) digits can be any digit from 0 to 9. So, there are \(10^{(n-1)}\) possibilities for numbers starting with 1.

3. **Calculate Ending with 1**: Similarly, for any n-digit number ending with 1, the last digit is fixed as 1. The remaining (n-1) digits can be any digit from 0 to 9, giving us \(10^{(n-1)}\) possibilities.

4. **Avoid Double Counting**: Notice that if we simply add the counts from steps 2 and 3, we double-count the number where both the first and last digits are 1 (e.g., 11, 111, etc.). This happens for all n > 1. For n = 1, the number 1 is counted once.

5. **Calculate Total Count**: To get the correct count, we add the counts from steps 2 and 3 and subtract the double-counted numbers. For n > 1, the double-counted numbers are exactly \(10^{(n-2)}\) (since the first and last digits are fixed as 1, and the middle (n-2) digits can be anything). For n = 1, there's no double counting.

6. **Return the Result**: Return the calculated count.

### Code

Based on the outline, here's the Julia function:

