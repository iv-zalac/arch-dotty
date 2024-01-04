if status is-interactive
    # Commands to run in interactive sessions can go here
end

if status is-login
  fish_add_path ~/.screenlayout/
  fish_add_path $HOME/.cargo/bin
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty
    end
end
