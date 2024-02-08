"""
    histogram(s::String)::Dict{String, Int}

Given a string representing a space separated lowercase letters, return a
dictionary of the letter with the most repetition and containing the
corresponding count. If several letters have the same occurrence, return all of
them.

# Examples

```jldoctest
julia> histogram("a b c")
Dict{String, Int64} with 3 entries:
  "c" => 1
  "b" => 1
  "a" => 1

julia> histogram("a b b a")
Dict{String, Int64} with 2 entries:
  "b" => 2
  "a" => 2

julia> histogram("a b c a b")
Dict{String, Int64} with 2 entries:
  "b" => 2
  "a" => 2

julia> histogram("b b b b a")
Dict{String, Int64} with 1 entry:
  "b" => 4

julia> histogram("")
Dict{String, Int64}()
```
"""


function histogram(s::String)::Dict{String, Int}
    d = Dict{String, Int}()
    for c in split(s)
        if haskey(d, c)
            d[c] += 1
        else
            d[c] = 1
        end
    end
    max_val = maximum(values(d))
    return Dict(k => v for (k, v) in d if v == max_val)
end

# Test cases
@assert histogram("a b c") == Dict("c" => 1, "b" => 1, "a" => 1)
@assert histogram("a b b a") == Dict("b" => 2, "a" => 2)
@assert histogram("a b c a b") == Dict("b" => 2, "a" => 2)
@assert histogram("b b b b a") == Dict("b" => 4)
@assert histogram("") == Dict()

