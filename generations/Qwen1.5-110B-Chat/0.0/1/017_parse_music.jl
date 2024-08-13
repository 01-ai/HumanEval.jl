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
    notes = ["o" => 4, "o|" => 2, ".|" => 1]
    return map(notes) do note
        count = 0
        for char in music_string
            if char == note
                count += notes[note]
            end
        end
        count
    end
end
function parse_music(music_string::String)::Vector{Int}
    note_values = Dict("o" => 4, "o|" => 2, ".|" => 1)
    current_note = ""
    beats = Int[]
    
    for char in music_string
        if char == ' ' || char == '|'
            if current_note != ""
                push!(beats, note_values[current_note])
                current_note = ""
            end
        else
            current_note *= char
        end
    end
    
    if current_note != ""
        push!(beats, note_values[current_note])
    end
    
    return beats
end
