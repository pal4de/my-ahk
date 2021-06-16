#IfWinActive ahk_exe explorer.exe
	F1:: Esc
	^BackSpace::
		Send, ^+{Left}{BackSpace}
		Return
#IfWinActive, ahk_class Shell_TrayWnd
	MButton:: MButton
#IfWinActive

~MButton::
	ActivatePointeredWindow()
	IfWinActive, ahk_group Group_Explorer
	{
		Send, {RButton}E
	}
	Return
MButton & RButton::
	ActivatePointeredWindow()
	IfWinActive, ahk_group Group_Explorer
	{
		Send, !{Up}
	}
	Return
