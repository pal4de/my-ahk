#IfWinNotActive ahk_group Group_Disable_RockerGesture
	~LButton & RButton::
		ActivatePointedWindow()
		Send, {Browser_Forward}
		flag_disableContextMenu := True
		Return
	~RButton & LButton::
		ActivatePointedWindow()
		Send, {Browser_Back}
		flag_disableContextMenu := True
		Return

	~LButton & RButton Up:: Return
	~RButton Up::
		if flag_disableContextMenu {
			Sleep, 150
			SendInput, {Esc}
			flag_disableContextMenu := False
			Sleep, 100
		}
		Return
#IfWinNotActive
