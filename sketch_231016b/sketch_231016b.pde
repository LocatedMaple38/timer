float xTime, yTime, wigthTime, hightTime;
float xStart, yStat, widthStart, heightStart;
float xStop, yStop,  widthStop, heightStop;
float xReset, yReset, widthReset, heightReset;

int appHeight, appWidth;

 void setup(){
  println("Width:"+width, "\t", "Height:"+height);
  println("Display Width: "+displayWidth, "\tDisplay Height: "+displayHeight);
  size(500, 500);
  appWidth = width;
  appHeight = height;
  
  xStart = appWidth*1/5;
  yStat = appHeight*3/5;
  widthStart = appWidth*1/15;
  heightStart = appHeight*1/30;
  
  xStop = appWidth*1/5;
  yStop = appHeight*3.2/5;
  widthStop = appWidth*1/15;
  heightStop = appHeight*1/30;
  
  xReset = appWidth*1.4/5;
  yReset = appHeight*3/5;
  widthReset = appWidth*1/15;
  heightReset = appHeight*1/30;
  
  xTime = appWidth*1/10;
  yTime = appHeight*1/10;
  wigthTime = appWidth*2.4/3;
  hightTime = appHeight*1/3;

}
void mousePressed(){
  

}
void keyPressed(){ 
  if(key == CODED && keyCode == DOWN) {
  println("start");}
  
  if(key == CODED && key==UP){ 
  println("stop");}
 
  if(key==ENTER){ 
  println("reset");}
 
}
void draw(){
  fill(0,255,0);
  rect(xStart, yStat, widthStart, heightStart);
  fill(255,0,0);
  rect(xStop, yStop,  widthStop, heightStop);
  fill(255,255,255);
  rect(xTime, yTime, wigthTime, hightTime);
  rect(xReset, yReset, widthReset, heightReset);
}
