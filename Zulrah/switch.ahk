switch_ := 0

Loop
{
	sleep, 10
	switch()
	{
		slot_1_x := 917
		slot_1_y := 353
		slot_2_x := 917
		slot_2_y := 387
		slot_3_x := 960
		slot_3_y := 387
		slot_4_x := 960
		slot_4_y := 353
		slot_5_x := 1000
		slot_5_y := 353
		slot_6_x := 1000
		slot_6_y := 387

		prayer_range_x := 982
		prayer_range_y := 465
		prayer_mage_x := 945
		prayer_mage_y := 465
		prayer_eagle_x := 1055
		prayer_eagle_y := 466
		prayer_mystic_x := 908
		prayer_mystic_y := 505
		
		speed := 2
		
		global switch_
		if(switch_==0)
		{
			RSleep(50, 100)
			Send {F3}
			RSleep(50, 200)
			MouseMove, prayer_mage_x+RRandom(1,7), prayer_mage_y+RRandom(1,7), speed
			RSleep(1, 50)
			RClick()
			RSleep(1, 50)
			MouseMove, prayer_eagle_x+RRandom(1,7), prayer_eagle_y+RRandom(1,7), speed
			RSleep(1, 50)
			RClick()
			RSleep(50, 100)
			Send {Esc}
			RSleep(50, 100)	
			RSleep(1, 50)
			MouseMove, slot_1_x+RRandom(1,7), slot_1_y+RRandom(1,7), speed
			RSleep(1, 50)
			RClick()
			RSleep(1, 50)
			MouseMove, slot_2_x+RRandom(1,7), slot_2_y+RRandom(1,7), speed
			RSleep(1, 50)
			RClick()
			RSleep(1, 50)
			MouseMove, slot_3_x+RRandom(1,7), slot_3_y+RRandom(1,7), speed
			RSleep(1, 50)
			RClick()
			RSleep(1, 50)
			MouseMove, slot_4_x+RRandom(1,7), slot_4_y+RRandom(1,7), speed
			RSleep(1, 50)
			RClick()
			MouseMove, slot_5_x+RRandom(1,7), slot_5_y+RRandom(1,7), speed
			RSleep(1, 50)
			RClick()
			switch_ := 1
		}
		else if(switch_==1)
		{
			RSleep(50, 100)
			Send {F3}
			RSleep(50, 200)
			MouseMove, prayer_range_x+RRandom(1,7), prayer_range_y+RRandom(1,7), speed
			RSleep(1, 50)
			RClick()
			RSleep(1, 50)
			MouseMove, prayer_mystic_x+RRandom(1,7), prayer_mystic_y+RRandom(1,7), speed
			RSleep(1, 50)
			RClick()
			RSleep(50, 100)
			Send {Esc}
			RSleep(50, 100)			
			MouseMove, slot_1_x+RRandom(1,7), slot_1_y+RRandom(1,7), speed
			RSleep(1, 50)
			RClick()
			RSleep(1, 50)
			MouseMove, slot_2_x+RRandom(1,7), slot_2_y+RRandom(1,7), speed
			RSleep(1, 50)
			RClick()
			RSleep(1, 50)
			MouseMove, slot_3_x+RRandom(1,7), slot_3_y+RRandom(1,7), speed
			RSleep(1, 50)
			RClick()
			RSleep(1, 50)
			MouseMove, slot_4_x+RRandom(1,7), slot_4_y+RRandom(1,7), speed
			RSleep(1, 50)
			RClick()	
			MouseMove, slot_5_x+RRandom(1,7), slot_5_y+RRandom(1,7), speed
			RSleep(1, 50)
			RClick()
			MouseMove, slot_6_x+RRandom(1,7), slot_6_y+RRandom(1,7), speed
			RSleep(1, 50)
			RClick()
			switch_ := 0
		}
	}
	RRandom(s, j)
	{
		Random, x, s, j
		return x
	}
	RSleep(Min, Max) ;pass Min and Max values in miliseconds
	{
		Random, r, Min, Max
		Sleep, r
	}
	RClick()
	{
		Random, r, 1, 50
		Send {LButton down}
		sleep,r
		Send {LButton up}
	}
	state := GetKeyState("Ctrl")
	if state = 1
	{
		WinActivate, RuneLite
		switch()
	}
}
