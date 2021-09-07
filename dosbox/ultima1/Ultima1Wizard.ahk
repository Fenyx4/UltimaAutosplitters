!::
Sleep, 250
Send, {a}
Sleep, 250
Send, {Down}
Sleep, 250

SetTimer, time, -1500
toggle := !toggle
while, (toggle)
{
    Send, {Right down}
}
Send, {Right up}

Sleep, 250
Send, {Up}
Sleep, 250
Send, {Up}
Sleep, 250

SetTimer, time, -1500
toggle := !toggle
while, (toggle)
{
    Send, {Right down}
}
Send, {Right up}

Sleep, 250
Send, {Space}
Sleep, 250
Send, {b} ; race
Sleep, 250
Send, {a} ; gender
Sleep, 250
Send, {c} ; class
Sleep, 250
Send, Avatar ; name
Sleep, 250
Send, {Enter}
Sleep, 250

time:
{
    toggle := 0
}

Return