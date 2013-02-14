module end_cap() {
	cylinder(h=10, r=10);
}

module peg(x) {
	translate([x, 0, 10]) cylinder(h=10, r=5);
}

translate( [100, 0]) end_cap();
translate( [-100, 0]) end_cap();
translate( [-100, -10, 0] ) cube([200, 20, 10]);

peg(-80);
peg(-20);
peg(80);
