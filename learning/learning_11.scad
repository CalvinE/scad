strings = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"];

dodekaeder(10);

module dodekaeder(r = 10)
{
  w = acos(1/sqrt(5));
  rotate([0, 0, 180])
  twosides(r, 0);
  for(i=[0:4])
    rotate([0, -w, i*72])  // tricky!
    twosides(r, i+1);
}

module twosides(r=1, i=1)
{
  h = r*2.618;
  linear_extrude(height = h, twist = 36, center = true) // tricky twist
  circle(r, $fn=5);
 
  // text for upper and lower surface
  translate([0, 0, h/2])
  linear_extrude(height = 1)
  text(strings[i],halign = "center", valign = "center");
  rotate([0, 180, 0])
  translate([0, 0, h/2])
  linear_extrude(height = 1)
  text(strings[i+6],halign = "center", valign = "center");
}