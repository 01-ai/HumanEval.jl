"""
    parse_music(music_string::String)::Vector{Int}

Input to this function is a string representing musical notes in a special ASCII
format. Your task is to parse this string and return list of integers
corresponding to how many beats does each not last.

Here is a legend:

  - `"o"` - whole note, lasts four beats
  - `"o|"` - half note, lasts two   - `".|"` - quater note, lasts one beat

# Examples

```jldoctest
julia> parse_music("o o| .| o| o| .| .| .| .| o o")
11-element Vector{Int64}:
 4
 2
 1
 2
 2
 1
 1
 1
 1
 4
 4
```
"""

Here is a Julia function that implements the given doc string:

