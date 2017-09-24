/// @description Scale up bitch
if (lerp_scaler < 1) {
	lerp_scaler +=.01 * random_range(1,15);
	note_fade_in = lerp(0,1, lerp_scaler);
} else if (!shown){
	note_fade_in = 1;
	message[0] = "Dear Friend -------------------------------------------------------------------- 4/31/12";
	message[1] = "I found myself trapped inside of a cabin, I'm not sure how to escape, but thinking back... maybe I'm you and maybe you're me...";
	message[2] = "I realized today I have a condition, I sometimes get blackness around my eyes, it begins to fade but.. I realize I'm just moving somewhere.";
	message[3] = "I'm not sure I understand excatly what's going on but I know this isn't...right. I need to get out of here, but there door won't budge.";
	message[4] = "I suppose I will look for clues or something... I just wish I could remember how I got here or what happened before I awoke here.";
	message[5] = "            -------------------------------------------------------------------- Anon...";
	shown = true;
	global.noteIsShown = true;
	scr_make_textbox(message);
}