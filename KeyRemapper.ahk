#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Menu, Tray, NoStandard
Menu, Tray, Add, &Help, _Help ;add a item named Change that goes to the Change label
Menu, Tray, Add
Menu, Tray, Add, &Exit, _Exit ;add a item named Exit that goes to the ButtonExit label

AppName = Key Remapper
TrayTip, %AppName%, %AppName% is running, 1, 1

; Alt+Shift+= presses NumPad + button
!+=::
Send, {NumpadAdd}
return

; Alt+Shift+- presses NumPad - button
!+-::
Send, {NumpadSub}
return

; Alt+Shift+8 presses NumPad * button
!+8::
Send, {NumpadMult}
return

; LeftControl+RightControl exit from remaper
LControl & RControl::
ExitApp

_Help:
MsgBox, 64, %AppName%, Remapped Keys`n`n[ALT+SHIFT+=] > Numpad+`n[ALT+SHIFT+-]  > Numpad-`n[ALT+SHIFT+8] > Numpad*`n`n[LCtrl+RCtrl] > Close the App
return

_Exit:
ExitApp