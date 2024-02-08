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

    # Loop through the cars
    for i in 1:n
        # The car is initially moving left to right
        moving_left_to_right = true

        # Loop through the other cars
        for j in 1:n
            # If the current car is the same as the one we're checking against,
            # we don't need to check for collision
            if i == j
                continue
            end

            # If the car is moving right to left and they are on the same position,
            # we have a collision
            if moving_left_to_right && (i == n - j + 1)
                collisions += 1
            end

            # If the car has collided, it continues moving in its original
            # direction
            if !moving_left_to_right && (i == j)
                moving_left_to_right = true
            end
        end
    end

    return collisions
end
