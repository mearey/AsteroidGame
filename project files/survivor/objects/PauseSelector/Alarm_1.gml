/// @description Insert description here
// You can write your code in this editor
if trader {
	with (Button) {
		instance_destroy(self)	
	}
	sell_btn = CreateButton(-10,"SELL", function () {
		global.player.scrap += selltotal/2
		for (var i=0; i<array_length(sell_slots); i+=1) {
			for (var b=0;b<array_length(global.player.weapons); b+=1) {
				log(string(sell_slots[i].item))
				log(string(global.player.weapons[b]))
				if sell_slots[i].item == global.player.weapons[b] {
					array_delete(global.player.weapons,b,1)	
				}
			}
			instance_destroy(sell_slots[i])
		}
		sell_slots = []
		CreateInventory()
	})
	
	done_btn = CreateButton(30,"CONTINUE", function () {
		global.pauseObj.pause()
	})
	lighting_sprite = nocollision
	
	//create trades
	for (var i=0; i<3; i+=1) {
		var inst = instance_create_depth(cam_x+60,cam_y+200+i*90,1,SellerSlot)
		inst.item = global.seller_list[random_range(0,array_length(global.seller_list))]
	}
}