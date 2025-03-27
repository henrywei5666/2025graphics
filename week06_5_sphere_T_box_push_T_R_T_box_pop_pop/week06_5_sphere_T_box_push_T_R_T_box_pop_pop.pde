//week06_5_sphere_T_box_push_T_R_T_box_pop_pop
//慢慢組合出機器手臂
void setup(){
  size(500,400,P3D);  
}
void draw(){
  background(255); 
  translate(width/2,height/2); 
  sphere(10); 
  
  fill(252,131,77);
  pushMatrix(); //Step4 新的一組
    translate(x,y); //Step5 新的轉動
    //Step3 把程式往右縮排
    box(200,50,25); //手肘
    pushMatrix(); 
      translate(100,0); //Step1 把前一步發現的100,0放好
      //if(mousePressed) //Step2 把剛剛if(mousePressed) 刪掉，
      rotateZ(radians(frameCount)); //Step2 只轉動
      translate(25,0,0);//往右推，讓左端放中心
      box(50,25,50); //小手腕
    popMatrix(); 
  popMatrix(); 
}
float x=0,y=0; //會動的位置
void mouseDragged(){ 
  x+=mouseX-pmouseX;
  y+=mouseY-pmouseY;
  println("x:"+x+"y:"+y); //印出來
}
