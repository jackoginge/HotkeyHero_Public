;----------------BUTTONS----------------------------------------------------------------
;The below script is built around prompting a 'button menu' for users to select commands from.
;
;The GUI has Tabs, so further tabs can be added with more buttons. Ensure that each button has a unique 'g' function call, which contains the action each button
;performs.
;--------------------------------------------------------------------------------

if UserInputBox = b ;keystroke to initiate the button menu from the HotkeyHero GUI.
{
	gui_destroy()

	Gui, +AlwaysOnTop -SysMenu +ToolWindow -caption +Border

	Gui, Show, w380 h530, Untitled GUI
	Gui, Add, Tab2, x2 y-1 w380 h550 , ScriptCommands|Tab2 ;	Here tabs are added, by name.

	Gui, Tab, ScriptCommands ;	Call a tab by name and then build onto that tab.
	Gui, Add, Button, x22 y39 w100 h30 gButton1, Reload Script ;	The 'g' variable tells the button which function to call from below.
	Gui, Add, Button, x142 y39 w100 h30 gButton2, Open Directory ;	Here, 'Open Directory' is the text shown on the button control.
	Gui, Add, Button, x262 y39 w100 h30 gButton3, Button3
	Gui, Add, Button, x22 y89 w100 h30 gButton4, Button4
	Gui, Add, Button, x142 y89 w100 h30 gButton5, Button5
	Gui, Add, Button, x262 y89 w100 h30 gButton6, Button6
	Gui, Add, Button, x22 y139 w100 h30 gButton7, Button7
	Gui, Add, Button, x142 y139 w100 h30 gButton8, Button8
	Gui, Add, Button, x262 y139 w100 h30 gButton9, Button9
	Gui, Add, Button, x22 y189 w100 h30 gButton10, Button10
	Gui, Add, Button, x142 y189 w100 h30 gButton11, Button11
	Gui, Add, Button, x262 y189 w100 h30 gButton12, Button12
	Gui, Add, Button, x22 y239 w100 h30 gButton13, Button13
	Gui, Add, Button, x142 y239 w100 h30 gButton14, Button14
	Gui, Add, Button, x262 y239 w100 h30 gButton15, Button15
	Gui, Add, Button, x22 y289 w100 h30 gButton16, Button16
	Gui, Add, Button, x142 y289 w100 h30 gButton17, Button17
	Gui, Add, Button, x262 y289 w100 h30 gButton18, Button18
	Gui, Add, Button, x22 y339 w100 h30 gButton19, Button19
	Gui, Add, Button, x142 y339 w100 h30 gButton20, Button20
	Gui, Add, Button, x262 y339 w100 h30 gButton21, Button21
	Gui, Add, Button, x22 y389 w100 h30 gButton22, Button22
	Gui, Add, Button, x142 y389 w100 h30 gButton23, Button23
	Gui, Add, Button, x262 y389 w100 h30 gButton24, Button24
	Gui, Add, Button, x22 y439 w100 h30 gButton25, Button25
	Gui, Add, Button, x142 y439 w100 h30 gButton26, Button26
	Gui, Add, Button, x262 y439 w100 h30 gButton27, Button27
	Gui, Add, Button, x22 y489 w100 h30 gButton28, Button28
	Gui, Add, Button, x142 y489 w100 h30 gButton29, Button29
	Gui, Add, Button, x262 y489 w100 h30 gButton30, Button30

	return

	Button1: ;	Notice the 'g' is removed from the function call.
	gui_destroy() ;	Always call this on each function - it's good practice.
	msgbox, Script reloading.
	Reload ;	This script simply reloads the full programe.
	return

	Button2:
	gui_destroy()
	Run, %A_ScriptDir%
	return

	Button3:
	gui_destroy()
	msgbox, You pressed a button!
	return

	Button4:
	gui_destroy()
	msgbox, You pressed a button!
	return

	Button5:
	gui_destroy()
	msgbox, You pressed a button!
	return

	Button6:
	gui_destroy()
	msgbox, You pressed a button!
	return

	Button7:
	gui_destroy()
	msgbox, You pressed a button!
	return

	Button8:
	gui_destroy()
	msgbox, You pressed a button!
	return

	Button9:
	gui_destroy()
	msgbox, You pressed a button!
	return

	Button10:
	gui_destroy()
	msgbox, You pressed a button!
	return

	Button11:
	gui_destroy()
	msgbox, You pressed a button!
	return

	Button12:
	gui_destroy()
	msgbox, You pressed a button!
	return

	Button13:
	gui_destroy()
	msgbox, You pressed a button!
	return

	Button14:
	gui_destroy()
	msgbox, You pressed a button!
	return

	Button15:
	gui_destroy()
	msgbox, You pressed a button!
	return

	Button16:
	gui_destroy()
	msgbox, You pressed a button!
	return

	Button17:
	gui_destroy()
	msgbox, You pressed a button!
	return

	Button18:
	gui_destroy()
	msgbox, You pressed a button!
	return

	Button19:
	gui_destroy()
	msgbox, You pressed a button!
	return

	Button20:
	gui_destroy()
	msgbox, You pressed a button!
	return

	Button21:
	gui_destroy()
	msgbox, You pressed a button!
	return

	Button22:
	gui_destroy()
	msgbox, You pressed a button!
	return

	Button23:
	gui_destroy()
	msgbox, You pressed a button!
	return

	Button24:
	gui_destroy()
	msgbox, You pressed a button!
	return

	Button25:
	gui_destroy()
	msgbox, You pressed a button!
	return

	Button26:
	gui_destroy()
	msgbox, You pressed a button!
	return

	Button27:
	gui_destroy()
	msgbox, You pressed a button!
	return

	Button28:
	gui_destroy()
	msgbox, You pressed a button!
	return

	Button29:
	gui_destroy()
	msgbox, You pressed a button!
	return

	Button30:
	gui_destroy()
	msgbox, You pressed a button!
	return
}