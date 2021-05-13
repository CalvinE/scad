$fa = 1;
$fs = 0.4;

intersection() {
    cylinder(h = 30, r = 5, center=true);

    rotate([0, 90, 0])
    cylinder(h = 30, r = 5, center=true);
}