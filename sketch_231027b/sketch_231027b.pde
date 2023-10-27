int appWidth, appHeight;

float xTime1, yTime1, widthTime1, heightTime1;
float xTime2, yTime2, widthTime2, heightTime2;
float xStartTime1, yStartTime1, widthStartTime1, heightStartTime1;
float xStartTime2, yStartTime2, widthStartTime2, heightStartTime2;
float xStartTimeAll, yStartTimeAll, widthStartTimeAll, heightStartTimeAll;
float xStopTime1, yStopTime1, widthSropTime1, heightStopTime1;
float xStopTime2, yStopTime2, widthStopTime2, heightStopTime2;
float xStopTimeAll, yStopTimeAll, widthStopTimeAll, heightStopTimeAll;
float xResetTime1, yResetTime1, widthResetTime1, heightResetTime1;
float xResetTime2, yRestTime2, widthResetTime2, heightResetTime2;
float xResetTimeAll, yResetTimeAll, widthResetTimeAll, heightResetTimeAll;

void setup(){
  
  println("Width:"+width, "\t", "Height:"+height);
  println("Display Width: "+displayWidth, "\tDisplay Height: "+displayHeight);
  size(1000, 500);
  appWidth = width;
  appHeight = height;

  xTime1 = appWidth*0;
  yTime1 = appHeight*0;
  widthTime1 = appWidth*1/2;
  heightTime1 = appHeight*1/2;
  
  xTime2 = appWidth*1/2;
  yTime2 = appHeight*0;
  widthTime2 = appWidth*1/2;
  heightTime2 = appHeight*1/2;
  
  xResetTime1 = appWidth*0;
  yResetTime1 = appHeight*1/2;
  widthResetTime1 = appWidth*1/12;
  heightResetTime1 = appHeight*1/12;
  
  xResetTime2 = appWidth*1/2;
  yRestTime2 = appHeight*1/2;
  widthResetTime2 = appWidth*1/12;
  heightResetTime2 = appHeight*1/12;
  
  xStartTime1 = appWidth*0;
  yStartTime1 = appHeight*7/12;
  widthStartTime1 = appWidth*1/12;
  heightStartTime1 = appHeight*1/12;
  
  xStartTime2 = appWidth*1/2;
  yStartTime2 = appHeight*7/12;
  widthStartTime2 = appWidth*1/12;
  heightStartTime2 = appHeight*1/12;
  
  xResetTimeAll = appWidth*0;
  yResetTimeAll = appHeight*9.5/10;
  widthResetTimeAll = appWidth-1;
  heightResetTimeAll = appHeight*1/10;
  
  xStartTimeAll = appWidth*0;
  yStartTimeAll = appHeight*9/10;
  widthStartTimeAll = appWidth-1;
  heightStartTimeAll = appHeight*1/10;
  
  
  
}
void draw(){
  
  fill(255, 255, 255);
  rect(xTime1, yTime1, widthTime1, heightTime1);
  rect(xTime2, yTime2, widthTime2, heightTime2);
  fill(0, 255, 0);
  rect(xStartTime1, yStartTime1, widthStartTime1, heightStartTime1);
  rect(xStartTime2, yStartTime2, widthStartTime2, heightStartTime2);
  rect(xStartTimeAll, yStartTimeAll, widthStartTimeAll, heightStartTimeAll);
  fill(0, 0, 255);
  rect(xResetTimeAll, yResetTimeAll, widthResetTimeAll, heightResetTimeAll);
  rect(xResetTime1, yResetTime1, widthResetTime1, heightResetTime1);
  rect(xResetTime2, yRestTime2, widthResetTime2, heightResetTime2);
  
}
void keyPressed(){
  
}
void mousePressed(){
  
}
