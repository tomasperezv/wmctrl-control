#!/bin/bash
# Receives a substring of an application window name (e.g. 'Firefox') as a parameter and moves it to the desktop passed as a second parameter.
# e.g. sh move-all-by-name.sh "Firefox" 2
wmctrl -l | awk '
BEGIN {}
{
  if (match($0, /'"$1"'/)){
    # The current line will follow this format
    # window-id desktop-id hostname app-name
    # e.g. 0x0360048e  4 hostname app-name
    # i.e. we are interested into the window id
    print "Moving "$1 " to desktop '"$2"'"
    system("wmctrl -i -r "$1" -t '"$2"'")
  }
}
END {}
'
