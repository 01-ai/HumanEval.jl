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
    beats = Int[]
    i = 1
    while i <= length(music_string)
        if music_string[i] == '\\'
            if music_string[i+1] == 'o'
                if i+2 <= length(music_string) && music_string[i+2] == '|'
                    push!(beats, 2)
                    i += 3
                else
                    push!(beats, 4)
                    i += 2
                end
            elseif music_string[i+1] == '.'
                if i+2 <= length(music_string) && music_string[i+2] == '|'
                    push!(beats, 1)
                    i += 3
                else
                    i += 1
                end
            else
                i += 1
            end
        else
            i += 1
        end
    end
    return beats
end
