# macos-lightdark-commands

On macOS, not all tools automatically adjust to toggling light and dark mode.
iTerm and vim, for instance, need to be told what to do.

Here's a `launchd` snippet and a shell script.

## To install

Make sure `/bin/sh` (the shell that will run the script) has Full Disk Access.
(In the file picker dialog, Command-Shift-G will let you type a path.)

```
$ make install
$ launchctl load ~/Library/LaunchAgents/com.schmonz.lightdark.plist
```

## To test

```
$ echo ~/.vimrc | entr -a -n -p grep '^set background=' ~/.vimrc
```

Then manually toggle between light and dark mode.
