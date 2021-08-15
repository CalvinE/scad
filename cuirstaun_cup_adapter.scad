// Rendering values
$fa = 1;
$fs = 0.4;

base_radius = 10;
base_height = 15;

top_radius = 20;
top_height = 30;
top_thickness = 1;

union() {
    cylinder(h = base_height, r = base_radius, center = false);

    difference() {
        translate([0, 0, base_height - 0.001])
        cylinder(h = top_height, r = top_radius, center = false);

        translate([0, 0, base_height + 3])
        cylinder(h = top_height, r = (top_radius - top_thickness), center = false);
    }
}