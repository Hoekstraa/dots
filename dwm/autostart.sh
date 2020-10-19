~/.fehbg
slstatus &
#compton --vsync opengl-swc --backend glx & #--sw-opti & #--glx-swap-method buffer-age --blur-background --sw-opti &
redshift -l 53.32270:5.99131 &
dunst &
gpg-connect-agent /bye &
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
