# VR Desktop View Blocker

Most PCVR apps and games render a 'desktop view' or 'mirror view' in a window, and in almost all cases this negatively effects the performance of the game in VR.

More often than not, you likely don't notice this. It is usually a small impact (0.1-0.2ms frametime), or just shows as inconsistency (frametimes jumping up and down, not delivered smoothly).

In other cases, with some games, the performance impact is quite extreme, and can cause a lot of stuttering.
This has plagued VR gamers for a long time, for example check out this thread: https://www.reddit.com/r/vive_vr/comments/b6uk6z/seriouslywhy_are_vr_devs_doing_this/

Commonly, the solution to this issue is to minimise the desktop view window, however, this doesn't always work. When minimised, a lot of games will stop playing audio or won't accept inputs, and some will stop working altogether. There was never any solution for this.... until now! :O

Introducing VR Desktop View Blocker: https://github.com/TimberAngry/VR-Desktop-View-Blocker

# What is this and how does it work?

It is an Autohotkey based app that creates a very large 'always on top' window that covers the entire screen. This allows the game to remain as the 'active' window, without actually showing on the screen - and if it isn't showing on screen, performance in VR is improved. The game performs as if the desktop view was minimised, but all aspects of the game, including audio and inputs, work perfectly fine.

# How is it used?

Make sure AutoHotkey 1.1 is installed first:
https://www.autohotkey.com/download/ahk-install.exe

Download and run the ''VR Desktop View Blocker.ahk' app:
https://github.com/TimberAngry/VR-Desktop-View-Blocker/releases

Best to run this app first, and then launch your game in the VR headset, since you won't be able to see anything on your desktop screen when the blocker is up. Alternately, you can run your game on the desktop, then bring up the blocker, and use Alt-Tab to make sure your game is selected as the active window. The name of the currently active window will show on blocker interface.
