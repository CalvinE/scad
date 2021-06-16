$fa = 1;
$fs = 0.4;

size_factor = 25.4;
spacer_depth = 3 * size_factor;
spacer_width = 3 * size_factor;
spacer_height = 0.5 * size_factor;
y_offset = spacer_depth * 0.2;

circle_y_offset = spacer_width * 2;

linear_extrude(height=spacer_height)
    difference(){
        translate([0,y_offset,0]) 
        square([spacer_depth,spacer_width],center = true);
        
        scale([0.8,.5,1])
        translate([0,circle_y_offset,0])
        circle(spacer_width);
        
}


