$fa = 1;
$fs = 0.4;

scale_factor = 25.4;
nudge = 0.001;

base_width = 5 * scale_factor;
base_depth = 3 * scale_factor;
base_height = 0.125 * scale_factor;

fin_width = 1.5 * scale_factor;
fin_depth = 0.125 * scale_factor;
fin_height = 0.75 * scale_factor;

bevel_cylinder_translate_x = (base_width / 2) * 1;
bevel_cylinder_translate_y = 0;
bevel_cylinder_translate_z = 0;
bevel_cylinder_height = base_depth;
bevel_cylinder_radius = base_height / 2;

union() {
    union() {
        // Base
        translate([0, 0, 0])
        rotate([0, 0, 0])
        cube([base_width, base_depth, base_height], center = true);

        // Fin
        translate([0, 0, abs((base_height / 2) + (fin_height / 2) - nudge)])
        rotate([0, 0, 0])
        cube([fin_width, fin_depth, fin_height], center = true);
    }
    // Bevel
    translate([bevel_cylinder_translate_x, bevel_cylinder_translate_y, bevel_cylinder_translate_z])
    rotate([90,0,0])
    cylinder(h = bevel_cylinder_height, r = bevel_cylinder_radius, center = true);
}

// elongate fin and add gripping cylinder?
//translate([0, 0, 40])
//rotate([90, 0, 0])
//cylinder(h = base_depth, r = 5, center = true);
