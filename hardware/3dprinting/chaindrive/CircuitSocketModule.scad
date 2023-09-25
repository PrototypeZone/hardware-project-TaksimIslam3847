//Mindware Start-up circuits
//Load socket module
//PCB yet to take one of these apart
//m4 screws were used for CBA STM32 case
//holes for banana jacks are 8mm diameter
m4Radius = 3.5/2; // centre 4mm or more from edge, KiCad 5.08mm or 0.2"
holeOffset = 5.08;
$fn=30;
difference(){
    union(){
        cube([40,40,24]);
        translate([8,1,0]){
            cylinder(24,4,4);
        }
        translate([20,1,0]){
            cylinder(24,4,4);
        }
        translate([32,1,0]){
            cylinder(24,4,4);
        }
        translate([8,39,0]){
            cylinder(24,4,4);
        }
        translate([20,39,0]){
            cylinder(24,4,4);
        }
        translate([32,39,0]){
            cylinder(24,4,4);
        }
        //acrylic tab
        translate([38,2,4.5]){
            cube([(76-40)/2+2,36,3]);
        }    
    }
    translate([1.75,1.75,12]){
        cube([36.5,36.5,13]);
    }
    translate([4,20-5/2,0]){
        cube([6,5,13]);
    }    
    translate([2+2.5-0.5,2+2.5-0.5,-1]){
        //pcb cube([31,31,1]);
        cube([32,32,12+1-(8-5.5)]);
    }
    translate([2+2.5+holeOffset,2+2.5+holeOffset,0]){
        cylinder(24,m4Radius,m4Radius);
    }
    translate([2+2.5+holeOffset,40-(2+2.5+holeOffset),0]){
        cylinder(24,m4Radius,m4Radius);
    }
    translate([40-(2+2.5+holeOffset),2+2.5+holeOffset,0]){
        cylinder(24,m4Radius,m4Radius);
    }
    translate([40-(2+2.5+holeOffset),40-(2+2.5+holeOffset),0]){
        cylinder(24,m4Radius,m4Radius);
    }
    //acrylic slot
    translate([-1,-3,4.4]){
        cube([42,5,3.2]);
    }
    translate([-1,-1,4.4]){
        cube([3,42,3.2]);
    }
    translate([-1,38,4.4]){
        cube([42,5,3.2]);
    }    
}
