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

int appWidth, appHeight;

PFont mono;

void setup(){
  
  println("Width:"+width, "\t", "Height:"+height);
  println("Display Width: "+displayWidth, "\t Display Height: "+displayHeight);
  size(1000, 500);
  appWidth = width;
  appHeight = height;

  mono = createFont("andalemo.ttf", 128);
  background(0);
  textFont(mono);
  text("10:00", xTime1*1/2, yTime1*1/2);
  text("2:00", xTime2*1/2, yTime2*1/2);

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

  xResetTimeAll = appWidth*0;
  yResetTimeAll = appHeight*9.5/10;
  widthResetTimeAll = appWidth-1;
  heightResetTimeAll = appHeight*1/10;

  xStartTime1 = appWidth*0;
  yStartTime1 = appHeight*7/12;
  widthStartTime1 = appWidth*1/12;
  heightStartTime1 = appHeight*1/12;
  
  xStartTime2 = appWidth*1/2;
  yStartTime2 = appHeight*7/12;
  widthStartTime2 = appWidth*1/12;
  heightStartTime2 = appHeight*1/12;
  
  xStartTimeAll = appWidth*0;
  yStartTimeAll = appHeight*9/10;
  widthStartTimeAll = appWidth-1;
  heightStartTimeAll = appHeight*1/10;

  xStopTime1 = appWidth*0;
  yStopTime1 = appHeight*7/12;
  widthSropTime1 = appWidth*1/12;
  heightStopTime1 = appHeight*1/12;

  xStopTime2 = appWidth*1/2;
  yStopTime2 = appHeight*7/12;
  widthStopTime2 = appWidth*1/12;
  heightStopTime2 = appHeight*1/12;

  xStopTimeAll = appWidth*0;
  yStopTimeAll = appHeigbt*9/10;
  widthStopTimeAll = appWidth-1;
  heightStopTimeAll = appHeight*1/10;
  
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
  fill(255, 0, 0);
  rect(xStopTime1, yStopTime1, widthSropTime1, heightStopTime1);
  rect(xStopTime2, yStopTime2, widthStopTime2, heightStopTime2);
  rect(xStopTimeAll, yStopTimeAll, widthStopTimeAll, heightStopTimeAll);
  
}
void keyPressed(){
  
}
void mousePressed(){

  if (mouseX>xResetTime1 && mouseX<xResetTime1+widthResetTime1 && mouseY>yResetTime1 && mouseY<yResetTime1+heightResetTime1){
    println("Time 1 Reset");
  }
  if(mouseX>xResetTime2 && mouseX<xResetTime2+widthResetTime2 && mouseY>yResetTime2 && mouseY<yResetTime2+heightResetTime2){
    println("Time 2 Reset");
  }
  if(mouseX>xResetTimeAll && mouseX<xResetTimeAll+widthResetTimeAll && mouseY>yResetTimeAll && mouseY<yResetTimeAll+heightResetTimeAll){
    println("All Time Reset");
  }
  if(mouseX>xStartTime1 && mouseX<xStartTime1+widthStartTime1 && mouseY>yStartTime1 && mouseY<yStartTime1+heightStartTime1){
    println("Time 1 Start");
  }
  if(mouxeX>xStartTime2 && mouseX<xStartTime2+widthStartTime2 && mouseY>yStartTime2 && mouseY<yStartTime2+heightStartTime2){
    println("Time 2 Start");
  }
  if(mouseX>xStartTimeAll && mouseX<xStartTimeAll+widthStartTimeAll && mouseY>yStartTimeAll && mouseY<yStartTimeAll+heightStartTimeAll){
    println("Äll Time Start");
  }
  if(mouseX>xStopTime1 && mouseX<xStopTime1+widthStopTime1 && mouseY>yStopTime1 && mouseY<yStopTime1+heightStopTime1){
    println("Time 1 Stop");
  }
  if(mouseX>xStopTime2 && mouseX<xStopTime2+widthStopTime2 && mouseY>yStopTime2 && moueY<yStopTime1+heightStopTime1){
    println("Time 2 Stop");
  }
  if(mouseX>xStopTimeAll && mouseX<xStopTimeAll+widthStopTime1 && mouseY>yStopTimeAll && mouseY<yStopTimeAll+heightStopTimeAll){
    println("Time All Stop");
  }
}
