float xTime1, yTime1, widthTime1, heightTime1;
float xTime2, yTime2, widthTime2, heightTime2;
float xStartTime1, yStartTime1, widthStartTime1, heightStartTime1;
float xStartTime2, yStartTime2, widthStartTime2, heightStartTime2;
float xStartTimeAll, yStartTimeAll, widthStartTimeAll, heightStartTimeAll;
float xStopTime1, yStopTime1, widthStopTime1, heightStopTime1;
float xStopTime2, yStopTime2, widthStopTime2, heightStopTime2;
float xStopTimeAll, yStopTimeAll, widthStopTimeAll, heightStopTimeAll;
float xResetTime1, yResetTime1, widthResetTime1, heightResetTime1;
float xResetTime2, yRestTime2, widthResetTime2, heightResetTime2;
float xResetTimeAll, yResetTimeAll, widthResetTimeAll, heightResetTimeAll;

int appWidth, appHeight;
int time1Defalt = 0;
int time2Defalt = 0;
int test;

boolean time1Start = false;
boolean time2Start = false;
boolean timeAllStart = false;
boolean resetTime1 = false;
boolean resetTime2 = false;
boolean resetAllTime = false;
boolean typeTime1 = false;
boolean typeTime2 = false;

String time1 = "10:00", time2 = "2:00";
String stop = "Stop", stopAll = "Stop All";
String reset = "Reset", resetAll = "Reset All";
String start = "Start", startAll = "StartAll";

PFont text;

void setup(){
  
  frameRate(60);

  println("Width:"+width, "\t", "Height:"+height);
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
  
  xResetTimeAll = appWidth*0;
  yResetTimeAll = appHeight*8/10;
  widthResetTimeAll = appWidth-1;
  heightResetTimeAll = appHeight*1/10;

  xResetTimeAll = appWidth*0;
  yResetTimeAll = appHeight*8/10;
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
  widthStopTime1 = appWidth*1/12;
  heightStopTime1 = appHeight*1/12;

  xStopTime1 = appWidth*0;
  yStopTime1 = appHeight*7/12;
  widthStopTime1 = appWidth*1/12;
  heightStopTime1 = appHeight*1/12;

  xStopTime2 = appWidth*1/2;
  yStopTime2 = appHeight*7/12;
  widthStopTime2 = appWidth*1/12;
  heightStopTime2 = appHeight*1/12;
  
  xStopTimeAll = appWidth*0;
  yStopTimeAll = appHeight*9/10;
  widthStopTimeAll = appWidth-1;
  heightStopTimeAll = appHeight*1/10;
  
  test = 59;

  text = createFont("ArialMT", 55);
}
void draw(){
      
  if(resetTime1 == true){
    resetTime1 = false;
  }
  if(resetTime2 == true){
    resetTime2 = false;
  }
  if(resetAllTime == true){
    resetAllTime = false;
    resetTime2 = true;
    resetTime1 = true;
  }
  if(time1Start == true || time2Start == true){
    timeAllStart = true;
  }

  fill(255);
  rect(xTime1, yTime1, widthTime1, heightTime1);
  rect(xTime2, yTime2, widthTime2, heightTime2);

  fill(0, 255, 0);
  if(time1Start == true){
    rect(xStartTime1, yStartTime1, widthStartTime1, heightStartTime1);
  }else{
    rect(xStopTime1, yStopTime1, widthStopTime1, heightStopTime1);
  }
  if(time2Start == true){
    rect(xStartTime2, yStartTime2, widthStartTime2, heightStartTime2);
  }else{
    rect(xStopTime2, yStopTime2, widthStopTime2, heightStopTime2);
  }
  if(timeAllStart == true){
    rect(xStartTimeAll, yStartTimeAll, widthStartTimeAll, heightStartTimeAll);
  }else{
    rect(xStopTimeAll, yStopTimeAll, widthStopTimeAll, heightStopTimeAll);
  }
  
  fill(0, 0, 255);
  rect(xResetTime1, yResetTime1, widthResetTime1, heightResetTime1);
  rect(xResetTime2, yRestTime2, widthResetTime2, heightResetTime2);
  rect(xResetTimeAll, yResetTimeAll, widthResetTimeAll, heightResetTimeAll);
  fill(0);
  textAlign(CENTER, CENTER);
  textFont(text, 25);
  text(time1, xTime1, yTime1, widthTime1, heightTime1);
  text(time2, xTime2, yTime2, widthTime2, heightTime2);
  text(reset, xResetTime1, yResetTime1, widthResetTime1, heightResetTime1);
  text(reset, xResetTime2, yRestTime2, widthResetTime2, heightResetTime2);
  text(resetAll, xResetTimeAll, yResetTimeAll, widthResetTimeAll, heightResetTimeAll);
  
  if(time1Start == true){
    text(start, xStartTime1, yStartTime1, widthStartTime1, heightStartTime1);
  }else{
    text(stop, xStopTime1, yStopTime1, widthStopTime1, heightStopTime1);
  }
  
  if(time2Start == true){
    text(start, xStartTime2, yStartTime2, widthStartTime2, heightStartTime2);
  }else{
    text(stop, xStartTime2, yStartTime2, widthStartTime2, heightStartTime2);
  }
  
  if(timeAllStart == true){
    text(startAll, xStartTimeAll, yStartTimeAll, widthStartTimeAll, heightStartTimeAll);
  }else{
    text(stopAll, xStartTimeAll, yStartTimeAll, widthStartTimeAll, heightStartTimeAll);
  }
  
}
void mousePressed(){
  if(mouseX>xTime1 && mouseX<xTime1+widthTime1 && mouseY>yTime1 && mouseY<yTime1+heightTime1){
    typeTime1 = false;
  }
  if(mouseX>xTime2 && mouseX<xTime2+widthTime2 && mouseY>yTime2 && mouseY<yTime2+heightTime2){
    typeTime2 = true;
  }
}
void keyPressed(){
    if(time1Start == true && key == LEFT){
      time1Start = false;
      println(time1Start);
    }else if(time1Start == false && key == LEFT){
      time1Start = false;
      println(time1Start);
    }
    if(time2Start == true && key == RIGHT){
      time2Start = false;
      println(time2Start);
    }else if(time2Start == false && key == RIGHT){
      time2Start = false;
      println(time2Start);
    }
  }
