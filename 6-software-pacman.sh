echo
echo "INSTALLING SOFTWARE"
echo

PKGS=(

    # SYSTEM --------------------------------------------------------------

    'linux-lts'             # Long term support kernel

    # TERMINAL UTILITIES --------------------------------------------------

    'bash-completion'       # Tab completion for Bash
    #'bc'                    # Precision calculator language
    'curl'                  # Remote content retrieval
    #'elinks'                # Terminal based web browser
    'feh'                   # Terminal-based image viewer/manipulator
    #'file-roller'           # Archive utility
    #'gnome-keyring'         # System password storage
    'gtop'                  # System monitoring via terminal
    'gufw'                  # Firewall manager
    #'hardinfo'              # Hardware info app
    'htop'                  # Process viewer
    'inxi'                  # System information utility
    #'jq'                    # JSON parsing library
    #'jshon'                 # JSON parsing library
    'neofetch'              # Shows system info when you launch terminal
    'ntp'                   # Network Time Protocol to set time via network.
    'openssh'               # SSH connectivity tools
    'rsync'                 # Remote file sync utility
    'speedtest-cli'         # Internet speed via terminal
    #'terminus-font'         # Font package with some bigger fonts for login terminal
    
    #'tlp'                   # Advanced laptop power management
    
    'unrar'                 # RAR compression program
    'unzip'                 # Zip compression program
    'wget'                  # Remote content retrieval
    'alacritty'        	    # Terminal emulator
    'zenity'                # Display graphical dialog boxes via shell scripts
    'zip'                   # Zip compression program
    'zsh'                   # ZSH shell
    'zsh-completions'       # Tab completion for ZSH

    # DISK UTILITIES ------------------------------------------------------

    'autofs'                # Auto-mounter
    'exfat-utils'           # Mount exFat drives
    'parted'                # Disk utility

    # GENERAL UTILITIES ---------------------------------------------------

    #'catfish'               # Filesystem search
    #'conky'                 # System information viewer
    'nemo'                  # Filesystem browser

    # DEVELOPMENT ---------------------------------------------------------

    'clang'                 # C Lang compiler
    'cmake'                 # Cross-platform open-source make system
    'git'                   # Version control system
    'gcc'                   # C/C++ compiler
    'glibc'                 # C libraries
    #'meld'                  # File/directory comparison
    'nodejs'                # Javascript runtime environment
    'npm'                   # Node package manager
    #'postfix'               # SMTP mail server
    'python'                # Scripting language
    'yarn'                  # Dependency management (Hyper needs this)

    # WEB TOOLS -----------------------------------------------------------

    'chromium'              # Web browser
    'firefox'               # Web browser
    'filezilla'             # FTP Client
    'flashplugin'           # Flash

    # COMMUNICATIONS ------------------------------------------------------

    #'hexchat'               # Multi format chat
    #'irssi'                 # Terminal based IIRC

    # MEDIA ---------------------------------------------------------------

    'simplescreenrecorder'  # Record your screen
    'vlc'                   # Video player

    # GRAPHICS AND DESIGN -------------------------------------------------

    'gcolor2'               # Colorpicker
    'gimp'                  # GNU Image Manipulation Program
    'inkscape'              # Vector image creation app
    #'imagemagick'           # Command line image manipulation tool
    #'pngcrush'              # Tools for optimizing PNG images
    #'ristretto'             # Multi image viewer

    # PRODUCTIVITY --------------------------------------------------------

    'galculator'            # Gnome calculator
    'hunspell'              # Spellcheck libraries
    'hunspell-en'           # English spellcheck library
    'libreoffice-fresh'     # Libre office with extra features
    'mupdf'                  # PDF viewer
    #'okular'

    # VIRTUALIZATION ------------------------------------------------------

    #'virtualbox'
    #'virtualbox-host-modules-arch'
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo
