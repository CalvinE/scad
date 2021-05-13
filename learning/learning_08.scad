  render (convexity = 2) union () {
 cylinder(10,10,10,$fn=4, center=true);
 
rotate ([0,90,0]) 
 cylinder(10,10,10,$fn=4, center=true); 
 
 rotate ([0,-180,0])
 cylinder(10,10,10,$fn=4, center=true);
 
 rotate ([90,0,90])
 cylinder(10,10,10,$fn=4, center=true);
 
 rotate ([270,0,270])
 cylinder(10,10,10,$fn=4, center=true);
 
 rotate ([0,90,90])   
 cylinder(10,10,10,$fn=4, center=true);
  
 rotate ([270,270,270])    
  cylinder(10,10,10,$fn=4, center=true);

cylinder(10,10,00,$fn=4, center=true);
  
  rotate ([0,180,0])
  cylinder(10,10,00,$fn=4, center=true);
  
  rotate ([90,0,0])
  cylinder(10,10,00,$fn=4, center=true);
  
  rotate ([270,0,0])
  cylinder(10,10,00,$fn=4, center=true);
}