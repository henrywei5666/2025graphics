//week06_6_push_box_push_TRT_box_push_TRT_box_pop_pop_pop
//慢慢組合出機器手臂
void setup(){
  size(500,400,P3D);  
}
void draw(){
  background(255); 
  translate(width/2,height/2); 
  sphere(10); 
  
  fill(252,131,77);
  pushMatrix(); //Step4 push
    //往右縮排
    box(50,200,25); //Step3 手臂
    pushMatrix();
      translate(x,y); //Step3 掛到手臂上，觀察到0,-100
      if(mousePressed) rotateZ(radians(frameCount)); //Step2 把旋轉放入
      translate(100,0); //Step1 把手肘移動量100,0放入
      box(200,50,25); //手肘
      
      pushMatrix(); 
        translate(100,0); 
        //if(mousePressed)
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
