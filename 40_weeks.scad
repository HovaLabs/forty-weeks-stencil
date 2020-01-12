size = 215; // 215mm aka ~8.5 inches for 8.5 x 11

$fn = 1000;

color("black")
difference() {
    square([size, size]);

    translate([0.1, 0.1])
    square([size - 0.2, size - 0.2]);
}

for(x = [0: 4])
for(y = [0: 7])
color("black")
translate([size / 10 + size / 5 * x, size - size / 16- size / 8 * y])
text(str(y * 5 + x + 1), font="Europa:style=Bold", valign="center", halign="center");
