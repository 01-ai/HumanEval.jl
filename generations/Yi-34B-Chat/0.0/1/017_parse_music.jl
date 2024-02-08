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
function parse_music(music_string::String)::Vector{Int}
    # Initialize an empty vector to store the beat counts
    beats = Vector{Int}()

    # Loop over the music string
    for note in music_string
        # Handle whole notes ("o")
        if note == 'o'
            push!(beats, 4)
        # Handle half notes ("o|")
        elseif note == 'o' && next(music_string) == '|'
            push!(beats, 2)
            next(music_string)
        # Handle quarter notes (".|")
        elseif note == '.' && next(music_string) == '|'
            push!(beats, 1)
            next(music_string)
        end
    end

    # Return the vector of beat counts
    return beats
end
