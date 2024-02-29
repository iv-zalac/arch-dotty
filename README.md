Arch post install scripts, and config files

- enable touchpad
50-libinput.conf -> /etc/X11/xorg.conf.d

- keyboard auto repeat rate
xset r rate 200 50

TODO:
- bluetooth applet (blueberry-tray)
- sound applet (volumeicon)
- battery
- multiple displays arandr
- update management, yay
- lid switch, sleep state management (rucno)
- where to save configs
- remap capslock to esc (already done in dotty), add to 00-keyboard.conf
- firewall? ne treba portovi su zatvoreni
- best way to manage dotfiles? stow dautor
- screen lock software? or display manager (xsecurelock)
- auto mount secondary storage (mount)
- configure two different layouts https://wiki.archlinux.org/title/Xorg/Keyboard_configuration#Switching_between_keyboard_layouts
- does keyboard work on its own or did i install a program? (list of installed packages in repo)
- go over programs in scripts
- doas i sudo
- what about fonts? what should i install to be safe? notofonts
- dunst za notifikacije
- promijenit /etc/pacman.conf maknut comment paralel i colour
- picom maknut animacije
- shell jobs pogledat OKOSL 
- scratchpad terminal za i3
- setup firefox smooth scrolling (https://wiki.archlinux.org/title/Firefox/Tweaks) u /etc/environment 3.2 pixel perfect scrollig

- crontab
crontab -e
*/10 * * * * ~/scripts/low_battery.sh


Journal:
- Disabled horizontal in i3 conf because of colide with hjkl
