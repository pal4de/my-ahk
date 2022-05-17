F13 & Tab:: LAlt
F13 & Space:: AppsKey

F13 & h:: Left
F13 & j:: Down
F13 & k:: Up
F13 & l:: Right

F13 & n:: ^Left
F13 & m:: ^Down
F13 & ,:: ^Up
F13 & .:: ^Right

F13 & y:: Home
F13 & u:: PgDn
F13 & i:: PgUp
F13 & o:: End

F13 & a:: !Space ; PowerToys Run

F13 & f:: !Esc
F13 & d:: +!Esc
F13 & g::
	Send, ^#{Right}
	Return
F13 & s::
	Send, ^#{Left}
	Return

F13 & 1:: #!p

F13 & Enter::
	state := GetKeyState("CapsLock", "T")
	if (state) {
		SetCapsLockState, AlwaysOff
	} else {
		SetCapsLockState, AlwaysOn
	}
	Return

F13 & t:: #!q ; Todoist Quick Add

F13 & LButton::
		ActivatePointedWindow()
		Send, {Browser_Back}
		Return
F13 & RButton::
		ActivatePointedWindow()
		Send, {Browser_Forward}
		Send {RCtrl DOWN}{Alt DOWN}{Alt UP}{RCtrl UP}
		Return
