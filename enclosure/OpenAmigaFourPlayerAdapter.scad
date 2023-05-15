
// Parameters
$fn=90;

tolerance=0.6;

length=38;
bigWidth=64.5+tolerance;
smallWidth=53+tolerance;
part1=21;

support_length=3.7;
thickness=2;
thickness_h=2;

db9andcard_height=10.6;
db9_width=30.8;

top_support_depth=5.9;

mid_support_depth=4.5;


length_in=26.6-tolerance;
bigWidth_in=51.70+tolerance;
smallWidth_in=40.8+tolerance;
part1_in=15;

height_pc_in=0.6;
height_pc_bot=0.7;
height_pc_top=0.3;

hole_x1=2;
hole_y1=length/2;
hole_x2=smallWidth+(bigWidth-smallWidth)/6;
hole_y2=length/5;
hole_r=2;
hole_ri=2;
hole_rs=1.1;


//0 for design, 1 to generate stl for bottom, 2 to generate stl for top
which = 2;

if(which==0 || which==1)
  difference() {   union() {
        //base     
        linear_extrude(height = thickness_h) polygon([[0,0],[0,length],[bigWidth,length],[bigWidth,length-part1],[smallWidth,0]]);

        //side
        linear_extrude(height = thickness_h+db9andcard_height*height_pc_bot) 
        polygon(points=[[0,0],[0,length],[bigWidth,length],[bigWidth,length-part1],[smallWidth,0],[0-thickness,0],[0-thickness,length],[bigWidth+thickness,length],[bigWidth+thickness,length-part1],[smallWidth+thickness,0]], paths=[[0,1,2,3,4],[5,6,7,8,9]],convexity=10);
     
       //side internal
       translate ([(smallWidth-smallWidth_in)/2,(length-length_in)/2+tolerance/2, 0]) linear_extrude(height = thickness_h+db9andcard_height*height_pc_in) 
        polygon(points=[[0,0],[0,length_in],[bigWidth_in,length_in],[bigWidth_in,length_in-part1_in],[smallWidth_in,0],[0-thickness,0],[0-thickness,length_in],[bigWidth_in+thickness,length_in],[bigWidth_in+thickness,length_in-part1_in],[smallWidth_in+thickness,0]], paths=[[0,1,2,3,4],[5,6,7,8,9]],convexity=10);
         
    translate([bigWidth/2,length/2,0]) linear_extrude(height =thickness_h+mid_support_depth) square(10,center=true);
         
 }
 
     linear_extrude(height = db9andcard_height) translate([hole_x1,hole_y1,0]) circle(r=hole_ri); 
    translate([hole_x1,hole_y1,0]) cylinder(h=thickness_h*1.5, r1=hole_ri*2.2, r2=hole_ri, center=true);
 
    linear_extrude(height = db9andcard_height) translate([hole_x2,hole_y2,0]) circle(r=hole_ri); 
  translate([hole_x2,hole_y2,0]) cylinder(h=thickness_h*1.5, r1=hole_ri*2.2, r2=hole_ri, center=true);
 
 }
     
//Top
separation=1;
 

if(which==0 || which==2)
    translate ([0,0, separation])   difference() {  union() {
            //base     
            translate([0,0,thickness_h+db9andcard_height+tolerance]) linear_extrude(height = thickness_h) polygon([[0,0],[0,length],[bigWidth,length],[bigWidth,length-part1],[smallWidth,0]]);
        
                    //side
            translate([0,0,thickness_h+db9andcard_height*height_pc_bot-tolerance]) linear_extrude(height = db9andcard_height*height_pc_top+thickness_h+tolerance*2) polygon(points=[[0,0],[0,length],[bigWidth,length],[bigWidth,length-part1],[smallWidth,0],[0-thickness,0],[0-thickness,length],[bigWidth+thickness,length],[bigWidth+thickness,length-part1],[smallWidth+thickness,0]], paths=[[0,1,2,3,4],[5,6,7,8,9]],convexity=10);
        
                    //between db
            translate([0,0,thickness_h+tolerance]) linear_extrude(height = db9andcard_height) polygon([[db9_width+tolerance,length],[bigWidth-db9_width-tolerance,length],[bigWidth-db9_width-tolerance,length-top_support_depth],[db9_width+tolerance,length-top_support_depth]]);
        

    translate([bigWidth/2,length/2,db9andcard_height/2+thickness_h+thickness_h/2-0.2+tolerance]) linear_extrude(height =thickness_h+mid_support_depth) square(10,center=true);
        
     //Support for screw   
     translate([0,0,db9andcard_height/2+thickness_h+tolerance*2]) linear_extrude(height = db9andcard_height*0.5+tolerance) translate([hole_x1,hole_y1,0]) circle(r=hole_r);     
     translate([0,0,db9andcard_height/2+thickness_h+tolerance*2]) linear_extrude(height = db9andcard_height*0.5+tolerance) translate([hole_x2,hole_y2,0]) circle(r=hole_r);
    //Enforce support for screw  
    translate([hole_x1,hole_y1,db9andcard_height*0.6+thickness_h+tolerance*2]) rotate_extrude() translate([hole_r,0,0]) polygon([[0,0],[0,db9andcard_height*0.4+tolerance],[2,db9andcard_height*0.4]]);
    translate([hole_x2,hole_y2,db9andcard_height*0.6+thickness_h+tolerance*2]) rotate_extrude() translate([hole_r,0,0]) polygon([[0,0],[0,db9andcard_height*0.4+tolerance],[2,db9andcard_height*0.4]]);

    }
    
    linear_extrude(height = db9andcard_height+thickness_h) translate([hole_x1,hole_y1,0]) circle(r=hole_rs); 

    linear_extrude(height = db9andcard_height+thickness_h) translate([hole_x2,hole_y2,0]) circle(r=hole_rs); 

    
}