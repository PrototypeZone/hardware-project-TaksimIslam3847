$fn=45;
//translate([4.75,0,1-1]){
//    import("cl_roller.stl");
//}
difference(){
    cylinder(h=4.5,d=5.1);
    cylinder(h=9,d=3.75);//was cylinder(h=9,d=3.65);
}