echo
echo "INSTALLING SOFTWARE"
echo

PKGS=(

    # SYSTEM --------------------------------------------------------------

    'linux-lts'             # Long term support kernel


    # shell/terminal
    'bash-completion'       # Tab completion for Bash
    'zsh'                   # ZSH shell
    'zsh-completions'       # Tab completion for ZSH
    'alacritty'        	    # Terminal emulator
    'tmux'

    # system monitoring
    'htop'                  # Process viewer
    'gtop'                  # System monitoring via terminal
    'neofetch'              # Shows system info when you launch terminal
    'btop'                  # Arcade top
    #'hardinfo'              # Hardware info app

    # network utility
    'curl'                  # Remote content retrieval
    'wget'                  # Remote content retrieval

    # image viewer
    'nitrogen'                  
    
    # battery
    'tlp'                   # Advanced laptop power management
    

    # file manager
    'nemo'                  # Filesystem browser


    # dev
    'git'                   # Version control system
    'gcc'                   # C/C++ compiler
    'glibc'                 # C libraries
    'python'                # Scripting language

    # web
    'chromium'              # Web browser
    'firefox'               # Web browser

    # communication
    'discord'

    # video/capture
    'simplescreenrecorder'  # Record your screen
    'mpv'                   # Video player
    'asciinema'

    # programs
    'gimp'                  # GNU Image Manipulation Program
    'galculator'            # Gnome calculator
    'libreoffice-fresh'     # Libre office with extra features
    'mupdf'                  # PDF viewer
    'okular'

)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo
