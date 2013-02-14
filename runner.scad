module end_cap(x, height, radius) {
	translate([x, 0]) cylinder(h=height, r=radius);
}

module rounded_rectangle(length, width, height) {
	radius = width / 2;
	cuboid_length = length - 2 * radius;
	x = cuboid_length / 2;
	translate([-x, -radius, 0])
		cube([cuboid_length, width, height]);
	end_cap(-x, height, radius);
	end_cap(x, height, radius);
}

module peg(x) {
	translate([x, 0, 10]) cylinder(h=10, r=5);
}

rounded_rectangle(220, 20, 10);
peg(-80);
peg(-20);
peg(80);
