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

; RightShift + = presses NumPad+ button
RShift & =::
Send, {NumpadAdd}
return

; RightShift + - presses NumPad- button
RShift & -::
Send, {NumpadSub}
return

; RightShift + 8 presses NumPad* button
RShift & 8::
Send, {NumpadMult}
return

; RightCtrl + = presses Ctrl + NumPad+ combination
RControl & =::
Send, ^{NumpadAdd}
return

; RightCtrl + - presses Ctrl + NumPad- combination
RControl & -::
Send, ^{NumpadSub}
return

; RightCtrl + 8 presses Ctrl + NumPad* combination
RControl & 8::
Send, ^{NumpadMult}
return

; LeftControl+RightControl exit from remaper
LControl & RControl::
ExitApp

_Help:
MsgBox, 64, %AppName%, Remapped Keys`n`n[RShift+=] > Numpad+`n[RShift+-]  > Numpad-`n[RShift+8] > Numpad*`n[RCtrl+=] > Ctrl + Numpad+`n[RCtrl+-] > Ctrl + Numpad-`n[RCtrl+8] > Ctrl + Numpad*`n`n[LCtrl+RCtrl] > Close the App
return

_Exit:
ExitApp