// All dimensions are in mm. Changes these to be compatible with different brick systems.
unit_width = 5; // width and height
unit_height = 6;
wall_thickness = 1;
stud_height = 1;

// Calculated dimensions.
stud_radius = unit_length / 2 - wall_thickness;
tube_radius = sqrt(pow(unit_length / 2, 2) * 2) - stud_radius;

// Brick specifics
x_units = 2;
y_units = 3;

// Main brick
difference() {
  // Solid brick
  cube([
    x_units * unit_width, 
    y_units * unit_width,
    unit_height]);
  // Hollow brick
  translate([1, 1, 0]) {
    cube([
      x_units * unit_width - wall_thickness * 2, 
      y_units * unit_width - wall_thickness * 2,
      unit_height - wall_thickness]);
  }
}
