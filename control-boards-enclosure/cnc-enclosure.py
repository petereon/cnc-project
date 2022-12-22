from solid import *
from solid.utils import *  # Not required, but the utils module is useful
import os

arduino = import_stl(os.path.join(os.path.dirname(os.path.realpath(__file__)), "Arduino.stl"))

bottom = cube([130, 105, 2])
leg = cylinder(1.3, 10, segments=50) + cylinder(2.5, 5, segments=50)

motor_driver_holder = leg + translate([27,0,0])(leg) + translate([27,30,0])(leg) + translate([0,30,0])(leg)

arduino_holder = translate([0, 0, 0])(leg) + translate([1.5, 48.3, 0])(leg) + translate([52.2, 33, 0])(leg) +translate([52.2, 6, 0])(leg)

piece = (
    bottom 
    + translate([17,7,0])(
        arduino_holder
    ) 
    + translate([10,67,0])(
        motor_driver_holder
    ) 
    + translate([50,67,0])(
        motor_driver_holder
    ) 
    + translate([90,67,0])(
        motor_driver_holder
    ) 
    # + translate([2,0,0])(translate([1.5,58,10])(rotate([0,0,-90])(arduino)))
)


scad_render_to_file(piece, os.path.join(os.path.dirname(os.path.realpath(__file__)), 'cnc-enclosure.scad'))