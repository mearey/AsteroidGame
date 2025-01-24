// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Audio(){

}


function PlaySong(song) {
	audio_stop_all()
	global.currentSong = song
	global.currentlyPlayingSong = audio_play_sound(song,1,false,global.music_level)
}

function PlaySFX(sound, pitch1,pitch2) {
	audio_play_sound(sound,1,false,global.sfx_level,0,random_range(pitch1,pitch2))
}

