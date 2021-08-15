$fa = 1;
$fs = 0.4;

size_factor = 25.4;
spacer_depth = 5 * size_factor;
spacer_width = 3 * size_factor;
spacer_height = 0.5 * size_factor;
y_offset = spacer_depth * 0.2;

circle_y_offset = spacer_depth / 2;

circle_x_scale = spacer_width / 2;
circle_y_scale = 0.25 * size_factor;

linear_extrude(height=spacer_height)
    difference(){
        translate([0,0,0]) 
        square([spacer_width,spacer_depth],center = true);
        
        
        translate([0,circle_y_offset,0])
        scale([circle_x_scale,circle_y_scale,1])
        circle(1);
}
