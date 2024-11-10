// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Notification(text,image,image_scale)	{
	var notif = instance_create_depth(0,0,0,NotificationObj)
	notif.text = text
	notif.image = image
	notif.image_scale = image_scale
}