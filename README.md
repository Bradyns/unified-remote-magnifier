# Unified Remote - X11 Magnifier

Custom **Unified Remote** remote for Linux **X11** that uses [`xdotool`](https://github.com/jordansissel/xdotool) to control zoom and nudge the mouse, similar to the Magnifier workflow on Windows.

## Why this exists

I control my machine from a distance at times. I've moved from Windows 11 to Kubuntu and wanted something that still behaved like the Windows Magnifier remote that's bundled with Unified Remote, while also allowing the use of the native iOS keyboard.

Due to the behaviour of **Wayland**, I swapped to **X11** to get the keyboard working reliably (unrelated to this remote, but worth noting). I also wanted to use `xdotool` to send the key actions, which is a common tool for simulating keyboard input and mouse actions on X11.

## What it does

- Sends zoom in/out/exit key actions through `xdotool`
- Nudges the mouse in fixed steps
- Includes a dedicated Super key action
- Several unused buttons that could be customized for additional functionality

## Requirements

- Unified Remote server running on your [Linux machine](https://www.unifiedremote.com/download/other#linux)
- `xdotool` installed on the host machine
  - Project: https://github.com/jordansissel/xdotool

    ### Installation
    You may find xdotool in your distribution packaging:
        - Debian and Ubuntu: `apt-get install xdotool`
        - Fedora: `dnf install xdotool`
        - FreeBSD: `pkg install xdotool`
        - macOS: `brew install xdotool` or `sudo port install xdotool`
        - OpenSUSE: `zypper install xdotool`

## Tested environment

- OS: Kubuntu 25.10
- Session: X11
- Kernel: Linux `6.17.0-14-generic` `x86_64`
- iOS Unified Remote app: `1.6.5 (109)`
- Unified Remote server: `3.14.0.2574 (53)`

## Screenshot

Remote shown in the Unified Remotes iOS app:

![Unified Remote iOS screenshot](example.png)

## Known issues

Sometimes when opening the remote and zooming in, the mouse will move but the window will be stuck.
You have to press `Alt+Shift+F12` twice to reset the zoom and mouse position, then it will work again.


## License

This project is licensed under the MIT License. See [`LICENSE`](LICENSE).
