# i3wm, rofi, i3 bar

My dot files

# Enabling blur-lock script with i3lock on lid closer

First copy the blur-lock `sudo cp ~/.config/i3/scripts/blur-lock /usr/local/bin/blur-lock.sh`
then creat the file `suspend@.service` in the `/etc/systemd/system/` directory with the following content.

```
[Unit]
Description=User suspend actions
Before=sleep.target

[Service]
User=%I
Type=forking
Environment=DISPLAY=:0
ExecStart=/usr/bin/blur-lock.sh
ExecStartPost=/usr/bin/sleep 1

[Install]
WantedBy=sleep.target
```

Enable the systemd service
`sudo systemctl enable suspend@user.service` (replace user with your username)
To disable the service
`sudo systemctl disable suspend@user.service` and remove the file created.
