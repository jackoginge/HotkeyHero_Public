# HotkeyHero_Public
The public branch of my HotkeyHero, AHK launcher.

INTRODUCTION
---------------------- 
The HotkeyHero progam was heavily influenced by another GitHub member - Asger Juul Brunshøj - which I was impressed by and utilised for many years. After some time I deleted my copy of Asger's work and built my own with a similar concept, adding a number of moduals. I keep a 'private' copy of this repository for my own personal commands but plan to update this public version with any new moduals I add.
----------------------
FILE DESCRIPTIONS
---------------------- 
HotkeyHero.ahk

This is the initalisation script & calls all other scripts.

This calls the initial GUI, which has the UserInputBox. This is the core of the programme and used to call other commands/moduals.

----------------------
Commands.ahk

This modual is for commands that run directly from the initial GUI.

---------------------- 
Buttons.ahk

This modual is a button orientated interface, called from the inital GUI. Primarily, I utilise this for commands that I don't utilise too often  - maybe they interact with a specific piece of software. I've left some script-specific functions on here as examples.

----------------------
Shortcutter.ahk

This modual is a series of dropdownlists under different tabs. An item is selected from within a list and the '->' button is pressed to activate the associated command. I primarily use this for links to folders, programs and websites.

----------------------
USING HOTKEYHERO & MAKING CHANGES
---------------------- 
To initialise HotkeyHero, run HotkeyHero.ahk. This then calls all other moduals with the #include function.

The variable UserInputBox contains text input you type into the initial GUI and is submitted 'live' so all related functions are based on 'IF UserInputBox = '. The best place to see an example of this is the begining of the Shortcutter.ahk script.

Each script is commented with specifics on how it works and how to further edit & customise it.

----------------------
CONTACT
---------------------- 
If you've any questions, suggestions or issues you can find me on GitHub - https://github.com/jackoginge
