






^!c::
WinGet, id, list, , , Program Manager
Loop, %id%
{
	StringTrimRight, this_id, id%a_index%, 0
	WinGetTitle, this_title, ahk_id %this_id%
	winclose,%this_title%
}
TrayTip, "VenControl", "Closed all windows", 5, 1
Return


^!r::Reload  ; Assign Ctrl-Alt-R as a hotkey to restart the script.

^!w::
{
SetKeyDelay, 100
Send {CTRL down}{ALT down}z{CTRL up}{ALT up}
Sleep, 100
Send {CTRL down}{Pgdn}{CTRL up}
Sleep, 100
Send {CTRL down}{Pgdn}{CTRL up}
TrayTip, "VenControl", "Webex Sessions...", 5, 1
Return
}

^!g::
{
SetKeyDelay, 100
Send {CTRL down}{ALT down}z{CTRL up}{ALT up}
Sleep, 100
Send {CTRL down}{Pgdn}{CTRL up}
Sleep, 100
TrayTip, "VenControl", "Google Search Sessions...", 5, 1
Return
}

DoWinKey()
{
	SetKeyDelay, 100
	Send, {LWINDOWN}{LWINUP}
	SetKeyDelay, 100
	Return
}

DoWork(MyEdit)
{


        if (MyEdit = "cv")
	{
		Gui, Hide
		Sleep, 1000
		DoWinKey()
		Sleep, 100
		SetKeyDelay, 10
		Send, cme vdi
		SetKeyDelay, 100
		Sleep, 100
		Send, {ENTER}
		Sleep, 100
		TrayTip, "VenControl", "Classroom..", 5, 1
		Sleep, 2000
		SetKeyDelay, 100
		Send, {LWINDOWN}{Up}{Up}{LWINUP}
		SetKeyDelay, 100
	}
	if (MyEdit = "pn")
	{
		Gui, Hide
		Sleep, 1000
		DoWinKey()
		Sleep, 100
		SetKeyDelay, 10
		Send, PNC
		SetKeyDelay, 100
		Sleep, 100
		Send, {ENTER}
		Sleep, 100
		TrayTip, "VenControl", "Classroom..", 5, 1
		Sleep, 2000
		SetKeyDelay, 100
		Send, {LWINDOWN}{Up}{Up}{LWINUP}
		SetKeyDelay, 100
	}
	if (MyEdit = "fa")
	{
		Gui, Hide
		Sleep, 1000
		DoWinKey()
		Sleep, 100
		SetKeyDelay, 10
		Send, fast.com
		SetKeyDelay, 100
		Sleep, 100
		Send, {ENTER}
		Sleep, 100
		TrayTip, "VenControl", "Classroom..", 5, 1
		Sleep, 2000
		SetKeyDelay, 100
		Send, {LWINDOWN}{Up}{Up}{LWINUP}
		SetKeyDelay, 100
	}
	if (MyEdit = "va")
	{
		Gui, Hide
		Sleep, 1000
		DoWinKey()
		Sleep, 100
		SetKeyDelay, 10
		Send, vanguard
		SetKeyDelay, 100
		Sleep, 100
		Send, {ENTER}
		Sleep, 100
		TrayTip, "VenControl", "Classroom..", 5, 1
		Sleep, 2000
		SetKeyDelay, 100
		Send, {LWINDOWN}{Up}{Up}{LWINUP}
		SetKeyDelay, 100
	}
	if (MyEdit = "ca")
		{
			Gui, Hide
			Sleep, 1000
			DoWinKey()
			Sleep, 100
			SetKeyDelay, 10
			Send, capital one
			SetKeyDelay, 100
			Sleep, 100
			Send, {ENTER}
			Sleep, 100
			TrayTip, "VenControl", "Classroom..", 5, 1
			Sleep, 2000
			SetKeyDelay, 100
			Send, {LWINDOWN}{Up}{Up}{LWINUP}
			SetKeyDelay, 100
	}
	if (MyEdit = "we")
		{
			Gui, Hide
			Sleep, 1000
			DoWinKey()
			Sleep, 100
			SetKeyDelay, 10
			Send, wealthfront
			SetKeyDelay, 100
			Sleep, 100
			Send, {ENTER}
			Sleep, 100
			TrayTip, "VenControl", "Classroom..", 5, 1
			Sleep, 2000
			SetKeyDelay, 100
			Send, {LWINDOWN}{Up}{Up}{LWINUP}
			SetKeyDelay, 100
	}
	 if (MyEdit = "ci")
		{
			Gui, Hide
			Sleep, 1000
			DoWinKey()
			Sleep, 100
			SetKeyDelay, 10
			Send, citi online
			SetKeyDelay, 100
			Sleep, 100
			Send, {ENTER}
			Sleep, 100
			TrayTip, "VenControl", "Classroom..", 5, 1
			Sleep, 2000
			SetKeyDelay, 100
			Send, {LWINDOWN}{Up}{Up}{LWINUP}
			SetKeyDelay, 100
	}
	if (MyEdit = "ev")
	{
		Gui, Hide
		Sleep, 1000
		DoWinKey()
		Sleep, 100
		SetKeyDelay, 10
		Send, evernote
		SetKeyDelay, 100
		Sleep, 100
		Send, {ENTER}
		Sleep, 100
		TrayTip, "VenControl", "Classroom..", 5, 1
		Sleep, 2000
		SetKeyDelay, 100
		Send, {LWINDOWN}{Up}{Up}{LWINUP}
		SetKeyDelay, 100
	}
        if (MyEdit = "cl")
	{
		Gui, Hide
		Sleep, 1000
		DoWinKey()
		Sleep, 100
		SetKeyDelay, 10
		Send, classroom
		SetKeyDelay, 100
		Sleep, 100
		Send, {ENTER}
		Sleep, 100
		TrayTip, "VenControl", "Classroom..", 5, 1
		Sleep, 2000
		SetKeyDelay, 100
		Send, {LWINDOWN}{Up}{Up}{LWINUP}
		SetKeyDelay, 100
	}
	if (MyEdit = "gb")
	{
		Gui, Hide
		Sleep, 1000
		DoWinKey()
		
		SetKeyDelay, 10
		Send, gitbash
		Sleep, 100
		SetKeyDelay, 100
		Send, {ENTER}
		Sleep, 100
		TrayTip, "VenControl", "Git Bash..", 5, 1
		Sleep, 2000
		SetKeyDelay, 100
		Send, {LWINDOWN}{Right}{Up}{LWINUP}
		SetKeyDelay, 10

	}
	if (MyEdit = "gh")
	{
		Gui, Hide
		Sleep, 1000
		DoWinKey()
		Sleep, 100
		SetKeyDelay, 10
		Send, github
		Sleep, 100
		SetKeyDelay, 100
		Send, {ENTER}
		Sleep, 100
		TrayTip, "VenControl", "GitHub..", 5, 1
		Sleep, 2000
		SetKeyDelay, 100
		Send, {LWINDOWN}{Up}{LWINUP}
		SetKeyDelay, 10

	}
       if (MyEdit = "gk")
	{
		Gui, Hide
		Sleep, 1000
		DoWinKey()
		Sleep, 100
		SetKeyDelay, 10
		Send, gitkraken
		Sleep, 100
		SetKeyDelay, 100
		Send, {ENTER}
		Sleep, 100
		TrayTip, "VenControl", "GitKraken..", 5, 1
		Sleep, 5000
		SetKeyDelay, 5
		Send, {LWINDOWN}{Up}{Up}{Up}{Up}{Left}{Left}{Down}{LWINUP}
		SetKeyDelay, 10

	}
	if (MyEdit = "ud")
	{
		Gui, Hide
		Sleep, 1000
		DoWinKey()
		Sleep, 100
		SetKeyDelay, 10
		Send, udemy
		Sleep, 100
		SetKeyDelay, 100
		Send, {ENTER}
		Sleep, 100
		TrayTip, "VenControl", "Udemy..", 5, 1
		Sleep, 3000
		SetKeyDelay, 100
		Send, {LWINDOWN}{Up}{Left}{Left}{Up}{LWINUP}
		SetKeyDelay, 10
	
	}
	if (MyEdit = "ou")
	{
		Gui, Hide
		Sleep, 1000
		DoWinKey()
		Sleep, 100
		SetKeyDelay, 10
		Send, outlook web 
		Sleep, 100
		SetKeyDelay, 100
		Send, {ENTER}
		Sleep, 100
		TrayTip, "VenControl", "Udemy..", 5, 1
		Sleep, 3000
		SetKeyDelay, 100
		Send, {LWINDOWN}{Up}{Left}{Left}{Up}{LWINUP}
		SetKeyDelay, 10
	}
	if (MyEdit = "ya")
	{
		Gui, Hide
		Sleep, 1000
		DoWinKey()
		Sleep, 100
		SetKeyDelay, 10
		Send, yahoo
		SetKeyDelay, 100
		Send, {ENTER}
		Sleep, 100
		TrayTip, "VenControl", "Yahoo..", 5, 1
		Sleep, 2000
		SetKeyDelay, 100
		Send, {LWINDOWN}{Up}{Up}{LWINUP}
		SetKeyDelay, 10
	}
	if (MyEdit = "am")
	{
		Gui, Hide
		Sleep, 1000
		DoWinKey()
		Sleep, 100
		SetKeyDelay, 10
		Send, amazon.com
		Sleep, 100
		SetKeyDelay, 100
		Send, {ENTER}
		Sleep, 100
		TrayTip, "VenControl", "Amazon..", 5, 1
		Sleep, 2000
		SetKeyDelay, 15
		Send, {LWINDOWN}{Up}{Up}{LWINUP}
		SetKeyDelay, 10
	}
	if (MyEdit = "ym")
	{
		Gui, Hide
		Sleep, 1000
		DoWinKey()
		Sleep, 100
		SetKeyDelay, 10
		Send, yahoo mail
		Sleep, 100
		SetKeyDelay, 100
		Send, {ENTER}
		Sleep, 100
		TrayTip, "VenControl", "Classroom..", 5, 1
		Sleep, 2000
		SetKeyDelay, 15
		Send, {LWINDOWN}{Up}{Up}{LWINUP}
		SetKeyDelay, 10

	}
	if (MyEdit = "gm")
	{
		Gui, Hide
		Sleep, 1000
		DoWinKey()
		Sleep, 100
		SetKeyDelay, 10
		Send, gmail\
		Sleep, 100
		Send, {ENTER}
		Sleep, 100
		TrayTip, "VenControl", "Classroom..", 5, 1
		Sleep, 2000
		SetKeyDelay, 15
		Send, {LWINDOWN}{Up}{Up}{LWINUP}
		SetKeyDelay, 10

	}
	if (MyEdit = "gn")
	{
		Gui, Hide
		Sleep, 1000
		DoWinKey()
		Sleep, 100
		SetKeyDelay, 10
		Send, google news
		Send, {ENTER}
		Sleep, 100
		TrayTip, "VenControl", "Classroom..", 5, 1
		Sleep, 2000
		SetKeyDelay, 15
	  	Send, {LWINDOWN}{Up}{Up}{LWINUP}
	  	SetKeyDelay, 10
	}
}

^!z::
{

Gui, Add, Tab2,, Google Search|Webex|Classroom|Websites  ; Tab2 vs. Tab requires v1.0.47.05.
Gui, Add, Edit, r1 vMyEdit2,
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
	StringSplit, CommandArray, MyEdit, %A_Space%, .
	Loop, %CommandArray0%
	{
	     this_color := CommandArray%a_index%
	     DoWork(this_color )
	}
}
else if (StrLen(MyEdit2) > 0)
{
	Gui, Hide
	
	SetKeyDelay, 15
	Send {CTRL down}{ALT down}b{CTRL up}{ALT up}
	Sleep, 3000
	SetKeyDelay, 15
	Send {ALT down}d{ALT up}
	Sleep, 300
	
	Send, %MyEdit2% %A_Space%
	Sleep, 400
	Send, {ENTER}
	Sleep, 100
	TrayTip, "VenControl", "Google Search ..." , 5, 1
	Sleep, 2000


}
else if (Baris = 1)
{
	Gui, Hide
	Sleep, 1000
	TrayTip, "VenControl", "Webex with Baris", 5, 1
	SetKeyDelay, 100
	Send {CTRL down}{ALT down}i{CTRL up}{ALT up}
	Sleep, 3000

	SetKeyDelay, 100
	Send {ALT down}d{ALT up}
	Sleep, 2000
	SetKeyDelay, 10
	Send, https://cmeg.webex.com/meet/Baris.Mestanogullari
	Sleep, 100
	Send {ENTER}
	Sleep, 6000
        SetKeyDelay, 100
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
	Sleep, 2000
	SetKeyDelay, 10
	Send, https://cmeg.webex.com/cmeg/j.php?MTID=mb23f52b20feb03e68d074e79b67b09d0 %A_Space%
	Sleep, 100
	Send {ENTER}
	Sleep, 6000
        SetKeyDelay, 100

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
	SetKeyDelay, 100
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
	SetKeyDelay, 10
	Send, https://cmeg.webex.com/meet/Yevgeniy.Brailovskiy
	Sleep, 100
	Send {ENTER}
	Sleep, 6000
        SetKeyDelay, 100
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
	SetKeyDelay, 10
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
	SetKeyDelay, 10
	Send, https://cmeg.webex.com/meet/Alla.Layvant
	Sleep, 100
	Send {ENTER}
	Sleep, 6000

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
	SetKeyDelay, 10
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
	SetKeyDelay, 10
	Send, https://cmeg.webex.com/meet/Stanislav.Liberman
	Sleep, 100
	Send {ENTER}
	Sleep, 6000

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
	SetKeyDelay, 10
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
	SetKeyDelay, 10
	Send, https://cmeg.webex.com/meet/Fritz.Caskey
	Sleep, 100
	Send {ENTER}
	Sleep, 6000

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
	SetKeyDelay, 10
	Send, https://cmeg.webex.com/cmeg/j.php?MTID=m2c8e8b9969dfe30fe7dd242cbf9a22b2  %A_Space%
	Sleep, 100
	Send {ENTER}
	Sleep, 4000
	SetKeyDelay, 500
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
	SetKeyDelay, 100
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
	SetKeyDelay, 10
	Send, https://cmeg.webex.com/cmeg/j.php?MTID=m11b3f73dab41277a8a0b34e6a2eda593  %A_Space%
	Sleep, 100
	Send {ENTER}
	Sleep, 6000
	SetKeyDelay, 500
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
	SetKeyDelay, 100
}
else if (T3 = 1)
{
	Gui, Hide
	Sleep, 1000
	SetKeyDelay, 100
	TrayTip, "VenControl", "Team 2 Standup", 5, 1
	Send {CTRL down}{ALT down}i{CTRL up}{ALT up}
	Sleep, 3000

	SetKeyDelay, 100
	Send {ALT down}d{ALT up}
	Sleep, 400
	SetKeyDelay, 10
	Send, https://cmeg.webex.com/cmeg/j.php?MTID=m4cca20da188f82a206882c840ab26b2f  %A_Space%
	Sleep, 100
	Send {ENTER}
	Sleep, 6000
	SetKeyDelay, 500
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
	SetKeyDelay, 100
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

DoWinKey()
SetKeyDelay, 10
Send, Outlook Web
Sleep, 300
SetKeyDelay, 10
Send, {ENTER}
Sleep, 3000
Send, {LWINDOWN}{Up}{Up}{LWINUP}
Sleep, 6000
Send, {TAB}
Send, {TAB}
Send, {ENTER}
TrayTip, "VenControl", "OWA Mail...", 5, 1

Return
}

^!a::
{
SetKeyDelay, 100

DoWinKey()
SetKeyDelay, 100
Sleep, 100
Send, atom

Sleep, 100

Send, {ENTER}
Sleep, 100
TrayTip, "VenControl", "Textpad...", 5, 1

Return
}

^!t::
{
SetKeyDelay, 100

DoWinKey()
SetKeyDelay, 100
Sleep, 100
Send, textpad
Sleep, 100

Send, {ENTER}
Sleep, 100
TrayTip, "VenControl", "Textpad...", 5, 1

Return
}

^!n::
{
SetKeyDelay, 100

DoWinKey()
SetKeyDelay, 10
Sleep, 100
Send, Notepad{+}{+}
Sleep, 100

Send, {ENTER}
Sleep, 100
TrayTip, "VenControl", "Notepad++...", 5, 1

Return
}

^!i::
{
SetKeyDelay, 100

DoWinKey()
SetKeyDelay, 10
Sleep, 100
Send, internet explorer
Sleep, 100

Send, {ENTER}
Sleep, 100
TrayTip, "VenControl", "Internet Explorer...", 5, 1

Return
}

^!b::
{
Sleep, 100
SetKeyDelay, 100

DoWinKey()
SetKeyDelay, 10
Sleep, 100
Send, chrome
Sleep, 100
SetKeyDelay, 100

Send, {ENTER}
Sleep, 100
TrayTip, "VenControl", "Chrome...", 5, 1

Return
}
