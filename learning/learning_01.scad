//cube(10);
//cube([20,30,50]);
//cube([20,30,50], center=true);

//cube([60,20,10],center=true);
//translate([0,0,10])
//cube([30,20,10],center=true);

//cube([60,20,10],center=true);
//translate([5,0,10])
//cube([30,20,10],center=true);

//cube([60,20,10],center=true);
//translate([5,0,9.999])
//cube([30,20,10],center=true);

//cube([60,20,10],center=true);
//translate([5,0,10-0.001])
//cube([30,20,10],center=true);
//translate([0,-20,0])
//cylinder(h=3,r=8);

//cube([60,20,10],center=true);
//translate([5,0,10-0.001])
//cube([30,20,10],center=true);
//rotate([90,0,0])
//translate([0,-20,0])
//cylinder(h=3,r=8);

//Making a simple car
//Setting resolution variables
$fa = 1;
$fs = 0.4;
//Car Body
cube([60,20,10],center=true);
translate([5,0,10-0.001])
cube([30,20,10],center=true);
//Axels
translate([-20,0,0])
rotate([90,0,0])
cylinder(h=30,r=2,center=true);
translate([20,0,0])
rotate([90,0,0])
cylinder(h=30,r=2,center=true);
//Wheels
translate([-20,-15,0])
rotate([90,0,0])
cylinder(h=3,r=8,center=true);
translate([-20,15,0])
rotate([90,0,0])
cylinder(h=3,r=8,center=true);
translate([20,-15,0])
rotate([90,0,0])
cylinder(h=3,r=8,center=true);
translate([20,15,0])
rotate([90,0,0])
cylinder(h=3,r=8,center=true);