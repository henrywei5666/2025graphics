//week12_3_gundam_head_body_left_keyPressed_ID
//week12_2_gundam_head_body_uparm_upuparm_hand_angle
//要加上float[] angleX = new float[10];
//要加上float[] angleY = new float[10];
PShape body,head;
PShape uparm1,upuparm1,hand1;
void setup(){
  size(400,400,P3D);
  body=loadShape("body.obj");
  head=loadShape("head.obj");
  uparm1=loadShape("uparm1.obj");
  upuparm1=loadShape("upuparm1.obj");
  hand1=loadShape("hand1.obj");
}
float[] angleX = new float[10];
float[] angleY = new float[10];
int ID = 0; //0:頭,1:上上手臂,2:上手臂,3:手
void mouseDragged(){
  angleX[ID] += radians(mouseX - pmouseX); //左右拖曳
  angleY[ID] += radians(mouseY - pmouseY); //上下拖曳
}
void keyPressed(){
  if(key=='1') ID = 1; //還沒設好 「上上手臂」
  if(key=='2') ID = 2; //上手臂
  if(key=='3') ID = 3; //手
  if(key=='4') ID = 4;
  if(key=='5') ID = 5;
  if(key=='6') ID = 6;
  if(key=='7') ID = 7;
  if(key=='8') ID = 8;
  if(key=='9') ID = 9;
  if(key=='0') ID = 0; //頭
}
void draw(){
  background(204);
  translate(200,300);
  sphere(10); //原點的球
  
  scale(10,-10,10);
  shape(body,0,0);
  pushMatrix();
    translate(0,22.5);
    rotateY(angleX[0]); //x方向 左右拖曳,是對Y軸轉
    rotateX(angleY[0]); //y方向 上下拖曳,是對X軸轉
    translate(0,-22.5);
    shape(head,0,0);
  popMatrix();
  
  pushMatrix();
    shape(upuparm1,0,0); //上上手臂
    pushMatrix();
      translate(-4.1,19.9);
      rotateZ(angleY[2]);
      rotateY(angleX[2]);
      translate(4.1,-19.9);
      shape(uparm1,0,0); //上手臂
      pushMatrix();
        translate(-4.5,16.9);
        rotateY(angleX[3]);
        rotateX(angleY[3]);
        translate(4.5,-16.9);
        shape(hand1,0,0);
      popMatrix();
    popMatrix();
  popMatrix();
}
