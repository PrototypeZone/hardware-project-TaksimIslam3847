$fn=20;
//translate([-71,-89.5,0]){
//    import("GT2_20T_dzino3D_print.STL");
//}
    translate([-71,-91,0]){import("GT2_20T_Pulley_dzino_3Dprint.STL");
    }
    //translate([20,20,0]){import("GT2_20T_Pulley_dzino_3Dprint2.STL");
    //}
    
    //union(){
    intersection(){
        translate([0,0,0]){
            cylinder(h=9,d=5.2);
        }
        translate([-10,2.2,0]){
            cube([20,10,16]);
        }
    }
    difference(){
        cylinder(h=9,d=9);
        translate([0,0,-1]){
            cylinder(h=11,d=5.2);
        }
}