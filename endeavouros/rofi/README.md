# Rofi, Rofi PowerMenu and Rofi Clipboard Integration

For clipboard, following package is used.

`# paru -S rofi-greenclip`

For power menu,two approaches are used

**1.** For blur lock effect, a script is called inside the `powermenu` script, named `blur-lock` which is present in the i3wm `scripts` directory.

**2.** For other power menu commands following `systemctl` calls are used inside the `powermenu` script

```
systemctl poweroff
systemctl reboot
systemctl suspend
systemctl hibernate
```
