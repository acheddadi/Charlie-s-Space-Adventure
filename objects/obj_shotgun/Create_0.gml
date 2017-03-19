/// @description Insert description here
// You can write your code in this editor
bullets = 5;
theta[0] = degtorad(-20);
theta[1] = degtorad(-10);
theta[2] = degtorad(0);
theta[3] = degtorad(10);
theta[4] = degtorad(20);
scatter = random_range(-4,4);
audio_sound_pitch(snd_laser, random_range(0.6, 1));
audio_play_sound(snd_laser, 0, false);