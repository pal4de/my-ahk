#IfWinActive ahk_exe code.exe
	WheelRight::
		Send, +{WheelDown}
		Return
	WheelLeft::
		Send, +{WheelUp}
		Return
#IfWinActive
