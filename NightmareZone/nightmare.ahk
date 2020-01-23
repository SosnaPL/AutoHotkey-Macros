#include %A_ScriptDir%\console_include.ahk
global console = new BensConsole()
/::
absorption_x := 2957
overload_x := 2956
overload_static_x := 2956
overload_static_y := 638
absorption_static_x := 2957
absorption_static_y := 747
overload_uses := 0

Loop
{
	random hp, 25000, 40000
	random overload_time, 100, 500
	random overload_time2, 500, 2000
	random overload_time3, 500, 2000
	random overload_time4, 1000, 2500
	random overload_time5, 500, 1000
	random overload_time6, 500, 1000
	random overload_time7, 100, 300
	random overload_kordy_x, 1 ,7
	random overload_kordy_y, 1 ,7
	random kordy_prayer_x, 3075, 3095
	random kordy_prayer_y, 582, 600
	random kordy_eq_x, 3009, 3030
	random kordy_eq_y, 578, 599

	sleep, 100
	If WinExist("A")
	{
		WinActivate, RuneLite
		PixelGetColor, overload, 926, 96, RGB
		PixelGetColor, koniec, 932, 82, RGB
		WinActivate
		if(koniec == 0x980703)
		{
			console.log("koniec")
			return
		}
		Sleep, %overload_time7%
	}
	if(overload != 0x131313 and overload_uses != 47)
	{
		if(overload_uses>0 and Mod(overload_uses, 4)==0)
		{
			console.log("next pota")
			overload_static_x += 40
			console.log(overload_static_x)
			sleep, %overload_time6%
		}
		if(overload_uses>0 and Mod(overload_uses, 16)==0)
		{
			console.log("kolejna linia")
			overload_static_y += 40
			overload_static_x := overload_x
			sleep, %overload_time5%
		}
		console.log(overload)
		console.log("pijemy overloada")
		sleep, %overload_time%
		ControlClick,,RuneLite,,,,NA X%kordy_eq_x% Y%kordy_eq_y%
		sleep, %overload_time2%
		ControlClick,,RuneLite,,,,NA X%overload_static_x%+%overload_kordy_x% Y%overload_static_y%+%overload_kordy_y%
		overload_uses++
		sleep, %overload_time3%
		if(overload_uses>0 and overload_uses==20)
		{
			console.log("kolejna linia absorb")
			absorption_static_y += 40
			absorption_static_x := absorption_x
		}
		if(overload_uses>0 and Mod(overload_uses, 4)==0)
		{
			console.log("pijemy caly absorb")
			Loop, 4
			{
				random absorption_time, 750, 1500
				random absorption_kordy_x, 1 ,7
				random absorption_kordy_y, 1 ,7
				ControlClick,,RuneLite,,,,NA X%absorption_static_x%+%absorption_kordy_x% Y%absorption_static_y%+%absorption_kordy_y%
				sleep, %absorption_time%
			}
			absorption_static_x += 40
			console.log(absorption)
		}
		ControlClick,,RuneLite,,,,NA X%kordy_prayer_x% Y%kordy_prayer_y%
		console.log(overload_uses)
		sleep, %overload_time4%
	}
	console.log("serce")
	Loop, 2
	{
		random miedzy_hp, 500, 1000
		random kordy_hp_x, 3085, 3102
		random kordy_hp_y, 668, 680
		ControlClick,,RuneLite,,,,NA X%kordy_hp_x% Y%kordy_hp_y%
		sleep, %miedzy_hp%
	}
	sleep, %hp%
}
.::reload
