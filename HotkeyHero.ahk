#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; '#Warn' is disabled as this incorrectly errors this script
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance

SetCapsLockState, AlwaysOff
#include %A_ScriptDir%\Replacer.ahk ;	Include the hotstring file

;	Formatting options for GUI
gui_control_options := "xm w220 " . cForeground . " -E0x200"
    ; -E0x200 removes border around Edit controls

;	Initialise with gui_state set to closed
gui_state = closed

;	Allow normal CapsLock functionality to be toggled by Alt+CapsLock
!CapsLock::

	GetKeyState, capsstate, CapsLock, T ;(T indicates a Toggle. capsstate is an arbitrary varible name)
    if capsstate = U
        SetCapsLockState, AlwaysOn
    else
        SetCapsLockState, AlwaysOff
    return

;	Launch GUI
CapsLock & Space::
gui_spawn:
	if gui_state = open
    {
        ; If the GUI is already open, close it.
        gui_destroy()
        return
    }
	else
	{
		gui_state = open

		Gui, Margin, 16, 16
		;Gui, Color, 1d1f21, 282a2e
		Gui, +AlwaysOnTop -SysMenu +ToolWindow -caption +Border
		Gui, Font, s11, Segoe UI
		Gui, Add, Text, %gui_control_options% vgui_main_title, Hello - How can I help?
		Gui, Font, s10, Segoe UI
		Gui, Add, Edit, %gui_control_options% vUserInputBox gInstantCallback
		Gui, Show,, myGUI
		return
	}

;	Callback function for when the input field changes
InstantCallback:
	Gui, Submit, NoHide
	#Include %A_ScriptDir%\Shortcutter.ahk ;	Each row calls a seperate 'modual' of the HotkeyHero program
	#Include %A_ScriptDir%\Commands.ahk
	#Include %A_ScriptDir%\Buttons.ahk
	return

#WinActivateForce

;	Closed app on Esc key
GuiEscape:
	gui_destroy()
	return

;	Closing app with change to gui_state & activating previous Win
gui_destroy()
{
	global gui_state = closed
	Gui, Destroy
	WinActivate
}