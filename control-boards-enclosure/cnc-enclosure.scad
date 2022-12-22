// Generated by SolidPython 1.1.3 on 2022-12-22 12:31:29


difference() {
	union() {
		cube(size = [130, 105, 2]);
		translate(v = [17, 7, 0]) {
			union() {
				translate(v = [0, 0, 0]) {
					union() {
						cylinder($fn = 50, h = 10, r = 1.3000000000);
						cylinder($fn = 50, h = 5, r = 2.5000000000);
					}
				}
				translate(v = [1.5000000000, 48.3000000000, 0]) {
					union() {
						cylinder($fn = 50, h = 10, r = 1.3000000000);
						cylinder($fn = 50, h = 5, r = 2.5000000000);
					}
				}
				translate(v = [52.2000000000, 33, 0]) {
					union() {
						cylinder($fn = 50, h = 10, r = 1.3000000000);
						cylinder($fn = 50, h = 5, r = 2.5000000000);
					}
				}
				translate(v = [52.2000000000, 6, 0]) {
					union() {
						cylinder($fn = 50, h = 10, r = 1.3000000000);
						cylinder($fn = 50, h = 5, r = 2.5000000000);
					}
				}
			}
		}
		translate(v = [13, 67, 0]) {
			union() {
				cylinder($fn = 50, h = 10, r = 1.3000000000);
				cylinder($fn = 50, h = 5, r = 2.5000000000);
				translate(v = [27, 0, 0]) {
					union() {
						cylinder($fn = 50, h = 10, r = 1.3000000000);
						cylinder($fn = 50, h = 5, r = 2.5000000000);
					}
				}
				translate(v = [27, 30, 0]) {
					union() {
						cylinder($fn = 50, h = 10, r = 1.3000000000);
						cylinder($fn = 50, h = 5, r = 2.5000000000);
					}
				}
				translate(v = [0, 30, 0]) {
					union() {
						cylinder($fn = 50, h = 10, r = 1.3000000000);
						cylinder($fn = 50, h = 5, r = 2.5000000000);
					}
				}
			}
		}
		translate(v = [50, 67, 0]) {
			union() {
				cylinder($fn = 50, h = 10, r = 1.3000000000);
				cylinder($fn = 50, h = 5, r = 2.5000000000);
				translate(v = [27, 0, 0]) {
					union() {
						cylinder($fn = 50, h = 10, r = 1.3000000000);
						cylinder($fn = 50, h = 5, r = 2.5000000000);
					}
				}
				translate(v = [27, 30, 0]) {
					union() {
						cylinder($fn = 50, h = 10, r = 1.3000000000);
						cylinder($fn = 50, h = 5, r = 2.5000000000);
					}
				}
				translate(v = [0, 30, 0]) {
					union() {
						cylinder($fn = 50, h = 10, r = 1.3000000000);
						cylinder($fn = 50, h = 5, r = 2.5000000000);
					}
				}
			}
		}
		translate(v = [87, 67, 0]) {
			union() {
				cylinder($fn = 50, h = 10, r = 1.3000000000);
				cylinder($fn = 50, h = 5, r = 2.5000000000);
				translate(v = [27, 0, 0]) {
					union() {
						cylinder($fn = 50, h = 10, r = 1.3000000000);
						cylinder($fn = 50, h = 5, r = 2.5000000000);
					}
				}
				translate(v = [27, 30, 0]) {
					union() {
						cylinder($fn = 50, h = 10, r = 1.3000000000);
						cylinder($fn = 50, h = 5, r = 2.5000000000);
					}
				}
				translate(v = [0, 30, 0]) {
					union() {
						cylinder($fn = 50, h = 10, r = 1.3000000000);
						cylinder($fn = 50, h = 5, r = 2.5000000000);
					}
				}
			}
		}
	}
	translate(v = [6, 6, 0]) {
		translate(v = [0, 0, -0.0500000000]) {
			cylinder($fn = 50, h = 2.1000000000, r1 = 2, r2 = 4);
		}
	}
	translate(v = [124, 6, 0]) {
		translate(v = [0, 0, -0.0500000000]) {
			cylinder($fn = 50, h = 2.1000000000, r1 = 2, r2 = 4);
		}
	}
	translate(v = [6, 99, 0]) {
		translate(v = [0, 0, -0.0500000000]) {
			cylinder($fn = 50, h = 2.1000000000, r1 = 2, r2 = 4);
		}
	}
	translate(v = [124, 99, 0]) {
		translate(v = [0, 0, -0.0500000000]) {
			cylinder($fn = 50, h = 2.1000000000, r1 = 2, r2 = 4);
		}
	}
}
/***********************************************
*********      SolidPython code:      **********
************************************************
 
from solid import *
from solid.utils import *  # Not required, but the utils module is useful
import os

bottom = cube([130, 105, 2])
leg = cylinder(1.3, 10, segments=50) + cylinder(2.5, 5, segments=50)

screw_hole = translate([0,0,-0.05])(cylinder(h=2.1, r1=2, r2=4, segments=50))

motor_driver_holder = leg + translate([27,0,0])(leg) + translate([27,30,0])(leg) + translate([0,30,0])(leg)

arduino_holder = translate([0, 0, 0])(leg) + translate([1.5, 48.3, 0])(leg) + translate([52.2, 33, 0])(leg) +translate([52.2, 6, 0])(leg)

piece = (
    bottom 
    + translate([17,7,0])(
        arduino_holder
    ) 
    + translate([13,67,0])(
        motor_driver_holder
    ) 
    + translate([50,67,0])(
        motor_driver_holder
    ) 
    + translate([87,67,0])(
        motor_driver_holder
    )
    - translate([6,6,0])(
        screw_hole
    )
    - translate([124,6,0])(
        screw_hole
    )
    - translate([6,99,0])(
        screw_hole
    )
    - translate([124,99,0])(
        screw_hole
    )

)


scad_render_to_file(piece, os.path.join(os.path.dirname(os.path.realpath(__file__)), 'cnc-enclosure.scad')) 
 
************************************************/
