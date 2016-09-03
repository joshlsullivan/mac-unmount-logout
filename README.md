# Mac Unmount on Logout

These scripts unmount a particular volume during logout. They are based on [launchd](https://developer.apple.com/library/mac/documentation/MacOSX/Conceptual/BPSystemStartup/Chapters/CreatingLaunchdJobs.html). You can also use `unmount.sh` file by typing `sudo defaults write com.apple.loginwindow LogoutHook /path/to/script` into terminal.

### Setup Steps
1. Save the `unmount.sh` file in `/Library/Scripts/` directory and type this command in terminal: `chmod a+z /Library/Scripts/unmount.sh`.
2. Copy the `com.example.unmount.plist` file to `/Library/LaunchAgents/` directory.
3. Type `launchctl loal /Library/LaunchAgents/com.example.unmount.plist` to load the config file. To verify it has loaded, type `launchctl list`.

### Debugging
These files output logs to the `/var/log/` directory.
- **unmount.log** is the standard output file issued by `launchd`
- **unmount_error.log** is the error log for an issues
- **logout.sh.log** confirms the shell script ran
