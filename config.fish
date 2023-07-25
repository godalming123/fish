function fish_greeting
    if status is-interactive
        set EDITOR hx
        if [ "$TERM" = "linux" ]
            echo -en "\e]P0282c34" # Background color
            echo -en "\e]PFFFFFFF" # Foreground color
            echo -en "\e]P7abb2bf" # Alternate foreground color
            echo -en "\e]P8abb2bf" # The foreground color used for fish suggested completions

            # Normal color varients (should contrast with the background)
            echo -en "\e]P1e06c75" # Red
            echo -en "\e]P298c379" # Green
            echo -en "\e]P3e5c07b" # Yellow
            echo -en "\e]P461afef" # Blue
            echo -en "\e]P5c678dd" # Magenta
            echo -en "\e]P656b6c2" # Cyan

            # Bright color varients (TODO: make these actually brighter then the normal colors)
            echo -en "\e]P9e06c75" # Red
            echo -en "\e]PA98c379" # Green
            echo -en "\e]PBe5c07b" # Yellow
            echo -en "\e]PC61afef" # Blue
            echo -en "\e]PDc678dd" # Magenta
            echo -en "\e]PEac4142" # Cyan

            # Clear artifacts
            clear
        end
    end
end

function fish_prompt
    set -l _status $status
    set_color blue
    echo -n " "(pwd)
    if test $_status -eq 0
        set_color green
    else
        set_color red
    end
    echo -n " -> "
end
