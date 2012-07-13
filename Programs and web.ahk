#1::Run www.google.com ;WIN+1

#2::Run www.gmail.com

#3::Run https://drive.google.com/#all

#a::Run www.aftonbladet.se

#e::Run www.expressen.se

#g::Run www.gp.se

#d::Run www.dn.se

#m::Send {Volume_Mute}  ; Mute/unmute the master volume.

#s:: ;WIN+s changes default sound device
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
; WinWaitClose
; SoundPlay, *-1
return

^!n:: ;CTRL+ALT+N
IfWinExist Untitled - Notepad
	WinActivate
else
	Run Notepad
return
