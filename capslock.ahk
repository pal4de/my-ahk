F13 & Tab:: LAlt
F13 & Space:: AppsKey

F13 & Enter::
	state := GetKeyState("CapsLock", "T")
	if (state) {
		SetCapsLockState, AlwaysOff
	} else {
		SetCapsLockState, AlwaysOn
	}
	Return


F13 & h:: Left
F13 & j:: Down
F13 & k:: Up
F13 & l:: Right

F13 & n:: ^Left
F13 & .:: ^Right

F13 & y:: Home
F13 & u:: PgDn
F13 & i:: PgUp
F13 & o:: End

F13 & f:: AltTab
F13 & d:: ShiftAltTab
F13 & g:: ^#Right
F13 & s:: ^#Left

F13 & 1:: Run "%USERPROFILE%\AppData\Local\1Password\app\7\1Password.exe"
