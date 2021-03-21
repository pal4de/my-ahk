DirectInput(char) {
	mode := IME_GET()

	IME_SET(0)
	SendRaw, %char%
	IME_SET(mode)

	Return
}

<!1:: DirectInput("1")
<!2:: DirectInput("2")
<!3:: DirectInput("3")
<!+1:: DirectInput("!")
<!+2:: DirectInput("@")
<!+3:: DirectInput("#")
<!+;:: DirectInput(":")
