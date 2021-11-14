#IfWinActive ahk_exe explorer.exe
	F1:: Esc
	^BackSpace::
		Send, ^+{Left}{BackSpace}
		Return

	; Ctrl Shift PでPowerRun
	^+P::
		Send, !{Space}
		Return
#IfWinActive, ahk_class Shell_TrayWnd
	MButton:: MButton
#IfWinActive
