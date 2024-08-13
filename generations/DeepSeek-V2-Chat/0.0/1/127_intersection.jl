"""
    intersection(interval1::Vector{Int}, interval2::Vector{Int})::String

You are given two intervals, where each interval is a pair of integers. For
example, interval = (start, end) = (1, 2). The given intervals are closed which
means that the interval (start, end) includes both start and end. For each given
interval, it is assumed that its start is less or equal its end. Your task is to
determine whether the length of intersection of these two intervals is a prime
number. Example, the intersection of the intervals (1, 3), (2, 4) is (2, 3)
which its length is 1, which not a prime number. If the length of the
intersection is a prime number, return "YES", otherwise, return "NO". If the two
intervals don't intersect, return "NO".

# Examples

```jldoctest
julia> intersection([1, 2], [2, 3])
"NO"

julia> intersection([-1, 1], [0, 4])
"NO"

julia> intersection([-3, -1], [-5, 5])
"YES"
```
"""
function intersection(interval1::Vector{Int}, interval2::Vector{Int})::String
    # Extract start and end points of the intervals
    start1, end1 = interval1
    start2, end2 = interval2
    
    # Find the intersection of the two intervals
    start_intersection = max(start1, start2)
    end_intersection = min(end1, end2)
    
    # Check if there is an intersection
    if start_intersection > end_intersection
        return "NO"
    end
    
    # Calculate the length of the intersection
    length_intersection = end_intersection - start_intersection + 1
    
    # Check if the length of the intersection is a prime number
    if is_prime(length_intersection)
        return "YES"
    else
        return "NO"
    end
end

# Helper function to check if a number is prime
function is_prime(n::Int)::Bool
    if n <= 1
        return false
    elseif n <= 3
        return true
    elseif n % 2 == 0 || n % 3 == 0
        return false
    end
    i = 5
    while i * i <= n
        if n % i == 0 || n % (i + 2) == 0
            return false
        end
        i += 6
    end
    return true
end
