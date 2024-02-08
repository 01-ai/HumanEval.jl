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

### Step-by-Step Outline

1. **Initialize an empty list** to store the parsed beats as integers.
2. **Iterate through the music string** to identify each note and its corresponding beat value.
    - Since the notes can have different lengths (e.g., "o" vs "o|" vs ".|"), we need to be careful about how we iterate through the string to ensure we correctly identify each note.
3. **Identify each note and its beat value**:
    - If the current character is `"o"`:
        - Check if the next character is `"|"`. If yes, it's a half note (`"o|"`), add `2` to the list, and skip the next character in the iteration.
        - If the next character is not `"|"`, it's a whole note (`"o"`), add `4` to the list.
    - If the current character is `"."`:
        - Check if the next character is `"|"`. If yes, it's a quarter note (`".|"`), add `1` to the list, and skip the next character in the iteration.
        - This scenario assumes that a dot not followed by a bar is not a valid note in this context, based on the provided legend.
4. **Return the list of integers** representing the beats of each note.

### Julia Code Implementation

