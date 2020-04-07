class slider {
 private String txt;
 private int  x, y, w, h;
 private float slValue;
 private int value;
 private color backgroundColor, txtColor, Color;

public slider(int  _x, int  _y, int  _w, int  _h, color _Color, color _txtColor, String _txt){
x=_x;
y=_y;
w=_w;
h=_h;
backgroundColor=color(_Color,90);
Color=_Color;
txtColor=_txtColor;
txt = _txt;
}

void setPosition(int  _x, int  _y) {
x=_x;
y=_y;
}

void setSize(int  _w, int  _h) {
w=_w;
h=_h;
}

void setText(String _txt) {
txt=_txt;
}

int getValue(){
return value;
}

void setColors(color _Color, color _txtColor) {
backgroundColor=color(_Color,90);
Color=_Color;
txtColor=_txtColor;
}

void show() {  
fill(backgroundColor);  
rect(x,y,w,h,30);
pushMatrix();
translate(x,y);
fill(Color);
rect(0,0,slValue,h,30);
fill(txtColor);
text(txt, w/2, (1.3*h)/2);
popMatrix();
if (mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+h) {
if (mousePressed) {
slValue=mouseX-x; 
if(slValue>=w-1)slValue=w;
value=(int)slValue*100/w; 
}
}
}
}
