


include <OPSC-base.scad>




OPSCbuild(shift=200);

// ZZZZ
// Description
        widOOBB = 7;
        heiOOBB = 5;
        usbBeamX=-38;
        pcbBeamXA = -15;
        pcbBeamXB = 15;
        smaBeamX = 42;
        beamY1 = (heiOOBB-1)*15/2;
        beamY2 = -beamY1;
        
module draw1(){
    color="red";
    difference(){
        thick = 3;
        oi("plateOOBB",width=widOOBB,height=heiOOBB,depth=thick,color=color);
        oi("holeM6",x=usbBeamX,y=beamY1,color=color);
        oi("holeM6",x=usbBeamX,y=beamY2,color=color);
        oi("holeM6",x=pcbBeamXA,y=beamY1,color=color);
        oi("holeM6",x=pcbBeamXA,y=beamY2,color=color);
        oi("holeM6",x=pcbBeamXB,y=beamY1,color=color);
        oi("holeM6",x=pcbBeamXB,y=beamY2,color=color);
        oi("holeM6",x=smaBeamX,y=beamY1,color=color);
        oi("holeM6",x=smaBeamX,y=beamY2,color=color);
    
        ORFJinsert("pcb",x=0,y=0,color=color);
    }
        
}

// ZZZZ
// Description
module draw2(){
    color="orange";
    thick = 3;
    difference(){
        oi("plateOOBB",width=1,height=heiOOBB,depth=thick,color=color);
        oi("holeM6",y=beamY1,color=color);
        oi("holeM6",y=beamY2,color=color);
    }
}

// ZZZZ
// Description
module draw3(){
    color="yellow";
    
}

// ZZZZ
// Description
module draw4(){
    color="green";
    
}

// ZZZZ
// Description
module draw5(){
    color="blue";
    
}

// ZZZZ
// Description
module draw6(){
    color="purple";
    
}

// ZZZZ
// Description
module draw7(){
    color="gray";
    
}

// ZZZZ
// Description
module draw8(){
    color="white";
}

// ZZZZ
// Description
module draw9(){
    color="black";
}

// ZZZZ
// Description
module draw10(){
    color="pink";
}



module test(){
    //OPSCInsert("OSPCHole",100,0,0);
    //OPSCInsert("holeM3");
    //OPSCInsert("OPSCHoleSlot",x=50,rad=5,rotZ=45);
    //OPSCInsert("M3SocketHeadFull",0,0,0);
    //OPSCInsert("M3SocketHead",0,0,0,length=25);
    //OPSCInsert("cubeRounded",width=20,height=20,depth=6,rad=5);
   //OPSCInsert("cylinder",rad=20,depth=6); //OPSCInsert("cube",width=20,height=20,depth=6,rad=5,alpha=0.3,color="red");
    
}

module ORFJinsert(item,x=0,y=0,z=0,ex=0,length=0,rotX=0,rotY=0,rotZ=0,width=0,height=0,depth=0,rad=0,color="gray",alpha=1,clearance=0,offset=0){
    color(color,alpha){
            translate([x,y,z]){
                rotate([rotX,rotY,rotZ]){    
                    if(item=="pcb"){
                        xShift = 5;
                        //pcb
                        pcbWid = 65.92;
                        pcbHei = 19;
                        clear=1.5;
                        oi("cubeClearance",rad=clear,x=xShift,width=pcbWid,height=pcbHei,depth=100,z=50,color=color);
                        //USB
                        usbWid = 15.19;
                        usbHei = 12.41;
                        oi("cubeClearance",rad=clear,width=usbWid,height=usbHei,x=-pcbWid/2-usbWid/2+xShift,depth=100,z=50,color=color);
                        //SMA
                        smaWid = 6.3;
                        smaHei = 6.5; //not measured
                        
                        oi("cubeClearance",rad=clear,width=smaWid,height=smaHei,x=pcbWid/2+smaWid/2+xShift,depth=100,z=50,color=color);
                }
            }
        }
    }
}
