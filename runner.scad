module end_cap() {
	cylinder(h=10, r=10);
}

module peg() {
	cylinder(h=10, r=5);
}

translate( [100, 0]) end_cap();
translate( [-100, 0]) end_cap();
translate( [-100, -10, 0] ) cube([200, 20, 10]);

translate( [-80, 0, 10]) peg();
translate( [-20, 0, 10]) peg();
translate( [80, 0, 10]) peg();