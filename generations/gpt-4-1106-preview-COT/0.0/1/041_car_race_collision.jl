"""
    car_race_collision(n::Int)::Int

Imagine a road that's a perfectly straight infinitely long line. `n` cars are
driving left to right; simultaneously, a different set of n cars are driving
right to left. The two sets of cars start out being very far from each other.
All cars move in the same speed. Two cars are said to collide when a car that's
moving left to right hits a car that's moving right to left. However, the cars
are infinitely sturdy and strong; as a result, they continue moving in their
trajectory as if they did not collide.

This function outputs the number of such collisions.
"""

To implement the `car_race_collision` function, we can follow these steps:

1. Understand the problem:
   - We have `n` cars moving from left to right and `n` cars moving from right to left.
   - All cars move at the same speed and start far apart from each other.
   - A collision occurs when a car moving left to right meets a car moving right to left.
   - After a collision, cars continue moving in their original direction without any change in speed.
   - We need to calculate the total number of collisions that will occur.

2. Realize that since all cars move at the same speed and are equally spaced, every car moving left to right will eventually collide with every car moving right to left.

3. Calculate the total number of collisions:
   - Since each of the `n` cars moving left to right will collide with each of the `n` cars moving right to left, the total number of collisions will be `n * n`.

4. Implement the function:
   - The function will take an integer `n` as input and return an integer representing the total number of collisions.

5. Return the result.

Now, let's write the code for the `car_race_collision` function based on the above outline.
