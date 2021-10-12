// Rendering values
$fa = 1;
$fs = 0.4;

base_diameter = 75;

base_radius = (base_diameter / 2);
base_height = 50;

top_diameter1 = 88;
top_diameter2 = 90;

top_radius1 = (top_diameter1 / 2);
top_radius2 = (top_diameter2 / 2);
top_height = 80;
top_thickness = 2;

union() {
    cylinder(h = base_height, r = base_radius, center = false);

    difference() {
        translate([0, 0, base_height - 0.001])
        cylinder(h = top_height, r1 = top_radius1 + top_thickness, r2 = top_radius2 + top_thickness, center = false);

        translate([0, 0, base_height + 3])
        cylinder(h = top_height, r1 = top_radius1, r2 = top_radius2, center = false);
    }
}