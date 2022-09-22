;----------------SHORTCUTTER----------------------------------------------------------------
;The below opens a tabbed GUI with drop down menus. Primarily, this was to be used for selecting shortcuts to folders/programmes/websites ect.
;
;Each tab is created with it's unique DropDownList which contains a variable and list of options. The button then 'submits' the option selected
;within the DropDownList, then a series of If statements compare this variable to judge which function to run.
;--------------------------------------------------------------------------------

if UserInputBox = s

{
	gui_destroy()

	Gui, Add, Tab2, x2 y-1 w410 h60 , Folders|Programs|Websites
	Gui, +AlwaysOnTop -SysMenu +ToolWindow -caption +Border

	Gui, Tab, Folders
	Gui, Add, DropDownList, x12 y29 w340 vfolderChoice Sort, Documents|Downloads ;	Each tab must have a unique variable to submit a selection to
	Gui, Add, Button, x362 y29 w40 h20  gButtonOne , -> ;	For clarity each button has a seperate function. This also means that two DDL could share an item name without performing the same function.

	Gui, Tab, Programs
	Gui, Add, DropDownList, x12 y29 w340 vprogramChoice Sort, 1|2|3
	Gui, Add, Button, x362 y29 w40 h20  gButtonTwo , ->

	Gui, Tab, Websites
	Gui, Add, DropDownList, x12 y29 w340 vwebsiteChoice Sort, 1|2|3
	Gui, Add, Button, x362 y29 w40 h20  gButtonThree , ->

	Gui, Show, w416 h63, Shortcutter
	return

	ButtonOne:
	Gui, Submit ;	Submits the selected value from the DropDownList to the relevant variable.
	if folderChoice = Documents
		Run, C:\Users\%A_Username%\Documents

	if folderChoice = Downloads
		Run, C:\Users\%A_Username%\Downloads
	gui_destroy()
	return

	ButtonTwo:
	Gui, Submit
	MsgBox, %programeChoice%
	gui_destroy()
	return

	ButtonThree:
	Gui, Submit
	MsgBox, %websiteChoice%
	gui_destroy()
	return
}