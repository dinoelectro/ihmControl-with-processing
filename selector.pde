class selector{
 private String txt;
 private int  x, y, w, h ;
 private int value=1;
 private color backgroundColor, txtColor, Color;

selector(int  _x, int  _y, int  _w, int  _h, color _Color, int _txtColor, String _txt){
x=_x;
y=_y;
w=_w;
h=_h;
txtColor=_txtColor;
Color=_Color;
backgroundColor=color(_Color,90);
txt=_txt;
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

void setColors(color _Color, color _txtColor) {
backgroundColor=color(_Color,90);
Color=_Color;
txtColor=_txtColor;
}

int getValue(){
return value;
}

void show() {  
fill(backgroundColor);  
rect(x,y,w,h,30);
if(value==1){
pushMatrix();
translate(x,y);
fill(Color);
rect(0,0,w/3,h,30);
fill(txtColor);
text(txt, w/2, h/2);
popMatrix();
}else if(value==2){
pushMatrix();
translate(x,y);
fill(Color);
rect(w/3,0,w/3,h,30);
fill(txtColor);
text(txt, w/2, h/2);
popMatrix();
}else if(value==3){
pushMatrix();
translate(x,y);
fill(Color);
rect(2*w/3,0,w/3,h,30);
fill(txtColor);
text(txt, w/2, h/2);
popMatrix();
}

if (mouseX>x && mouseX<x+w/3 && mouseY>y && mouseY<y+h){
if (mousePressed) {
value=1;
}
}
else if(mouseX>x+x/3 && mouseX<x+2*w/3 && mouseY>y && mouseY<y+h){
if (mousePressed) {
value=2;
}
}
else if(mouseX>2*x/3 && mouseX<x+w && mouseY>y && mouseY<y+h){
if (mousePressed) {
value=3;
}
}  
}
}
