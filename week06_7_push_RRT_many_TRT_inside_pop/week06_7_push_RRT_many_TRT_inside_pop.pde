//week06_7_push_RRT_many_TRT_inside_pop
//慢慢組合出機器手臂
void setup(){
  size(500,800,P3D);  
}
void draw(){
  background(255); 
  translate(width/2,height/2); 
  sphere(10); 
  
  fill(252,131,77);
  pushMatrix();
    if(mousePressed && mouseButton==RIGHT) rotateZ(radians(frameCount)); //step2 右鍵旋轉
    if(mousePressed && mouseButton==RIGHT) rotateY(radians(frameCount)); //step3 右鍵旋轉
    translate(0,-100); //Step1 要往上提升
    box(50,200,25);//手臂
    pushMatrix();
      translate(0,-100); //Step0 掛到手臂上，觀察到0,-100
      //Step0 if(mousePressed)刪掉，讓他一直轉
      rotateZ(radians(frameCount));
      translate(100,0); //Step1 把手肘移動量100,0放入
      box(200,50,25); //手肘
      
      pushMatrix(); 
        translate(100,0); 
        rotateZ(radians(frameCount));
        translate(25,0,0);
        box(50,25,50); //小手腕
      popMatrix(); 
    popMatrix(); 
  popMatrix(); 
  }
float x=0,y=0;
void mouseDragged(){ 
  x+=mouseX-pmouseX;
  y+=mouseY-pmouseY;
  println("x:"+x+"y:"+y);
}
