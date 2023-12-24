echo
echo "INSTALLING SOFTWARE"
echo

PKGS=(


    # shell/terminal
    'alacritty'        	    # Terminal emulator
    'tmux'
    'fish'
    'doas'
    'sudo'
    'man-db'
    'man-pages'

    # system monitoring
    'htop'                  # Process viewer
    'gtop'                  # System monitoring via terminal
    'neofetch'              # Shows system info when you launch terminal
    'btop'                  # Arcade top

    # network utility
    'curl'                  # Remote content retrieval
    'wget'                  # Remote content retrieval
    'yt-dlp'

    # wallpaper
    'nitrogen'                  
    
    # battery
    'tlp'                   # Advanced laptop power management

    #display
    'arandr'
    'xsecurelock'
    'brightnessctl'

    # file manager
    'nemo'                  # Filesystem browser

    # dev
    'basedevel'
    'git'                   # Version control system
    'gcc'                   # C/C++ compiler
    'glibc'                 # C libraries
    'python'                # Scripting language
    'stow'

    # web
    'chromium'              # Web browser
    'firefox'               # Web browser

    # communication
    'discord'

    # video/capture
    'simplescreenrecorder'  # Record your screen
    'mpv'                   # Video player
    'asciinema'

    # text editor
    'nano'
    'vi'
    'neovim'

    # fonts
    "noto-fonts"
    "noto-fonts-cjk" 
    "noto-fonts-emoji" 
    "noto-fonts-extra"

    # programs
    'gimp'                  # GNU Image Manipulation Program
    'galculator'            # Gnome calculator
    'libreoffice-fresh'     # Libre office with extra features
    'mupdf'                  # PDF viewer
    'okular'
    'keepassxc'
    'maim'		#screenshot
    'xclip'		#screenshot

)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo
