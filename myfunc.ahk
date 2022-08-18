LongPress(key, long, short="%key%", t=0.4)
{
	t := "T" . t
	if (short == "%key%") {
		short := "{" . key . "}"
	}
	; 離したのがt秒以内だったかどうか判定
	; 以内ならErrorLevelは0
	; そうでなければ1
	KeyWait, %key%, %t%
	if (ErrorLevel <> 0) {
		k := long
	} else {
		k := short
	}
	if (k <> "") {
		Send, %k%
	}
	Return
}
ActivatePointedWindow()
{
	MouseGetPos, , , id
	WinActivate, ahk_id %id%
	Return
}
