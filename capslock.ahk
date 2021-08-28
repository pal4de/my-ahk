#^c::
	state := GetKeyState("CapsLock", "T")
	if (state) {
		SetCapsLockState, AlwaysOff
	} else {
		SetCapsLockState, AlwaysOn
	}
	Return

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
F13 & g:: ^#Right
F13 & s:: ^#Left

F13 & 1:: Run "%USERPROFILE%\AppData\Local\1Password\app\7\1Password.exe"
