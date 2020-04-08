
^!c::
WinGet, id, list, , , Program Manager
Loop, %id%
{
	StringTrimRight, this_id, id%a_index%, 0
	WinGetTitle, this_title, ahk_id %this_id%
	winclose,%this_title%
}
WinGet, id, list, , , Program Manager
Loop, %id%
{
	StringTrimRight, this_id, id%a_index%, 0
	WinGetTitle, this_title, ahk_id %this_id%
	winclose,%this_title%
}
WinGet, id, list, , , Program Manager
Loop, %id%
{
	StringTrimRight, this_id, id%a_index%, 0
	WinGetTitle, this_title, ahk_id %this_id%
	winclose,%this_title%
}

TrayTip, "VenControl", "Closed all windows", 5, 1
Return

^!w::
{
Send {CTRL down}{ALT down}g {CTRL up}{ALT up}
Sleep, 1000
Send {CTRL down}{Pgdn}{CTRL up}
Sleep, 300
TrayTip, "VenControl", "Webex Sessions...", 5, 1
Return
}

^!z::
{

Gui, Add, Tab2,, Email|Webex|Classroom|Websites  ; Tab2 vs. Tab requires v1.0.47.05.
Gui, Add, Checkbox, vMyCheckbox, Sample checkbox
Gui, Tab, 2
Gui, Add, Radio, vBaris, Baris
Gui, Add, Radio, vICC, ICC
Gui, Add, Radio, vT1, T1
Gui, Add, Radio, vT3, T3
Gui, Add, Radio, vFritz, Fritz
Gui, Add, Radio, vYev, Yev
Gui, Add, Radio, vAlla, Alla
Gui, Add, Radio, vStan, Stan
Gui, Add, Radio, vFriday, Friday
Gui, Tab, 3
Gui, Add, Checkbox, vClassroom checked, Classroom
Gui, Tab, 4
Gui, Add, Edit, r1 vMyEdit,

Gui, Tab  ; i.e. subsequently-added controls will not belong to the tab control.
Gui, Add, Button, default xm, OK  ; xm puts it at the bottom left corner.
Gui, Show
Sleep, 10
Send {CTRL down}{Pgdn}{CTRL up}
Sleep, 10
Send {CTRL down}{Pgdn}{CTRL up}
Sleep, 10
Send {CTRL down}{Pgdn}{CTRL up}
return

ButtonOK:

Gui, Submit  ; Save each control's contents to its associated variable.
;MsgBox You entered:`n%MyCheckbox%`n%MyRadio%`n%MyEdit%
Length := StrLen(MyEdit)
if (Length > 0)
{
	StringLower, MyEdit, MyEdit
	if (MyEdit = "cl")
	{
		Gui, Hide
		Sleep, 1000
		SetKeyDelay, 0
		Send, {LWINDOWN}{LWINUP}
		SetKeyDelay, 100
		Sleep, 100
		Send, classroom
		Send, {ENTER}
		Sleep, 100
		TrayTip, "VenControl", "Classroom..", 5, 1

	}
	if (MyEdit = "gb")
	{
		Gui, Hide
		Sleep, 1000
		SetKeyDelay, 0
		Send, {LWINDOWN}{LWINUP}
		SetKeyDelay, 100
		Sleep, 100
		Send, gitbash
		Send, {ENTER}
		Sleep, 100
		TrayTip, "VenControl", "Classroom..", 5, 1

	}
	if (MyEdit = "ya")
	{
		Gui, Hide
		Sleep, 1000
		SetKeyDelay, 0
		Send, {LWINDOWN}{LWINUP}
		SetKeyDelay, 100
		Sleep, 100
		Send, yahoo
		Send, {ENTER}
		Sleep, 100
		TrayTip, "VenControl", "Classroom..", 5, 1
	}
	if (MyEdit = "am")
	{
		Gui, Hide
		Sleep, 1000
		SetKeyDelay, 0
		Send, {LWINDOWN}{LWINUP}
		SetKeyDelay, 100
		Sleep, 100
		Send, amazon.com
		Send, {ENTER}
		Sleep, 100
		TrayTip, "VenControl", "Classroom..", 5, 1
	}
	if (MyEdit = "ym")
	{
		Gui, Hide
		Sleep, 1000
		SetKeyDelay, 0
		Send, {LWINDOWN}{LWINUP}
		SetKeyDelay, 100
		Sleep, 100
		Send, yahoo mail
		Send, {ENTER}
		Sleep, 100
		TrayTip, "VenControl", "Classroom..", 5, 1

	}
	if (MyEdit = "gm")
	{
		Gui, Hide
		Sleep, 1000
		SetKeyDelay, 0
		Send, {LWINDOWN}{LWINUP}
		SetKeyDelay, 100
		Sleep, 100
		Send, gmail\
		Send, {ENTER}
		Sleep, 100
		TrayTip, "VenControl", "Classroom..", 5, 1

	}
	if (MyEdit = "gn")
		{
			Gui, Hide
			Sleep, 1000
			SetKeyDelay, 0
			Send, {LWINDOWN}{LWINUP}
			SetKeyDelay, 100
			Sleep, 100
			Send, google news
			Send, {ENTER}
			Sleep, 100
			TrayTip, "VenControl", "Classroom..", 5, 1

	}
}
else if (Classroom = 1)
{
	Gui, Hide
	SetKeyDelay, 0

	Send, {LWINDOWN}{LWINUP}
	SetKeyDelay, 100
	Sleep, 100
	Send, classroom
	Send, {ENTER}
	Sleep, 100
	TrayTip, "VenControl", "Classroom...", 5, 1


}
else if (MyCheckbox = 1)
{
	Gui, Hide
	Sleep, 1000
	TrayTip, "VenControl", "Bringing up Outlook", 5, 1
	Send {CTRL down}{ALT down}o {CTRL up}{ALT up}
}
else if (Baris = 1)
{
	Gui, Hide
	Sleep, 1000
	TrayTip, "VenControl", "Webex with Baris", 5, 1
	Send {CTRL down}{ALT down}i{CTRL up}{ALT up}
	Sleep, 3000

	SetKeyDelay, 100
	Send {ALT down}d{ALT up}
		Sleep, 400
	Send, https://cmeg.webex.com/meet/Baris.Mestanogullari
	Send {ENTER}
	Sleep, 4000

	Send, {TAB}
	Sleep, 100
	Send, {TAB}
	Sleep, 100
	Send, {TAB}
	Sleep, 100
	Send, {TAB}
	Sleep, 100
	Send, {TAB}
	Sleep, 100
	Send, {TAB}
	Sleep, 100
	Send, Ven
	Sleep, 100
	Send, {TAB}
	Sleep, 100
	Send Ven@Ven.com
	Sleep, 100
	Send {ENTER}
	Sleep, 100
}
else if (ICC = 1)
{
	Gui, Hide
	Sleep, 1000
	TrayTip, "VenControl", "ICC Standup", 5, 1
	Send {CTRL down}{ALT down}i{CTRL up}{ALT up}
	Sleep, 3000

	SetKeyDelay, 100
	Send {ALT down}d{ALT up}
		Sleep, 400
	Send, https://cmeg.webex.com/cmeg/j.php?MTID=mb23f52b20feb03e68d074e79b67b09d0
	Send {ENTER}
	Sleep, 4000

	Send, {TAB}
	Sleep, 100
	Send, {TAB}

	Sleep, 100
	Send, {TAB}
	Sleep, 100
	Send, {TAB}
	Sleep, 100
	Send, Ven
	Sleep, 100
	Send, {TAB}
	Sleep, 100
	Send Ven@Ven.com
	Sleep, 100
	Send {ENTER}
	Sleep, 100
}
else if (Yev = 1)
{
	Gui, Hide
	Sleep, 1000
	TrayTip, "VenControl", "ICC Standup", 5, 1
	Send {CTRL down}{ALT down}i{CTRL up}{ALT up}
	Sleep, 3000

	SetKeyDelay, 100
	Send {ALT down}d{ALT up}
		Sleep, 400
	Send, https://cmeg.webex.com/meet/Yevgeniy.Brailovskiy
	Send {ENTER}
	Sleep, 4000

	Send, {TAB}
	Sleep, 100
	Send, {TAB}
	Sleep, 100
	Send, {TAB}
	Sleep, 100
	Send, {TAB}
	Sleep, 100
	Send, {TAB}
	Sleep, 100
	Send, {TAB}
	Sleep, 100
	Send, Ven
	Sleep, 100
	Send, {TAB}
	Sleep, 100
	Send Ven@Ven.com
	Sleep, 100
	Send {ENTER}
	Sleep, 100
}
else if (Alla = 1)
{
	Gui, Hide
	Sleep, 1000
	TrayTip, "VenControl", "ICC Standup", 5, 1
	Send {CTRL down}{ALT down}i{CTRL up}{ALT up}
	Sleep, 3000

	SetKeyDelay, 100
	Send {ALT down}d{ALT up}
		Sleep, 400
	Send, https://cmeg.webex.com/meet/Alla.Layvant
	Send {ENTER}
	Sleep, 4000

	Send, {TAB}
	Sleep, 100
	Send, {TAB}
	Sleep, 100
	Send, {TAB}
	Sleep, 100
	Send, {TAB}
	Sleep, 100
	Send, {TAB}
	Sleep, 100
	Send, {TAB}
	Sleep, 100
	Send, Ven
	Sleep, 100
	Send, {TAB}
	Sleep, 100
	Send Ven@Ven.com
	Sleep, 100
	Send {ENTER}
	Sleep, 100
}
else if (Stan = 1)
{
	Gui, Hide
	Sleep, 1000
	TrayTip, "VenControl", "Stan", 5, 1
	Send {CTRL down}{ALT down}i{CTRL up}{ALT up}
	Sleep, 3000

	SetKeyDelay, 100
	Send {ALT down}d{ALT up}
		Sleep, 400
	Send, https://cmeg.webex.com/meet/Stanislav.Liberman
	Send {ENTER}
	Sleep, 4000

	Send, {TAB}
	Sleep, 100
	Send, {TAB}
	Sleep, 100
	Send, {TAB}
	Sleep, 100
	Send, {TAB}
	Sleep, 100
	Send, {TAB}
	Sleep, 100
	Send, {TAB}
	Sleep, 100
	Send, Ven
	Sleep, 100
	Send, {TAB}
	Sleep, 100
	Send Ven@Ven.com
	Sleep, 100
	Send {ENTER}
	Sleep, 100
}
else if (Fritz = 1)
{
	Gui, Hide
	Sleep, 1000
	TrayTip, "VenControl", "Fritz", 5, 1
	Send {CTRL down}{ALT down}i{CTRL up}{ALT up}
	Sleep, 3000

	SetKeyDelay, 100
	Send {ALT down}d{ALT up}
		Sleep, 400
	Send, https://cmeg.webex.com/meet/Fritz.Caskey
	Send {ENTER}
	Sleep, 4000

	Send, {TAB}
	Sleep, 100
	Send, {TAB}
	Sleep, 100
	Send, {TAB}
	Sleep, 100
	Send, {TAB}
	Sleep, 100
	Send, {TAB}
	Sleep, 100
	Send, {TAB}
	Sleep, 100
	Send, Ven
	Sleep, 100
	Send, {TAB}
	Sleep, 100
	Send Ven@Ven.com
	Sleep, 100
	Send {ENTER}
	Sleep, 100
}
else if (Friday= 1)
{
	Gui, Hide
	Sleep, 1000
	TrayTip, "VenControl", "Friday Meeting with Yev", 5, 1
	Send {CTRL down}{ALT down}i{CTRL up}{ALT up}
	Sleep, 3000

	SetKeyDelay, 100
	Send {ALT down}d{ALT up}
		Sleep, 400
	Send, https://cmeg.webex.com/cmeg/j.php?MTID=m2c8e8b9969dfe30fe7dd242cbf9a22b2
	Send {ENTER}
	Sleep, 4000

	Send, {TAB}
	Sleep, 100
	Send, {TAB}
	Sleep, 100
	Send, {TAB}
	Sleep, 100
	Send, {TAB}
	Sleep, 100
	Send, Ven
	Sleep, 100
	Send, {TAB}
	Sleep, 100
	Send Ven@Ven.com
	Sleep, 100
	Send {ENTER}
	Sleep, 100
}
else if (T1 = 1)
{
	Gui, Hide
	Sleep, 1000
	TrayTip, "VenControl", "Team 1 Meeting", 5, 1
	Send {CTRL down}{ALT down}i{CTRL up}{ALT up}
	Sleep, 3000

	SetKeyDelay, 100
	Send {ALT down}d{ALT up}
		Sleep, 400
	Send, https://cmeg.webex.com/cmeg/j.php?MTID=m11b3f73dab41277a8a0b34e6a2eda593
	Send {ENTER}
	Sleep, 4000

	Send, {TAB}
	Sleep, 100
	Send, {TAB}
	Sleep, 100
	Send, {TAB}
	Sleep, 100
	Send, {TAB}
	Sleep, 100
	Send, Ven
	Sleep, 100
	Send, {TAB}
	Sleep, 100
	Send Ven@Ven.com
	Sleep, 100
	Send {ENTER}
	Sleep, 100
}
else if (T3 = 1)
{
	Gui, Hide
	Sleep, 1000
	TrayTip, "VenControl", "Team 2 Standup", 5, 1
	Send {CTRL down}{ALT down}i{CTRL up}{ALT up}
	Sleep, 3000

	SetKeyDelay, 100
	Send {ALT down}d{ALT up}
		Sleep, 400
	Send, https://cmeg.webex.com/cmeg/j.php?MTID=m4cca20da188f82a206882c840ab26b2f
	Send {ENTER}
	Sleep, 4000

	Send, {TAB}
	Sleep, 100
	Send, {TAB}
	Sleep, 100
	Send, {TAB}
	Sleep, 100
	Send, {TAB}
	Sleep, 100
	Send, Ven
	Sleep, 100
	Send, {TAB}
	Sleep, 100
	Send Ven@Ven.com
	Sleep, 100
	Send {ENTER}
	Sleep, 100
}
Gui, Destroy
Return

GuiClose:
GuiEscape:
Gui, Destroy

Return
}



^!o::
{
SetKeyDelay, 0

Send, {LWINDOWN}{LWINUP}
SetKeyDelay, 100
Send, Outlook Web
Send, {ENTER}
Sleep, 10000
Send, {TAB}
Send, {TAB}
Send, {ENTER}
TrayTip, "VenControl", "OWA Mail...", 5, 1

Return
}

^!a::
{
SetKeyDelay, 0

Send, {LWINDOWN}{LWINUP}
SetKeyDelay, 100
Sleep, 100
Send, atom
Send, {ENTER}
Sleep, 100
TrayTip, "VenControl", "Atom editor..", 5, 1

Return
}

^!t::
{
SetKeyDelay, 0

Send, {LWINDOWN}{LWINUP}
SetKeyDelay, 100
Sleep, 100
Send, textpad
Send, {ENTER}
Sleep, 100
TrayTip, "VenControl", "Textpad...", 5, 1

Return
}

^!n::
{
SetKeyDelay, 0

Send, {LWINDOWN}{LWINUP}
SetKeyDelay, 100
Sleep, 100
Send, Notepad{+}{+}
Send, {ENTER}
Sleep, 100
TrayTip, "VenControl", "Notepad++...", 5, 1

Return
}

^!i::
{
SetKeyDelay, 0

Send, {LWINDOWN}{LWINUP}
SetKeyDelay, 100
Sleep, 100
Send, internet explorer
Send, {ENTER}
Sleep, 100
TrayTip, "VenControl", "Internet Explorer...", 5, 1

Return
}

^!b::
{
Sleep, 100
SetKeyDelay, 100

Send, {LWINDOWN}{LWINUP}
SetKeyDelay, 100
Sleep, 100
Send, chrome
Send, {ENTER}
Sleep, 100
TrayTip, "VenControl", "Chrome...", 5, 1

Return
}
