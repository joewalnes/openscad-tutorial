scale([1, 1.8, 0.5]) {
  translate([7, 1.1, 1.1]) {
    sphere(r=15);
  }
  rotate([90, 45, 0]) {
    cube(size=[10, 20, 30]);
    cube(size=[30, 20, 10]);
  }
}