//week10_3_postman_head_body_arm_l_leg_l_push_trt_pop
PImage postman, head, body, arm_l, leg_l;
void setup(){
  size(560,560);
  postman = loadImage("1.png");
  head = loadImage("head.png");
  body = loadImage("body.png");
  arm_l = loadImage("arm_l.png");
  leg_l = loadImage("leg_l.png");
}
void draw(){
  background(#FFFFF2);
  image(postman,0,0);  //基礎的郵差先生(全身)
  fill(255,0,255,128);  //半透明的紫色
  rect(0,0,560,560); //蓋上去
  pushMatrix();
    translate(231,253); //再放回去
    rotate(radians(mouseX));
    translate(-231,-253); //把頭的旋轉中心，放到(0,0)
    image(arm_l,0,0);  //左手
  popMatrix();
  pushMatrix();
    translate(246,360); //再放回去
    //rotate(radians(mouseX));
    translate(-246,-360); //把頭的旋轉中心，放到(0,0)
    image(leg_l,0,0);  //左腳
  popMatrix();
  pushMatrix();
    translate(260,230); //再放回去
    //rotate(radians(mouseX));
    translate(-260,-230); //把頭的旋轉中心，放到(0,0)
    image(head,0,0);  //先畫頭
  popMatrix();
  image(body,0,0); //再畫身體
}  
