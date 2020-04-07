class button{
private String label, onText, offText;
private int x,y,w,h;
private boolean value;
private color backgroundColor, Color, txtColor;

button(int  _x, int  _y, int  _w, int  _h, color _Color, color _txtColor, String _offText, String _onText){
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

void setColor(color _Color, color _txtColor){
Color=_Color;
backgroundColor=color(_Color,90);
txtColor=_txtColor;
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
if (mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+h) {
if (mousePressed){
label=onText;
backgroundColor=Color;
value=true;
}else{ 
label=offText;
backgroundColor=color(Color,90);
value=false;
}
}
fill(backgroundColor);
rect(x,y,w,h,30);
textAlign(CENTER);
fill(txtColor);
text(label,x+w/2,y+h/2);
}
}
