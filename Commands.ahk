;----------------COMMANDS----------------------------------------------------------------
;The below scripts are to be 'instant run'. Rather than prompting a further GUI, these run immediately when the hotkey is detected in the initial HotkeyHero GUI input box.
;
;When adding new scripts, the UserInputBox will equal the keystroke to detect. Then, within the command, ensure the gui_destroy() command is ran to reset the GUI.
;--------------------------------------------------------------------------------

if UserInputBox = z

{
	gui_destroy()
	msgbox, you pressed z!

}

else if UserInputbox = y
{
	gui_destroy()
	msgbox, you press y!

}