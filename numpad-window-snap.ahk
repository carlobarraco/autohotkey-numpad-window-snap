#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

PositionActiveWindow(X,Y,W,H)
{
    WinGetActiveTitle, WinTitle
    WinMove, %WinTitle%,,X * (A_ScreenWidth/2),Y*(A_ScreenHeight/2),W*A_ScreenWidth/2,H*A_ScreenHeight/2
}

#Numpad7::
PositionActiveWindow(0,0,1,1)
Return

#Numpad8::
PositionActiveWindow(0,0,2,1)
Return

#Numpad9::
PositionActiveWindow(1,0,1,1)
Return

#Numpad4::
PositionActiveWindow(0,0,1,2)
Return

#Numpad5::
PositionActiveWindow(0,0,2,2)
Return

#Numpad6::
PositionActiveWindow(1,0,1,2)
Return

#Numpad1::
PositionActiveWindow(0,1,1,1)
Return

#Numpad2::
PositionActiveWindow(0,1,2,1)
Return

#Numpad3::
PositionActiveWindow(1,1,1,1)
Return

#Numpad0::
WinGetActiveTitle, WinTitle
WinMinimize, %WinTitle%
Return