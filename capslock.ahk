F13 & b:: Left
F13 & n:: Down
F13 & p:: Up
F13 & f:: Right
F13 & a:: Home
F13 & e:: End
F13 & d:: Delete
F13 & h:: Backspace
F13 & k:: Send {Shift Down}{End}{Shift Up}{Delete}
F13 & o:: Send {End}{Enter}

F13 & q:: !F4
F13 & Space:: !Space

F13 & Enter::
	state := GetKeyState("CapsLock", "T")
	if (state) {
		SetCapsLockState, AlwaysOff
	} else {
		SetCapsLockState, AlwaysOn
	}
Return

F13 & LButton::
	ActivatePointedWindow()
	Send, {Browser_Back}
Return
F13 & RButton::
	ActivatePointedWindow()
	Send, {Browser_Forward}
	Send {RCtrl DOWN}{Alt DOWN}{Alt UP}{RCtrl UP}
Return
