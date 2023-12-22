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

    # system monitoring
    'htop'                  # Process viewer
    'gtop'                  # System monitoring via terminal
    'neofetch'              # Shows system info when you launch terminal
    #'hardinfo'              # Hardware info app

    # network utility
    'curl'                  # Remote content retrieval
    'wget'                  # Remote content retrieval
    'gufw'                  # Firewall manager
    'speedtest-cli'         # Internet speed via terminal

    # wallpaper/image viewer
    'feh'                   # Terminal-based image viewer/manipulator, wallpaper
    
    # battery
    'tlp'                   # Advanced laptop power management
    

    # disk utility
    'udisks2'                # Auto-mounter
    'exfat-utils'           # Mount exFat drives
    'parted'                # Disk utility

    # file manager
    'nemo'                  # Filesystem browser
    'ranger'                # cli based file manager


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

    # programs
    'gimp'                  # GNU Image Manipulation Program
    'inkscape'              # Vector image creation app
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
