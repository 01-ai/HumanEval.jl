"""
    starts_one_ends(n::Int)::Int

Given a positive integer `n`, return the count of the numbers of n-digit
positive integers that start or end with 1.
"""

To solve this problem, we need to count the number of n-digit integers that either start or end with the digit '1'. We can break this down into two parts:

1. Count the numbers that start with 1.
2. Count the numbers that end with 1.
3. Subtract the count of numbers that both start and end with 1 to avoid double counting.

### Detailed Steps:

1. **Numbers starting with 1**:
   - For an n-digit number to start with 1, the first digit is fixed as 1. The remaining (n-1) digits can be any digit from 0 to 9.
   - Therefore, there are \(10^{(n-1)}\) numbers that start with 1.

2. **Numbers ending with 1**:
   - For an n-digit number to end with 1, the last digit is fixed as 1. The first (n-1) digits can be any digit from 1 to 9 for the first digit (to ensure it's a valid n-digit number) and 0 to 9 for the rest.
   - Therefore, there are \(9 \times 10^{(n-2)}\) numbers that end with 1 if n > 1. If n = 1, then there's only 1 number (which is 1 itself).

3. **Numbers both starting and ending with 1**:
   - If a number starts and ends with 1, the first and last digits are fixed as 1. The middle (n-2) digits can be any digit from 0 to 9.
   - Therefore, there are \(10^{(n-2)}\) such numbers if n > 1. If n = 1, then there's only 1 number (which is 1 itself).

4. **Combine the counts**:
   - Use the inclusion-exclusion principle to combine these counts:
     \[
     \text{Count} = (\text{Start with 1}) + (\text{End with 1}) - (\text{Both start and end with 1})
     \]

Let's implement this in the function `starts_one_ends`.

