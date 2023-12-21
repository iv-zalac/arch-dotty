echo
echo "INSTALLING I3WM"
echo

PKGS=(
        'i3-wm'          
        'i3blocks'          
        'i3lock'           
        'dmenu'     
	'picom'
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo
