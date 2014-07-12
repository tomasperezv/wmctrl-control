wmctrl-control
==============

Wrapper on top of wmctrl for modifying dynamically the display layout of application windows.

## Command line parameters for wmctrl

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

## Reference
http://superuser.com/questions/297819/move-window-to-another-monitor-in-ubuntu-using-keyboard
