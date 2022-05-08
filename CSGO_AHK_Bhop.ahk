#SingleInstance Force

F11:: Hotkey, *~$Space, Toggle ;Отключение/Включение бинда на пробел
BHOP := False
End::ExitApp


; *~$Space::
; Loop
; {
;     GetKeyState, SpaceState, Space, P
;     If SpaceState = U
;         break

;     Random, Rand1, 1, 2  ;Рандом интервал, чтобы не палил анти чит
;     sleep % Rand1

;     SendInput, {Blind}{Space}
; }
; Return

*~$Space::

Sleep 5
BHOP := True
Loop
{
    GetKeyState, SpaceState, Space, P
    If SpaceState = U or WinActive("ahk_exe csgo.exe") = False
    {
        BHOP := False
        break
    }
    
    Random, Rand1, 20, 40 ;Рандом интервал, чтобы не палил анти чит
    sleep % Rand1
}
Return

; Send, {Blind}{.}

