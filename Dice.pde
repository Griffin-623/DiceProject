
Dice bob;
int sum = 0;
class Dice {
  int diceValue,myX,myY;
  Dice(int x,int y){

    myX =x;
    myY = y;
    diceValue = 0;
  }
  
  void Roll(){
    
    diceValue = ((int)(Math.random()*6)+1);
    

    sum = diceValue + sum;
 
  }
  void show(){
    fill(20,50,255);
    rect(myX,myY,50,50);
    fill(0);
    if(diceValue == 1||diceValue==3||diceValue==5){
      ellipse(myX+25,myY+25,5,5);
    }
    if(diceValue == 2||diceValue==3||diceValue==4||diceValue==5||diceValue==6){
      ellipse(myX+10,myY+10,5,5);
      ellipse(myX+40,myY+40,5,5);
    }
    if(diceValue==4||diceValue==5||diceValue==6){
       ellipse(myX+40,myY+10,5,5);
      ellipse(myX+10,myY+40,5,5);
    }
    if(diceValue==6){
      ellipse(myX+10,myY+25,5,5);
      ellipse(myX+40,myY+25,5,5);
    }
    
  }


}




void draw(){
  background(255,255,255);  
    fill(0);
    textSize(20);
    text(sum,197.5,450);
    sum = 0;
    
    
  for(int g = 0;g<400;g = g +60){
    for(int i = 0;i<400;i = i +60){
    bob = new Dice(10+i,10+g);
    
    bob.Roll();
   bob.show(); 
   
  }
    }
  
  



}

void mousePressed(){
 
  redraw();
    
 

}
void setup(){
 noLoop();




size(430,460);
}
