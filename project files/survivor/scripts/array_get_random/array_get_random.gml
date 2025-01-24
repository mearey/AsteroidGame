// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function array_get_random(arr){
	return arr[random_range(0, array_length(arr))]
}