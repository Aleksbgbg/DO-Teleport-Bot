#include <AutoItConstants.au3>
#include <ImageSearch.au3>

Bot()

Func Bot()
	WinActivate("DarkOrbit - Google Chrome")

	While True
		Local $x = 0
		Local $y = 0
		
		While _ImageSearch("Images/2-1.bmp", 1, $x, $y, 0) = 0
		WEnd
		
		If _ImageSearch("Images/No Jumps Left.bmp", 0, $x, $y, 0) = 1 Then
			Send("^{w}")
			
			Sleep(400)
			
			MouseClick($MOUSE_CLICK_LEFT, 1291, 665, 1, 0)
			Sleep(400)
			MouseClick($MOUSE_CLICK_LEFT, 819, 591, 1, 0)
			Sleep(400)
			MouseClick($MOUSE_CLICK_LEFT, 976, 613, 1, 0)
			Sleep(400)
			MouseClick($MOUSE_CLICK_LEFT, 908, 268, 1, 0)
		EndIf
		
		While _ImageSearch("Images/Portal.bmp", 1, $x, $y, 0) = 0
		WEnd
		
		MouseClick($MOUSE_CLICK_LEFT, $x, $y, 1, 0)
		
		While _ImageSearch("Images/Jump Coordinates.bmp", 0, $x, $y, 10) = 0
		WEnd
		
		While _ImageSearch("Images/Demilitarized Zone.bmp", 0, $x, $y, 0) = 0
		WEnd
		
		Send("{j}")
		
		While _ImageSearch("Images/2-2.bmp", 0, $x, $y, 0) = 0
		WEnd
		
		Sleep(11000)
		Send("{F6}")
		
		While _ImageSearch("Images/Map 2-1.bmp", 0, $x, $y, 0) = 0
		WEnd
	WEnd
EndFunc ; Bot 