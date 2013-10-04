/**
 * Backup Buddy
 *
 * Compress and Backup folders every
 *
 * @dufferzafar
 */

/**
 * Script Settings
 *
 * Do not touch if you are unsure of anything.
 */
#NoEnv
#SingleInstance Force
#Persistent
#NoTrayIcon
#KeyHistory 0
SetWorkingDir %A_ScriptDir%

Name := "Backup Buddy"
Version := "v0.0.1"

/**
 * Global Variables
 *
 * Edit only if you are sure enough.
 */


; ######################## Script Begins ########################

OnExit, CloseMe

; Modify the Menu
Menu, Tray, NoStandard
Menu, Tray, Tip, %Name% ; %Version%

Menu, Tray, Add, &Suspend, SuspendMe
Menu, Tray, Add, &Exit, CloseMe

; Set the icon if it exist
IfExist, %A_ScriptDir%\Data\White.ico
	Menu, Tray, Icon, %A_ScriptDir%\Data\White.ico

Menu, Tray, Icon	;Else show default icon

; Let the user know we have started
TrayTip, %Name% %Version%,
(

Ready for backups...

Consult readme for usage instructions.
)
SetTimer, RemoveTrayTip, 2500


/**
 * Miscellaneous Routines
 *
 */

RemoveToolTip:
	SetTimer, RemoveToolTip, Off
	ToolTip
Return

RemoveTrayTip:
	SetTimer, RemoveTrayTip, Off
	TrayTip
Return

SuspendMe:
	Suspend, Toggle
Return

CloseMe:
	ExitApp