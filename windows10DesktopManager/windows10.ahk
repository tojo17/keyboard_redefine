#SingleInstance

Menu, Tray, noicon
; Menu, Tray, icon, %A_ScriptDir%\virtualDesktopManager.ico, 1

if(! A_IsAdmin)
{
    ;dll calls window movers will not work without admin
    Run *RunAs "%A_ScriptFullPath%"  ; Requires v1.0.92.01+
    ExitApp
}
 /*
  * Alternatively you can use the hotkeyManager to set the hotkeys after the JPGIncDesktopManagerClass has been
  * constructed like this
  */
globalDesktopManager := new JPGIncDesktopManagerClass()
globalDesktopManager
    ; .setGoToDesktop("")
    ; .setMoveWindowToDesktop("")
    ; .afterGoToDesktop("turnCapslockOff")
    ; .afterMoveWindowToDesktop("turnCapslockOff")
    
    .setGoToNextDesktop("#w")
    .setGoToPreviousDesktop("#q")
    .setMoveWindowToNextDesktop("#s")
    .setMoveWindowToPreviousDesktop("#a")
    .followToDesktopAfterMovingWindow(true)
	;~ .setCloseDesktop("Capslock & x")
	;~ .setNewDesktop("Capslock & n")

return

; #c::ExitApp
; RAlt to switch input method
; RAlt::send {LAlt Down}{Space}{LAlt Up}
;; on japanese hhkb
; Rshift to home / end
; RShift::Home
; # & RShift::EndS
; kana to no input method
; SC070::+^1
; yen to delete
; SC07D::Delete
; dash to Rshift
; SC073::RShift
; henkan to ctrl + alt + space (music player pause)
; SC079::^!Space
; muhenkan to a fake fn for f keys
SC07B & 1::F1
SC07B & 2::F2
SC07B & 3::F3
SC07B & 4::F4
SC07B & 5::F5
SC07B & 6::F6
SC07B & 7::F7
SC07B & 8::F8
SC07B & 9::F9
SC07B & 0::F10
SC07B & -::F11
SC07B & =::F12

; mouse keys
; XButton2::^w
^XButton2::#^Left
^XButton1::#^Right
#WheelUp::Volume_Up
#WheelDown::Volume_Down

#Include desktopManager.ahk
#Include desktopChanger.ahk
#Include windowMover.ahk
#Include desktopMapper.ahk
#include virtualDesktopManager.ahk
#Include monitorMapper.ahk
#Include hotkeyManager.ahk
#Include commonFunctions.ahk
#Include dllWindowMover.ahk
