# Arch linux / i3 window manager
Config files, scripts and cheat-sheets for arch/i3 system

# Purpose

I created this repository for my own personal use. Its purpose is to simplify the management of arch installations across different machines.
You are free to use it this code for managing your own arch systems, but there is absolutely no warranty whatsoever. 

# What does it do?

The code provided here will allow you to install the i3 window manager on top of your clean arch installation, created by following the excellent
[instructions](https://wiki.archlinux.org/index.php/installation_guide). It will configure your machine in a way that I find sensible, but you are free to disagree. It will also install a bunch of [applications](./packages/official) that I personally use on a daily
basis, as well as some simple [scripts](./fs/opt/scripts) for performing common tasks. 

# How to use it

Once you have installed arch linux, clone this repo and cd into it. Copy `.env.dist` to `.env`, review and edit the available configuration variables and then execute `./install`. 

# Available configuration variables

The .env file contains the following environment variables:
- `PRIMARY_DISPLAY` - the name of your primary display, as reported by `xrandr`
- `SECONDARY_DISPLAY` - the name of your secondary display, as reported by `xrandr`. If you only have one display, set it to the same value as your primary display.
- `LID_CLOSE_ACTION` - specify the action on closing your laptop lid. The most sensible actions are "ignore" and "suspend". For a full list of possible actions, see `man logind.conf`.
