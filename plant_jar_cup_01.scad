// Rendering values
$fa = 1;
$fs = 0.4;

// Variables
surface_height = 6;
top_radius = 75;
rim_width = 15;
total_height = 150;
bottom_radius = top_radius * 0.7;
top_opening_radius = top_radius - rim_width;
difference_cylinder_z_offset = -surface_height;
slit_x = top_radius * 2 + 1;
slit_z = total_height * 0.75;
bottom_hole_radius = bottom_radius * 0.3;
bottom_hole_offset = (bottom_radius / 2) - (bottom_radius * 0.1);

module make_slits(num_slits, slit_width = 5) {
    angle_increment = 360 / num_slits;
    for (i = [0 : floor((num_slits-1)/2)]) {
        rotate([0, 0, angle_increment * i])
        translate([0, 0, total_height/2])
        cube([slit_x, slit_width, slit_z], center = true);
    }
}

union() {
    // Body
    difference() {
        union() {            
            // Top / Opening
            difference() {
                // The 1 in the z axis makes the second cylander cleanly break through the first for the difference
                translate([0, 0, 0.001])
                cylinder(h = surface_height, r=top_radius, center = true);
                cylinder(h = surface_height, r = top_opening_radius, center = true);
            }
        
            translate([0, 0, (total_height / 2)])
            cylinder(h = total_height, r1 = top_opening_radius + surface_height, r2 = bottom_radius , center = true);
        }
        // Hollowing the cup
        translate([0, 0, (total_height / 2) + difference_cylinder_z_offset])
        cylinder(h = total_height, r1 = top_opening_radius + 1, r2 = bottom_radius - surface_height, center = true);
        // Slits in the side of the cup  
        make_slits(20, 5);
        
        // Holes in the bottom of the cup
        translate([-bottom_hole_offset, bottom_hole_offset, total_height])
        cylinder(h = surface_height * 3, r = bottom_hole_radius, center = true);
        translate([bottom_hole_offset, -bottom_hole_offset, total_height])
        cylinder(h = surface_height * 3, r = bottom_hole_radius, center = true);
        translate([bottom_hole_offset, bottom_hole_offset, total_height])
        cylinder(h = surface_height * 3, r = bottom_hole_radius, center = true);
        translate([-bottom_hole_offset, -bottom_hole_offset, total_height])
        cylinder(h = surface_height * 3, r = bottom_hole_radius, center = true);
        
    }
    
}

//translate([0, 0, total_height * 0.2])
//rotate([90, 0, 0])
//cylinder(h = total_height, r = 5, center = true);
//translate([0, 0, total_height * 0.4])
//rotate([90, 0, 0])
//cylinder(h = total_height, r = 5, center = true);
//translate([0, 0, total_height * 0.6])
//rotate([90, 0, 0])
//cylinder(h = total_height, r = 5, center = true);
//translate([0, 0, total_height * 0.8])
//rotate([90, 0, 0])
//cylinder(h = total_height, r = 5, center = true);