//Making a simple car
//Setting resolution variables
$fa = 1;
$fs = 0.4;
//Setting model variables
body_x = 60;
body_y = 20;
body_z = 10;
wheel_radius = 8;
scale([1.2,1.2,1.2]) {
//Car Body
rotate([0,0,5]){
cube([body_x,body_y,body_z],center=true);
translate([5,0,10-0.001])
cube([30,20,10],center=true);
}
//Axels
translate([-20,0,0])
rotate([90,0,0])
cylinder(h=30,r=2,center=true);
translate([20,0,0])
rotate([90,0,0])
cylinder(h=30,r=2,center=true);
//Wheels
translate([-20,-15,0])
rotate([90,0,20])
cylinder(h=3,r=wheel_radius,center=true);
translate([-20,15,0])
rotate([90,0,20])
cylinder(h=3,r=wheel_radius,center=true);
translate([20,-15,0])
rotate([90,0,0])
cylinder(h=3,r=wheel_radius,center=true);
translate([20,15,0])
rotate([90,0,0])
cylinder(h=3,r=wheel_radius,center=true);
}