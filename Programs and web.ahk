#1::Run www.google.com	;WIN+1 opens Google.com

#2::Run www.gmail.com

#3::Run https://drive.google.com/#all

#a::Run www.aftonbladet.se

#e::Run www.expressen.se

#g::Run www.gp.se

#d::Run www.dn.se

#m::Send {Volume_Mute}	;Mute/unmute the master volume.

^!a::					;CTRL+ALT+A open Avanza and Avanza Mini
Run https://www.avanza.se/mini/mitt_konto
Run https://www.avanza.se/aza/depa/sammanfattning/sammanfattning.jsp
return

#s::					;WIN+S changes default sound device
Run, mmsys.cpl
WinWait,Sound
ControlSend,SysListView321,{Down 2}
ControlGet, isEnabled, Enabled,,&Set Default
if(!isEnabled)
{
  ControlSend,SysListView321,{Down 2}
}
ControlClick,&Set Default
ControlClick,OK
return

^!c::Run calc.exe		;CTRL+ALT+C opens Calculator

^!n::					;CTRL+ALT+N opens Notepad
IfWinExist Untitled - Notepad
	WinActivate
else
	Run Notepad
return
