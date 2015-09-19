xsetroot -grey
xautolock -time 5 -locker 'i3lock -t -i ~/.i3lock/system-lock-screen.png' &
xclock -d -geom -700+0 -brief -sharp &
bbpager &
GDK_CORE_DEVICE_EVENTS=1 pekwm
