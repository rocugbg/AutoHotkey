#g::Run www.google.com			;WIN+G opens Google.com

#s::Run www.stackoverflow.com	;WIN+S opens StackOverflow.com

#m::Send {Volume_Mute}			;Mute/unmute the master volume.

#c::Run calc.exe				;WIN+C opens Calculator

#h::WinMinimize, A				;WIN+H minimizes active window

Capslock::^w					;Caps Lock acts as CTRL+W

; Always on Top
^SPACE:: Winset, Alwaysontop, , A ; ctrl + space
Return