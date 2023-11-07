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

boolean time1Start = false;
boolean time2Start = false;
boolean timeAllStart = false;
boolean resetTime1 = false;
boolean resetTime2 = false;
boolean resetAllTime = false
boolean typeTime1 = false

String time1 = "10:00", time2 = "2:00";

PFont text;

void setup(){

  println("Width:"+width, "\t", "Height:"+height);
  println("Display Width: "+displayWidth, "\t Display Height: "+displayHeight);
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

  text = createFont("ArialMT", 55);
  
}
void draw(){

  if(resetTime1 == true){
    println("resetTime1 acknowledged");
    resetTime1 = false;
  }
  if(resetTime2 == true){
    println("resetTime2 acknowledged");
    resetTime2 = false;
  }
  if(ResetAllTime == true){
    println("resetAllTime acknowledged");
    resetAllTime = false;
    resetTime2 = true;
    resetTime1 = true;
  }

  if(time1Start == true || time2Start == true || timeAllStart == true){
    timeAllStart = true;
  }else{
    timeAllStart = false;
  }

  fill(0, 0, 0);
  textAlign(CENTER, CENTER);
  textFont(text, 50);
  text(time1, xTime1, yTime1, widthTime1, heightTime1);
  textAlign(CENTER, CENTER);
  textFont(text, 50);
  text(time2, xTime2, yTime2, widthTime2, heightTime2);

  fill(255, 255, 255);
  rect(xTime1, yTime1, widthTime1, heightTime1);
  rect(xTime2, yTime2, widthTime2, heightTime2);

  fill(0, 255, 0);
  if(time1Start == true){
    rect(xStartTime1, yStartTime1, widthStartTime1, heightStartTime1);
  }
  if(time2Start == true){
    rect(xStartTime2, yStartTime2, widthStartTime2, heightStartTime2);
  }
  if(timeAllStart == true){
    rect(xStartTimeAll, yStartTimeAll, widthStartTimeAll, heightStartTimeAll);
  }
  fill(0, 0, 255);
  rect(xResetTime1, yResetTime1, widthResetTime1, heightResetTime1);
  rect(xResetTime2, yRestTime2, widthResetTime2, heightResetTime2);
  rect(xResetTimeAll, yResetTimeAll, widthResetTimeAll, heightResetTimeAll);

  fill(255, 0, 0);
  if(time1Start == false){
    rect(xStopTime1, yStopTime1, widthStopTime1, heightStopTime1);
  }
  if(time2Start == false){
    rect(xStopTime2, yStopTime2, widthStopTime2, heightStopTime2);
  }
  if(timeAllStart == false){
    rect(xStopTimeAll, yStopTimeAll, widthStopTimeAll, heightStopTimeAll);
  }
  
}
void mousePressed(){

  if (mouseX>xResetTime1 && mouseX<xResetTime1+widthResetTime1 && mouseY>yResetTime1 && mouseY<yResetTime1+heightResetTime1){
    println("Time 1 Reset");
    resetTime1 = true;
  }
  if(mouseX>xResetTime2 && mouseX<xResetTime2+widthResetTime2 && mouseY>yRestTime2 && mouseY<yRestTime2+heightResetTime2){
    println("Time 2 Reset");
    resetTime2 = true;
  }
  if(mouseX>xResetTimeAll && mouseX<xResetTimeAll+widthResetTimeAll && mouseY>yResetTimeAll && mouseY<yResetTimeAll+heightResetTimeAll){
    println("Time All Reset");
    resetAllTime = true;
  }
  if(time1Start == true && mouseX>xStartTime1 && mouseX<xStartTime1+widthStartTime1 && mouseY>yStartTime1 && mouseY<yStartTime1+heightStartTime1){
    println("Time 1 Start");
    time1Start = false;
  }
  if(time2Start == true && mouseX>xStartTime2 && mouseX<xStartTime2+widthStartTime2 && mouseY>yStartTime2 && mouseY<yStartTime2+heightStartTime2){
    println("Time 2 Start");
    time2Start = false;
  }
  if(timeAllStart == true && mouseX>xStartTimeAll && mouseX<xStartTimeAll+widthStartTimeAll && mouseY>yStartTimeAll && mouseY<yStartTimeAll+heightStartTimeAll){
    println("Time All Start");
    timeAllStart = false;
    time1Start = false;
    time2Start = false;
  }
  if(time1Start == false && mouseX>xStopTime1 && mouseX<xStopTime1+widthStopTime1 && mouseY>yStopTime1 && mouseY<yStopTime1+heightStopTime1){
    println("Time 1 Stop");
    time1Start = true;
  }
  if(time2Start == false && mouseX>xStopTime2 && mouseX<xStopTime2+widthStopTime2 && mouseY>yStopTime2 && mouseY<yStopTime1+heightStopTime1){
    println("Time 2 Stop");
    time2Start = true;
  }
  if(timeAllStart == false && mouseX>xStopTimeAll && mouseX<xStopTimeAll+widthStopTimeAll && mouseY>yStopTimeAll && mouseY<yStopTimeAll+heightStopTimeAll){
    println("Time All Stop");
    timeAllStart = true;
    time1Start = true;
    time1Start = true;
  }
}
void keypessed(){
  if(keyCode == ALT && key == "1" || key == "2"){
    if(key == "1"){
      typeTime1 = true;
      println("typeing in timer 1");
    }
    if(key == "2"){
`	    typeTime1 = false;
      println("typing in timer 2");
    }
  }
}
