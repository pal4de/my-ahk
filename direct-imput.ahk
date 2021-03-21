DirectImput(char) {
	mode := IME_GET()

	IME_SET(0)
	SendRaw, %char%
	IME_SET(mode)

	Return
}

<!1:: DirectImput("1")
<!2:: DirectImput("2")
<!3:: DirectImput("3")
<!+1:: DirectImput("!")
<!+2:: DirectImput("@")
<!+3:: DirectImput("#")
<!+;:: DirectImput(":")
