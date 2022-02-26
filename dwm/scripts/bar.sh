#!/bin/dash

# ^c$var^ = fg color
# ^b$var^ = bg color

interval=0

# load colors
. ~/.config/dwm/scripts/bar_themes/nord

cpu() {
	cpu_val=$(grep -o "^[^ ]*" /proc/loadavg)

	printf "^c$black^ ^b$green^ CPU"
	printf "^c$green^ ^b$grey2^ $cpu_val"
}

pkg_updates() {
  updates=$(checkupdates | wc -l)   # arch , needs pacman contrib

	if [ -z "$updates" ]; then
		printf "^c$green^  Fully Updated"
	else
		printf "^c$green^  $updates"" updates"
	fi
}

mem() {
	printf "^c$turquoise^^b$grey2^  "
	printf "^c$turquoise^^b$grey2^ $(free -h | awk '/^Mem/ { print $3 }' | sed s/i//g)"
}

wlan() {
	case "$(cat /sys/class/net/wl*/operstate 2>/dev/null)" in
	up) printf "^c$black^ ^b$blue^ 󰤨 ^d^%s" " ^c$blue^Connected" ;;
	down) printf "^c$black^ ^b$blue^ 󰤭 ^d^%s" " ^c$blue^Disconnected" ;;
	esac
}

clock() {
	printf "^c$black^ ^b$darkblue^ 󱑆 "
	printf "^c$black^^b$blue^ $(date '+%I:%M %p, %B %d')  "
}

while true; do

	[ $interval = 0 ] || [ $(($interval % 3600)) = 0 ] && updates=$(pkg_updates)
	interval=$((interval + 1))

  sleep 1 && xsetroot -name "$updates $(cpu) $(mem) $(wlan) $(clock)"
done
