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
    # Extracting endpoints of the intervals
    a, b = interval1
    c, d = interval2
    
    # Calculate the intersection
    start_intersection = max(a, c)
    end_intersection = min(b, d)
    
    # Check if there is an intersection
    if start_intersection > end_intersection
        return "NO"
    end
    
    # Calculate the length of the intersection
    length_intersection = end_intersection - start_intersection + 1
    
    # Check if the length is a prime number
    if is_prime(length_intersection)
        return "YES"
    else
        return "NO"
    end
end

function is_prime(n::Int)::Bool
    if n <= 1
        return false
    end
    for i in 2:sqrt(n)
        if n % i == 0
            return false
        end
    end
    return true
end
