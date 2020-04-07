/*
  author raul barreto q.
  ihmControls V1.
  any question? dino_barreto@hormail.com
*/

button B1,B2;
roundButton B3;
toggleButton B4;
verticalToggleButton B5;
slider S1;
verticalSlider S2;
selector S3;
int bgColor=10;

void setup(){
  size(700,600);
  textSize(30);
  stroke(255);
  B1 = new button(10,10,200,100,color(255,0,0),color(255),"Click me!","OK");                //button(xpos,ypos,width,height,color,txtColor,offText,onText)
  B2 = new button(10,150,200,100,color(0,255,0),color(255),"OFF","ON");
  B3 = new roundButton(110,350,200,100,color(255,255,0),color(255),"MOTOR OFF","MOTOR ON"); //roundButton(xpos,ypos,diameter1,diameter2,color,txtColor,offText,onText)
  B4 = new toggleButton(10,450,200,100,color(0,255,0),color(255),"START","STOP");           //togleButton(xpos,ypos,width,height,color,txtColor,offText,onText)
  S1 = new slider(300,10,300,100,color(0,0,255),color(255),"LOAD");                         //slider(xpos,ypos,width,height,color,txtColor,Text)
  B5 = new verticalToggleButton(300,150,100,300,color(255,0,255),color(255),"STOP!","Ok");  
  S2 = new verticalSlider(500,150,100,300,color(255,0,0),color(255),"LEVEL");
  S3 = new selector(300,500,300,50,color(255,255,0),color(255),"SELECT");                   //selector values are 1 2 or 3 
}

void draw(){
  background(bgColor);
  B1.show();
  B2.show();
  B3.show();
  B4.show();
  textSize(10+S2.getValue());
  text(S1.getValue() + "%",450,140);
  text((int)S3.getValue(),450,480);
  if(B1.getValue()){background(127);}
  bgColor=(int)map(S1.getValue(),0,100,0,255);
  if(B4.getValue()){
  B5.show();
  S1.show();
  S2.show();
  S3.show();
  }
}
