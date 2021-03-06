# Riced up dwm customization

# Installation
Run these commands in your terminal:

`git clone https://github.com/nbhat0/dwm`
`cd dwm`
`sudo make clean install`

# Required dependencies
You need `libxft-bgra` for this to work, otherwise your dwm will crash on boot because of the icons in the status bar. Also, you will
need to install `nerd-fonts-jetbrains-mono` through your AUR provider, it is the main font used in this build, and gives access to all 
the icons. 

# Info about this rice
This customization is much more bloated than a normal dwm install, it has likely 10+ patches applied, and has some big ones, like the
systray patch. On idle with no background programs, it still has under 300Mi of RAM usage, which I'm good with, and I haven't seen any noticable dips in performance after applying these patches. I use dwmblocks for my status bar, as I find it uses less resources than an autostart script always running in the back. Dots for that will likely be uploaded soon. Inspiration for this build came from chadwm mostly for appearance and Luke Smith's for keybindings. 

# Features
* Gaps, and multiple layouts (including floating)
* Padded status bar, with tags that can be customized to your liking
* Nice keybinds (taken from Luke Smith's build of dwm)
* Implemented systray patch for convenience
