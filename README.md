# macos-lightdark-commands

On macOS, not all tools automatically adjust to toggling light and dark mode.
iTerm2, tmux, and Vim, for instance, need to be told what to do.

Here's a `launchd` snippet and a shell script.

## Install

Make sure `/bin/sh` (the shell that will run the script) has Full Disk Access.
(In the file picker dialog, Command-Shift-G will let you type a path.)

```
$ make install
$ launchctl load ~/Library/LaunchAgents/com.schmonz.lightdark.plist
```

## Configure

### iTerm2

I don't much care for this arrangement, but it seems to work.
(This repo doesn't provide anything it needs.
If you only care about iTerm2, don't clone this, just follow the below steps.)

1. Download <https://iterm2.com/python-api/_downloads/5d351349bb5297f76f9d4a63f2ee997b/theme.its>
2. iTerm2 -> Settings -> General -> Magic: Enable Python API
3. Scripts -> Manage -> Install Python Runtime
4. Scripts -> Manage -> Import... -> your downloaded script -> AutoLaunch
5. Scripts -> Manage -> Reveal Scripts in Finder
6. Scripts folder -> AutoLaunch -> theme -> theme -> edit theme.py to specify your preferred themes

### tmux

XXX

### Vim

1. Use `colorscheme solarized` (or another scheme with light and dark variants)
2. Add `autocmd VimResume * call echoraw(&t_RB)` (and another for `FocusGained`)
3. When in dark mode, tolerate `vim` startup flickering as it defaults to `background=light` and then quickly adjusts
4. On any mode switch, tolerate `vim` not changing colors until you focus on it

## Test

1. Open some terminals and editor sessions.
2. In System Settings -> Appearance, manually toggle between light and dark mode.
3. Observe how (and when) terminals and editor sessions notice the change.
4. Start some new terminals and editor sessions, too.
