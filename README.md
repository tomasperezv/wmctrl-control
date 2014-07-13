wmctrl-control
==============

Wrapper on top of wmctrl for modifying dynamically the display layout of application windows.

### Usage

Invoke wmctrl-control passing a configuration layout as a parameter.

```
./wmctrl-control config-name
```

For instance if you have a placed on `./config/layout-1.conf`, then you just need to pass it as:

```
./wmctrl-control layout-1
```

### Structure of the configuration files

The configuration files contain a config entry per line, specifying application window name and desktop destination

```
Chrome 1
gedit 9
```

In this previous example, all the Chrome windows will be placed in the first desktop, and gedit will be placed in the desktop #8.

For multiple monitors with N desktops per screen, to place a program in the first desktop of the second monitor
you must specify the number N+1.

### Script utilities

Move all the Firefox windows to the 3rd desktop

```
sh move-all-by-name.sh "Firefox" 2
```

### Dependencies

```
sudo apt-get install wmctrl
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
