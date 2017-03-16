/// @description Insert description here
// You can write your code in this editor

if (lastScore != global.myScore)
{
	switch (global.myScore)
	{
		case 10: // Double kill
			audio_play_sound(snd_double_kill, 0, false);
			lastScore = global.myScore;
			break;
		case 25: // Killing spree
			audio_play_sound(snd_killing_spree, 0, false);
			lastScore = global.myScore;
			break;
		case 70: // Rampage
			audio_play_sound(snd_rampage, 0, false);
			lastScore = global.myScore;
			break;
		case 100: // Dominating
			audio_play_sound(snd_dominating, 0, false);
			lastScore = global.myScore;
			break;
		case 150: // Unstoppable
			audio_play_sound(snd_unstoppable, 0, false);
			lastScore = global.myScore;
			break;
		case 200: // Godlike
			audio_play_sound(snd_godlike, 0, false);
			lastScore = global.myScore;
			break;
		case 300: // M-m-m-monster kill
			audio_play_sound(snd_monster_kill, 0, false);
			lastScore = global.myScore;
			break;
	}
}