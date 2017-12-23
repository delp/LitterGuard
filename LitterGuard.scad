//Units in Millimeters

$fn = 30;  //Not millimeters though.

width = 132;
length = 140;
height = 2.5;

radius = 4;


module zipTieHole() {
    cylinder(r = radius, h = height);
}



difference() {
    cube([width, length, height]);

    translate([10, 10, 0]) zipTieHole();
    translate([10, length-10, 0]) zipTieHole();
    translate([width-10, 10, 0]) zipTieHole();
    translate([width-10, length-10, 0]) zipTieHole();
}