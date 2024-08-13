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
    start1, end1 = interval1
    start2, end2 = interval2

    # Calculate the intersection
    inter_start = max(start1, start2)
    inter_end = min(end1, end2)

    # Check if the intervals intersect
    if inter_start > inter_end
        return "NO"
    end

    # Calculate the length of the intersection
    inter_length = inter_end - inter_start + 1

    # Check if the length is a prime number
    if inter_length < 2
        return "NO"
    elseif inter_length == 2
        return "YES"
    else
        for i in 2:isqrt(inter_length)
            if inter_length % i == 0
                return "NO"
            end
        end
        return "YES"
    end
end
