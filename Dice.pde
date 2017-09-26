int r1;
Die diu= new Die(150,150);
void setup()
{
  noLoop();
  strokeWeight(14);
  textAlign(CENTER);
  size(600,600);
}
void draw()
{
  int Sum=0;
  background(0);
  for(int y=50;y<550;y+=100){
    for(int x=50;x<550;x+=100){
  Die diu= new Die(x,y);
  diu.roll();
  diu.show();
  Sum= r1+Sum;
    }
  }
  textSize(30);
  fill(255,0,255);
  text("Sum:"+Sum,300,590);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube 
{
  int myX,myY,Sum;
  Die(int x,int y) //constructor
  {
    r1=(int)((Math.random()*6)+1);
    myX=x;
    myY=y;
  }
  void roll()
  {
    //your code here
  }
  void show()
  { 
    fill(255,255,0);
    rect(myX,myY,80,80,100);
    
    if(r1==1){
      fill(0,255,255);
      ellipse(myX+40,myY+40,17,17);
    }
    if(r1==2){
      fill(0,255,255);
      ellipse(myX+40,myY+20,17,17);
      ellipse(myX+40,myY+60,17,17);
    }
    if(r1==3){
      fill(0,255,255);
      ellipse(myX+20,myY+20,17,17);
      ellipse(myX+40,myY+40,17,17);
      ellipse(myX+60,myY+60,17,17);
    }
    if(r1==4){
      fill(0,255,255);
      ellipse(myX+20,myY+20,17,17);
      ellipse(myX+60,myY+20,17,17);
      ellipse(myX+20,myY+60,17,17);
      ellipse(myX+60,myY+60,17,17);
    }
    if(r1==5){
      fill(0,255,255);
      ellipse(myX+20,myY+20,17,17);
      ellipse(myX+60,myY+20,17,17);
      ellipse(myX+20,myY+60,17,17);
      ellipse(myX+60,myY+60,17,17);
      ellipse(myX+40,myY+40,17,17);
    }
    if(r1==6){
      fill(0,255,255);
      ellipse(myX+20,myY+20,17,17);
      ellipse(myX+20,myY+40,17,17);
      ellipse(myX+20,myY+60,17,17);
      ellipse(myX+60,myY+20,17,17);
      ellipse(myX+60,myY+40,17,17);
      ellipse(myX+60,myY+60,17,17);
    }
  }  
}
