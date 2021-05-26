scale_factor = 1;

base_width = 5 * scale_factor;
base_depth = 3 * scale_factor;
base_height = 1/8 * scale_factor;

fin_width = 1.5 * scale_factor;
fin_depth = 0.125 * scale_factor;
fin_height = 0.5 * scale_factor;

// Base
translate([0, 0, 0])
cube([base_width, base_depth, base_height], center = true);

// Fin
translate([0, 0, abs(base_height - (fin_height / 2) - 0.001)])
cube([fin_width, fin_depth, fin_height], center = true);

// TODO: Need to bevel one short edge on the base
// TODO: Need to fix translate on the fin os it does not poke oput pof the bottom.
// TODO: Set scale factor to the factor for mm to inches
