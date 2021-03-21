; alt-ime-ahk.ahk
;
; karakaram (http://www.karakaram.com/alt-ime-on-off)

*~a::
*~b::
*~c::
*~d::
*~e::
*~f::
*~g::
*~h::
*~i::
*~j::
*~k::
*~l::
*~m::
*~n::
*~o::
*~p::
*~q::
*~r::
*~s::
*~t::
*~u::
*~v::
*~w::
*~x::
*~y::
*~z::
*~1::
*~2::
*~3::
*~4::
*~5::
*~6::
*~7::
*~8::
*~9::
*~0::
*~F2::
*~F3::
*~F4::
*~F5::
*~F6::
*~F7::
*~F8::
*~F9::
*~F10::
*~F11::
*~F12::
*~`::
*~~::
*~!::
*~@::
*~#::
*~$::
*~%::
*~^::
*~&::
*~*::
*~(::
*~)::
*~-::
*~_::
*~=::
*~+::
*~[::
*~{::
*~]::
*~}::
*~\::
*~|::
*~;::
*~'::
*~"::
*~,::
*~<::
*~.::
*~>::
*~/::
*~?::
*~Esc::
*~Tab::
*~Space::
*~Left::
*~Right::
*~Up::
*~Down::
*~Enter::
*~Delete::
*~Home::
*~End::
*~PgUp::
*~PgDn::
	Return

#MenuMaskKey vk3A

*~LAlt::Send {Blind}{vk3A}
*~RAlt::Send {Blind}{vk3A}

LAlt up::
	If (A_PriorHotkey == "*~LAlt")
	{
		Send, {Blind}{vk1D}
	}
	Send, {LAlt up}
	Return

RAlt up::
	If (A_PriorHotkey == "*~RAlt")
	{
		Send, {Blind}{vk1C}
	}
	Send, {RAlt up}
	Return
