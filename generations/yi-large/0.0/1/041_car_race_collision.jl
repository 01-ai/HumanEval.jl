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
    # Since the cars are infinitely sturdy and strong, and they continue moving
    # in their trajectory as if they did not collide, every car moving left to
    # right will collide with every car moving right to left.
    # Therefore, the number of collisions is simply the product of the number
    # of cars in each direction.
    return n * n
end

# Example usage:
# julia> car_race_collision(3)
# 9

# This means that if there are 3 cars moving in each direction, there will be 9 collisions.
