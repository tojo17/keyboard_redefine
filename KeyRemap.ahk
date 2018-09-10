#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.

if(! A_IsAdmin)
{
    ;dll calls window movers will not work without admin
    Run *RunAs "%A_ScriptFullPath%"  ; Requires v1.0.92.01+
    ExitApp
}

; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
;; on every keyboard
; RAlt to switch input method
RAlt::send {LAlt Down}{Shift}{LAlt Up}
; ctrl alt + arrow to trigger home end pgup pgdown
; ~^!Left::Home
; ~^!Right::End
; ~^!Up::PgUp
; ~^!Down::PgDn

; remaps contrl key
; CapsLock::LControl
CapsLock::LControl
; #CapsLock::CapsLock
