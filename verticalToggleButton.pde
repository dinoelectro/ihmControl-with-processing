class verticalToggleButton{
private String label, onText, offText;
private int x,y,w,h,txtSize;
private boolean value;
private color backgroundColor, Color, txtColor;

verticalToggleButton(int  _x, int  _y, int  _w, int  _h, color _Color,color _txtColor, String _offText, String _onText){
x=_x;
y=_y;
w=_w;
h=_h;
Color=_Color;
backgroundColor=color(_Color,90);
txtColor=_txtColor;
offText=_offText;
onText=_onText;
label=_offText;
}

boolean getValue(){
return value;
}
void setColors(color _Color, color _txtColor){
Color=_Color;
txtColor=_txtColor;
backgroundColor =color(_Color,50);
}
void setPosition(int  _x, int  _y) {
x=_x;
y=_y;
}
void setSize(int  _w, int  _h) {
w=_w;
h=_h;
}
void setText(String _offText, String _onText) {
offText=_offText;
onText=_onText;
}
void show(){
if (mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+h/2) {
if (mousePressed){
value=false;
}
}
else if(mouseX>x && mouseX<x+w && mouseY>y+h/2 && mouseY<y+h){ 
 if (mousePressed){ 
value=true;
}
}

fill(backgroundColor);
rect(x,y,w,h,30);
fill(Color);
if(value){label=onText;rect(x,y,w,h/2,30);}else {label=offText;rect(x,y+h/2,w,h/2,30);}
fill(txtColor);
textAlign(CENTER);
text(label,x+w/2,y+h/2);    
}
}
