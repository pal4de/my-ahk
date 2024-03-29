﻿/*
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
#Include capslock.ahk
#Include explorer.ahk
#Include myfunc.ahk
#Include necrodancer.ahk
#Include touchpad.ahk
#Include hotstrings.ahk

#Include *i local.ahk

; long [Fn] + [F1]|[F2]|[F3] -> [再生停止]|[前へ]|[次へ]
; sc120: [Fn] + [F1]
; sc12E: [Fn] + [F2]
; sc130: [Fn] + [F3]
sc120:: LongPress("sc120", "{Media_Play_Pause}")
sc12E:: LongPress("sc12E", "{Media_Prev}")
sc130:: LongPress("sc130", "{Media_Next}")

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

; ライトテーマ/ダークテーマ切り替え
#M::
	Send, {LWin Up}
	subkey = SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize
	RegRead, currentMode, HKCU, %subkey%, AppsUseLightTheme
	newMode := currentMode == 0 ? 1 : 0
	RegWrite, REG_DWORD, HKCU, %subkey%, AppsUseLightTheme, %newMode%
Return

; 日付挿入
::%%date::
	FormatTime, DateString,, yyyy年MM月dd日
	Send, %DateString%
Return
::%%time::
	FormatTime, TimeString,, HH時mm分
	Send, %TimeString%
Return
::%%datetime::
	FormatTime, DateString,, yyyy年MM月dd日 HH時mm分
	Send, %DateString%
Return

