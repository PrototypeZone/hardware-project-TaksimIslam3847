$fn=32;
translate([0,0,0]){
    rotate([0,90,0]){
        scale([31.2/2,31.2,31.2]){
            import("Gear_Spur_16T.stl");
        }
    }
}

//just used for checking size
//translate([0,0,0]){
//    cylinder(1,35.2/2,35.2/2);
//}
translate([0,0,-2]){
    //union(){
    intersection(){
        translate([0,0,0]){
            cylinder(h=9,d=5.1);
        }
        translate([-10,2.1,0]){
            cube([20,10,16]);
        }
    }
    difference(){
        cylinder(h=9,d=12);
        translate([0,0,-1]){
            cylinder(h=11,d=5.1);
        }
    }
}