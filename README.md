wmctrl-control
==============

Wrapper on top of wmctrl for modifying dynamically the display layout of application windows.

### Usage

Move all the Firefox windows to the 3rd desktop

```
sh move-all-by-name.sh "Firefox" 2
```

### Command line parameters for wmctrl

Go to the first desktop
```
wmctlr -s 0
```

Switch to a different virtual desktop
```
wmctrl -s number
```

List windows
```
wmctrl -l
```

Move window with title 'test-name' to a specific desktop
```
wmctrl -r "test-name" -t 4
```

### Reference
http://superuser.com/questions/297819/move-window-to-another-monitor-in-ubuntu-using-keyboard

http://movingtofreedom.org/2010/08/10/arranging-windows-from-the-gnulinux-command-line-with-wmctrl/
