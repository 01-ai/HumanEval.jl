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
function car_race_collision(n::Int)::Int
    # The number of collisions is equal to the sum of the first n natural numbers.
    # This is because each car in the left-to-right group will collide with each car in the right-to-left group.
    # The number of collisions is n + (n-1) + (n-2) + ... + 1 = n*(n+1)/2
    return div(n*(n+1), 2)
end
