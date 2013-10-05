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
Version := "v0.7"

/**
 * Global Variables
 *
 * Edit only if you are sure enough.
 */

; The path to 7Zip executable. Make sure 7z.dll is present too.
7ZipPath := "Data\7z.exe"

; Folders to backup
; Source := "D:\I, Coder\@ GitHub\backup-buddy"
Sources =
( LTrim Join|
D:\I, Coder\@ GitHub\backup-buddy
D:\I, Coder\@ GitHub\win-butler
)

; The directory where the backups will be saved
Destination := "F:\Backups"

; A password if you want the backups to be protected.
Password := ""

; Time in minutes when the backups will be performed
Period := 1

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

; ######################## Preparatory ########################

; Create the root if it doesn't exist
FileCreateDir, %Destination%

; Compression method to use. See 7Zip help.
Method := "-mx9"

; Assume yes on all stuff
Yes := "-y"

; If Password is provided - use it.
If (Password != "")
	PSwitch := "-p" . Password . " -mhe"
Else
	PSwitch := ""

; ExcludeFiles := "-xr!*.ahk"
; ExcludeFolders := "-xr!Help"
; Params = %Destination%\%DestDir%\%FileName%.7z "%Source%" %Yes% %Method% %ExcludeFiles% %ExcludeFolders%
; FileDelete, %Destination%\%DestDir%\*.7z ; delete previous ones

SetTimer, Backup, % Period * 60 * 1000

Return	 ; End of Auto Execute Section

; ######################## Core Logic #########################

/**
 * Loop through sources and backup them
 *
 * Todo: What if the source doesn't exist?
 */

Backup:
	Loop, Parse, sources, |
	{
		SplitPath, A_LoopField, FolderName
		DestDir := Destination "\" FolderName

		If FileExist(DestDir)
		{
			FileName = %A_DD%-%A_MMM%-%A_YYYY%-%A_Hour%-%A_Min%-%A_Sec%

			Params = %DestDir%\%FileName%.7z "%A_LoopField%" %Yes% %Method% %PSwitch%

			Run, % 7ZipPath . " a " . Params, %A_ScriptDir%, Hide
		}
	}
Return

; ######################## Misc. Stuff ########################

/**
 * Miscellaneous Routines
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