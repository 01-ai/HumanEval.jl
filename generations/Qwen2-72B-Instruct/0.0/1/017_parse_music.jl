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

"""
    parse_music(music_string::String)::Vector{Int}

Parse a string representing musical notes in a special ASCII format and return
a vector of integers corresponding to the duration of each note in beats.

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
function parse_music(music_string::String)::Vector{Int}
    notes = split(music_string)
    beats = Vector{Int}()
    for note in notes
        if note == "o"
            push!(beats, 4)
        elseif note == "o|"
            push!(beats, 2)
        elseif note == ".|"
            push!(beats, 1)
        end
    end
    return beats
end
