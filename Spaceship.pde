class Spaceship extends Floater  
{   
    public Spaceship(){
     corners=4;
     xCorners=new int[corners];
     yCorners=new int[corners];
     xCorners[0]=-8;
     yCorners[0]=-8;
     xCorners[1]=16;
     yCorners[1]=0;
     xCorners[2]=-8;
     yCorners[2]=8;
     xCorners[3]=-2;
     yCorners[3]=0;
     myColor=color(
66, 149, 245
);
     myCenterX=myCenterY=500;
     myXspeed=myYspeed=0;
     myPointDirection=0;
    }
    public void hyperSpace(){
     myCenterX=(int)(Math.random()*1000);
     myCenterY=(int)(Math.random()*1000); 
     myXspeed=myYspeed=0;
     myPointDirection=(int)(Math.random()*360);
    }
}
