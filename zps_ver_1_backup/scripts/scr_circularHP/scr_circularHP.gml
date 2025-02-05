
function draw_circular_Fill_HP(x ,y ,value, max, colour, radius, transparency){
	if (value > 0) { // no point even running if there is nothing to display (also stops /0
	    var i, len, tx, ty, val;
	    
	    var numberofsections = 60 // there is no draw_get_circle_precision() else I would use that here
	    var sizeofsection = 360/numberofsections
	    
	    val = (value/max) * numberofsections 
	    
	    if (val > 1) { // HTML5 version doesnt like triangle with only 2 sides 
	    
	        draw_set_colour(colour);
	        draw_set_alpha(transparency);
	        
	        draw_primitive_begin(pr_trianglefan);
	        draw_vertex(x, y);
	        
	        for(i=0; i<=val; i++) {
		        len = (i*sizeofsection)+90; // the 90 here is the starting angle
		        tx = lengthdir_x(radius, len);
		        ty = lengthdir_y(radius, len);
		        draw_vertex(x+tx, y+ty);
	        }
	        draw_primitive_end();
	        
	    }
	    draw_set_alpha(1);
	}
}

function draw_circular_HP(x ,y ,value, max, colour, radius, transparency , width, hp){
	if (value > 0) { // no point even running if there is nothing to display (also stops /0
	    var i, len, tx, ty, val;
	    
	    var numberofsections = 60 // there is no draw_get_circle_precision() else I would use that here
	    var sizeofsection = 360/numberofsections
	    
	    val = (value/max) * numberofsections 
	    
	    if (val > 1) { // HTML5 version doesnt like triangle with only 2 sides 
	    
	        piesurface = surface_create(radius*2,radius*2)
	            
	        draw_set_colour(colour);
	        draw_set_alpha(transparency);
	        
	        surface_set_target(piesurface)
	        
	        draw_clear_alpha(c_blue,0.7)
	        draw_clear_alpha(c_black,0)
	        
	        draw_primitive_begin(pr_trianglefan);
	        draw_vertex(radius, radius);
	        
	        for(i=0; i<=val; i++) {
		        len = (i*sizeofsection)+90; // the 90 here is the starting angle
		        tx = lengthdir_x(radius, len);
		        ty = lengthdir_y(radius, len);
		        draw_vertex(radius+tx, radius+ty);
	        }
	        
	        draw_primitive_end();
	        
	        draw_set_alpha(1);
	        
	        gpu_set_blendmode(bm_subtract)
	        draw_set_colour(c_black)
	        draw_circle(radius-1, radius-1,radius-width,false)
			draw_sprite_ext(HpBarSections,0,radius-1,radius-1,2.6,2.6,0,c_white,1)
	        gpu_set_blendmode(bm_normal)
	
	        surface_reset_target()
			if !hp {
				draw_surface_ext(piesurface,x+radius,y-radius,-1,1,0,c_white,1)
			} else {
				draw_surface(piesurface,x-radius, y-radius)
			}
	        
	        surface_free(piesurface)
	        
	    }
	    
	}

}