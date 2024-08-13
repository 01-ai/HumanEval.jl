"""
    strlen(x::String)::Int

Return length of given string.

# Examples

```jldoctest
julia> strlen("")
0

julia> strlen("abc")
3
```
"""

"""
    strlen(x::String)::Int

Return length of given string.

# Examples

```jldoctest
julia> strlen("")
0

julia> strlen("abc")
3
```
"""
strlen(x::String)::Int = length(x)
