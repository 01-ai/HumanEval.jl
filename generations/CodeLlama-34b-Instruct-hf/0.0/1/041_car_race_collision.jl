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
    # Initialize the number of collisions to 0
    collisions = 0

    # Loop through each pair of cars
    for i in 1:n
        # Check if the cars are moving in opposite directions
        if i % 2 == 0
            # If they are, increment the number of collisions
            collisions += 1
        end
    end

    # Return the number of collisions
    return collisions
end
