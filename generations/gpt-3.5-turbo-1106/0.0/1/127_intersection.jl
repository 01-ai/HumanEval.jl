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
function is_prime(n::Int)
    if n <= 1
        return false
    end
    for i in 2:isqrt(n)
        if n % i == 0
            return false
        end
    end
    return true
end

function intersection(interval1::Vector{Int}, interval2::Vector{Int})::String
    start1, end1 = interval1
    start2, end2 = interval2
    
    if end1 < start2 || end2 < start1
        return "NO"
    end
    
    intersection_start = max(start1, start2)
    intersection_end = min(end1, end2)
    
    intersection_length = intersection_end - intersection_start + 1
    
    if intersection_length <= 1
        return "NO"
    end
    
    if is_prime(intersection_length)
        return "YES"
    else
        return "NO"
    end
end
