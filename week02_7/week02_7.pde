//week02-7
//想要把畫出來的座標，變成我們的程式碼!
ArrayList<Integer> x,y; //先有2個還沒準備好的資料結構
ArrayList<ArrayList<Integer>> xx = new ArrayList<ArrayList<Integer>>();
ArrayList<ArrayList<Integer>> yy = new ArrayList<ArrayList<Integer>>();
PImage img;
void setup(){
  size(400,400);
  img = loadImage("dog.png");
} //記得把圖檔，(像上周一樣)拉到程式碼裡
void draw(){
  background(img);
  fill(255,200); //半透明的色彩 白色，alpha值是128
  rect(0,0,400,400); //畫超大的四邊形，全部蓋住
   //上面是week02-4，下面用迴圈，從資料結構取出來
   for(int I=0;I<xx.size();I++){ //大寫I對應大的資料結構
     ArrayList<Integer> x = xx.get(I);  //取出裡面的小的資料結構
     ArrayList<Integer> y = yy.get(I);
     for(int i=1;i<x.size();i++){  //小的，在照舊畫
       line(x.get(i),y.get(i),x.get(i-1),y.get(i-1));
     }
   }
}
void keyPressed(){ //小心，注音輸入法，會卡住按鍵，要換英文輸入
  if(key=='s' || key=='S'){
    for(int I=0;I<xx.size();I++){ //大寫I對應大的資料結構
     ArrayList<Integer> x = xx.get(I);  //取出裡面的小的資料結構
     ArrayList<Integer> y = yy.get(I);
     for(int i=1;i<x.size();i++){  //小的，在照舊畫
       println("vertex("+x.get(i)+","+y.get(i)+");");
     }
   }
 }
}
void mouseDragged(){
  //println("vertex(mouseX,mouseY);");
  //println("vertex("+mouseX+","+mouseY+");");
  x.add(mouseX);
  y.add(mouseY);
}
void mousePressed(){ //滑鼠按下去時，建「新的」資料結構
  x = new ArrayList<Integer>(); xx.add(x);
  y = new ArrayList<Integer>(); yy.add(y);
}
