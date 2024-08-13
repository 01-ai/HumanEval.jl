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
    # Each car moving left to right will inevitably collide with each car moving right to left.
    # Since there are n cars in each direction, each car from one direction will collide with
    # each car from the opposite direction exactly once.
    # Therefore, the total number of collisions is simply n * n.
    return n * n
end