from solid import *
from solid.utils import *  # Not required, but the utils module is useful
import os

bottom = cube([130, 105, 2])
leg = cylinder(3, 7, segments=50) - cylinder(1.2, 10, segments=50)

screw_hole = translate([0,0,-0.05])(cylinder(h=2.1, r1=1.5, r2=3, segments=50))

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