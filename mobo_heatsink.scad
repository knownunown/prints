HSK_W = 6;
HSK_H = 6.7;
MNT_OFFS = 4.5;

module heatsink_slot(disp) {
    translate([disp-HSK_W/2, 5-HSK_H/2, 0])
        cube([HSK_W, HSK_H, 10]);
}

module body() {
    cube([50, 10, 3]);
    
    translate([0, 0, -2.5])
        cube([HSK_W+2, 10, 3]);
    translate([50-8, 0, -2.5])
        cube([HSK_W+2, 10, 3]);
}

difference() {
    body();

    for(i = [1.3, 2.1, 2.9, 3.7])
        heatsink_slot(i*10);
    translate([MNT_OFFS, 5, -10]) {
        cylinder(h=20, d=2.0, $fn=360);
    }
    translate([50-MNT_OFFS, 5+1.0, -10]) {
        cylinder(h=20, d=2.0, $fn=360);
    }
}