/// @description Insert description here
// You can write your code in this editor
if trader {
	sell_btn = CreateButton(-10,"SELL", function () {
		global.player.scrap += selltotal
		for (var i=0; i<array_length(sell_slots); i+=1) {
			instance_destroy(sell_slots[i])	
		}
		sell_slots = []
		CreateInventory()
	})
	
	done_btn = CreateButton(30,"DONE", function () {
		global.pauseObj.pause()
	})
	lighting_sprite = nocollision
	
	//create trades
	for (var i=0; i<3; i+=1) {
		var inst = instance_create_depth(cam_x+60,cam_y+200+i*90,1,SellerSlot)
		inst.item = global.seller_list[random_range(0,array_length(global.seller_list))]
	}
}