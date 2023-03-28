#SingleInstance Force ; Ensures only one instance of the app is running at a time
#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.

Menu, Tray, NoStandard
Menu, Tray, tip, VR Desktop View Blocker by TimberAngry ; Set tooltip text for tray icon
Menu, Tray, add ; Add a separator to the tray menu
Menu, Tray, add, Open App Folder, OpenAppFolder ; Add an option to open app folder in explorer
Menu, Tray, add ; Add a separator to the tray menu
Menu, Tray, add, Exit, GuiClose ; Add an option to exit the program

Gui +AlwaysOnTop +E0x20  ; Creates a new GUI window that is always on top and has no border
Gui, Color, 000000  ; Sets the background color of the GUI to black
Gui, Font, s20 cFFFFFF, Arial  ; Sets the font size and color of the text in the GUI
Gui, Add, Text, x1005 y1005, VR Desktop View Blocker by TimberAngry  ; Adds a text label to the GUI
Gui, Add, Text, x1005 y1100, This app blocks your entire screen to stop the desktop mirror view from hurting performance, while leaving the game as the active window.  ; Adds another text label to the GUI
Gui, Add, Text, x1005 y1150, Best to run this app first, and then launch your game in the VR headset.  ; Adds another text label to the GUI
Gui, Add, Text, x1005 y1200, Alternately, you can run your game, then bring up the blocker, and use Alt-Tab to select your game. It should show as the current active window below:  ; Adds another text label to the GUI
Gui, Font, s20 c00FF00, Arial  ; Changes the font color of the text to green
Gui, Add, Text, x1005 y1250 w600 h30 vWinTitle  ; Adds a text label to the GUI that will display the active window's title
Gui, Add, Button, x1005 y1350 gMinimizeButton, Minimize Blocker  ; Adds a button to the GUI that will minimize the window when clicked
Gui, Add, Button, x1250 y1350 gGuiClose, Close  ; Adds a button to the GUI that will close the window when clicked
Gui, Show, W9000 H9000 x-1000 y-1000, VR Desktop View Blocker  ; Shows the GUI window with a large size and a negative position so that it is off-screen
SetTimer, UpdateWindowTitle, 500  ; Starts a timer that updates GUI every 500ms

return ; End of script's auto-execute section.

OpenAppFolder: ; Define a label for opening app folder
	Run explorer.exe %A_ScriptDir% ; Open app folder in explorer
return

UpdateWindowTitle:  ; Defines a label that is called by the timer every 500ms
	WinGetActiveTitle, title  ; Gets the title of the active window
	if WinActive("VR Desktop View Blocker")
		SendInput, !{Escape}  ; Sends the Alt+Escape key combination to the window to switch back to the previous active window, which is more likely to be the game
	GuiControl, , WinTitle, %title%  ; Updates the text of the WinTitle label in the GUI with the active window's title
return

MinimizeButton:  ; Defines a label that is called when the Minimize Blocker button is clicked
	WinMinimize, VR Desktop View Blocker  ; Minimizes the VR Desktop View Blocker window
return

GuiClose:  ; Defines a label that is called when the Close button is clicked
	ExitApp ; Exit the program
return