$fa = 1;
$fs = 0.04;

button_offset = 6;
diameter = 8;

union() {
    rotate_extrude(angle=360) {
        translate([20,0,0])
        circle(d=diameter);
    }

    difference() {
        cylinder(h=2, r=22, center=true);
        translate([-button_offset, -button_offset, 0])
            cylinder(h=40, r=4, center=true);
        
        translate([button_offset, -button_offset, 0])
            cylinder(h=40, r=4, center=true);
        
        translate([-button_offset, button_offset, 0])
            cylinder(h=40, r=4, center=true);
        
        translate([button_offset, button_offset, 0])
            cylinder(h=40, r=4, center=true);
    }
}