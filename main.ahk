/*
scは実際に搭載されているキー向け
vkは搭載されていないキー向け


+: Shift
^: Ctrl
!: Alt
#: Windows

*: 修飾キー何でも～
<: 左の～
>: 右の～
~: イベントを流しつつ～
$: AHKからの呼び出しを無効化


sc163: [Fn]
vk1C: [変換]


CapsLockをレジストリエディタで書き換えてF13にリマップしてます！！！！
*/

GroupAdd, Group_Disable_RockerGesture, Microsoft Minesweeper
GroupAdd, Group_Disable_RockerGesture, Minesweeper Arbiter
GroupAdd, Group_Disable_F1, explorer.exe
GroupAdd, Group_Explorer, ahk_class WorkerW
GroupAdd, Group_Explorer, ahk_class CabinetWClass

flag_disableContextMenu := False

Exit ;Auto-Execute ここまで

#MaxHotkeysPerInterval 70
#InstallKeybdHook

#Include %A_ScriptDir%
#Include altime.ahk
#Include capslock.ahk
#Include direct-input.ahk
#Include explorer.ahk
#Include myfunc.ahk
#Include necrodancer.ahk
#Include rockergesture.ahk
#Include touchpad.ahk


; long [Fn] + [F1]|[F2]|[F3] -> [再生停止]|[前へ]|[次へ]
; sc120: [Fn] + [F1]
; sc12E: [Fn] + [F2]
; sc130: [Fn] + [F3]
sc120:: LongPress("sc120", "{Media_Play_Pause}")
sc12E:: LongPress("sc12E", "{Media_Prev}")
sc130:: LongPress("sc130", "{Media_Next}")


; Ctrl + `のIME切り替えを抑止
<^vkF3::
<^vkF4::
	Send, {RCtrl Down}{sc029}{RCtrl Up}
	Return
>^vkF3::
>^vkF4::
	Send, ^{sc029}
	Return


+#r:: Reload
+#e:: Run, cmd.exe /c code "%USERPROFILE%\Documents\AutoHotKey",, hide

; 押下状態になりやすいキーのリセット
!^Esc::
	Send, {RShift Up}{LShift Up}
	Send, {RCtrl Up}{LCtrl Up}
	Send, {RWin Up}{LWin Up}
	Send, {RAlt Up}{LAlt Up}
	Send, {Up Up}{Left Up}{Right Up}{Down Up}
	Send, {RButton Up}{MButton Up}
	Send, {Esc}
	Return


; マウス側面ボタン
F14::
	ActivatePointeredWindow()
	Send, !{Left}
	Return


; ライトテーマ/ダークテーマ切り替え
	Send, {LWin Up}
	subkey = SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize
	RegRead, currentMode, HKCU, %subkey%, AppsUseLightTheme
	newMode := currentMode == 0 ? 1 : 0
	RegWrite, REG_DWORD, HKCU, %subkey%, AppsUseLightTheme, %newMode%
	Return
