echo
echo "INSTALLING AUR SOFTWARE"
echo

cd "${HOME}"

#CHANGE TO YAY
#echo "CLOING: AURIC"
#git clone "https://github.com/rickellis/AURIC.git"


PKGS=(

    # SYSTEM UTILITIES ----------------------------------------------------

    'gtkhash'                   # Checksum verifier

    # UTILITIES -----------------------------------------------------------

    #'dropbox'                   # Cloud file storage
    #'enpass-bin'                # Password manager
    #'slimlock'                  # Screen locker

    # DEVELOPMENT ---------------------------------------------------------
    
    'visual-studio-code-bin'    # Kickass text editor

    # MEDIA ---------------------------------------------------------------

    'screenkey'                 # Screencast your keypresses

    # POST PRODUCTION -----------------------------------------------------

    'peek'                      # GIF animation screen recorder

)

# NEED TO CHANGE THIS TO YAY
#cd ${HOME}/AURIC
#chmod +x auric.sh
#
#for PKG in "${PKGS[@]}"; do
#    ./auric.sh -i $PKG
#done

echo
echo "Done!"
echo
