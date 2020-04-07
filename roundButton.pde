class roundButton{
private String label, onText, offText;
private int x,y,d1,d2,txtSize;
private boolean value;
private color backgroundColor, Color, txtColor;

roundButton(int  _x, int  _y, int _d1, int _d2, color _Color, color _txtColor, String _offText, String _onText){
x=_x;
y=_y;
d1=_d1;
d2=_d2;
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
}
void setPosition(int  _x, int  _y) {
x=_x;
y=_y;
}
void setSize(int  _d1, int _d2) {
d1=_d1;
d2=_d2;
}
void setText(String _offText, String _onText) {
offText=_offText;
onText=_onText;
}
void show(){
float dist=dist(x,y,mouseX,mouseY);  
if (dist<d1/2 && dist<d2/2) {
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
ellipse(x,y,d1,d2);
fill(txtColor);

textAlign(CENTER);
text(label,x,y);
}
}
