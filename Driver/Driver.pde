/*Maryann Foley, Shruthi Venkata
 APCS pd8
 Driver class*/

import java.util.Stack;

//instance vars
ALHeap cuteH;
ALHeap agileH;
ALHeap loudH;
ALHeap powerH;
Stack<Enemy> ennemis;
Enemy current;
int whoseMove; //0 is dogs move, 1 is enemy's move, 2 means enemy has just been defeated
Dog currDog;

color color1;
color color2;
color color3;
color color4;

void setup() {
  size(1000, 700);
  background(color(0,255,0));
  ennemis=new Stack<Enemy>();
  println("Welcome to the Dangerous Dog Park, where your dogs come for a thriller....<more intro + directions>");
  cuteH = new ALHeap(0);
  agileH = new ALHeap(1);
  loudH =  new ALHeap(2);
  powerH = new ALHeap(3);
  Enemy temp = new Ball();
  ennemis.push(temp);
  ennemis.push(new Ball());
  ennemis.push(new Ball());
  ennemis.push(new Ball());
  Dog chub = new Dog("Charlie");
  cuteH.add(chub);
  agileH.add(chub);
  loudH.add(chub);
  powerH.add(chub);
  currDog=chub;
  whoseMove=0;
  current = ennemis.pop();
  color1= new color(193, 81, 219);
  color2= new color(107, 198, 198);
  color3=new color(158, 193, 116);
  color4=new color(255, 172, 48);
}

void next() {
  if (ennemis.isEmpty()){
    println("You won!");
    delay(600);
    whoseMove=3;
  }
  Enemy current= ennemis.pop();
  println("Here are the stats of your next enemy!");
  println("Health: " + current.getHP());
  println("Maximum cuteness tolerated: " + current.getWithstoodCute());
  println("Please pick which dog you would like: the most cute (0), agile (1), loud (2) or powerful (3)");
  int randName = (int)random(0,20);
  if (randName==0){
    Dog temp = new Dog("Buddie");
  }
  if (randName==1){
    Dog temp = new Dog("Groth");
  }
  if (randName==2){
    Dog temp = new Dog("Sammie");
  }
  if (randName==3){
    Dog temp = new Dog("Chester");
  }
  if (randName==4){
    Dog temp = new Dog("Bailey");
  }
  if (randName==5){
    Dog temp = new Dog("Luna");
  }
  if (randName==6){
    Dog temp = new Dog("Apollo");
  }
  if (randName==7){
    Dog temp = new Dog("Clifford");
  }
  if (randName==8){
    Dog temp = new Dog("Ernie");
  }
  if (randName==9){
    Dog temp = new Dog("Griffin");
  }
  if (randName==10){
    Dog temp = new Dog("Haring");
  }
  if (randName==11){
    Dog temp = new Dog("Grant");
  }
  if (randName==12){
    Dog temp = new Dog("Dali");
  }
  if (randName==13){
    Dog temp = new Dog("Valazquez");
  }
  if (randName==14){
    Dog temp = new Dog("Pawcaso");
  }
  if (randName==15){
    Dog temp = new Dog("JK Growling");
  }
  if (randName==16){
    Dog temp = new Dog("Billie Howliday");
  }
  if (randName==17){
    Dog temp = new Dog("Snoop Dog");
  }
  if (randName==18){
    Dog temp = new Dog("bork master 9000");
  }
  if (randName==19){
    Dog temp = new Dog("Bert");
  }
  cuteH.add(temp);
  agileH.add(temp);
  loudH.add(temp);
  powerH.add(temp);
}

void draw() {
  clear();
  background(color(0,255,0));
  currDog.displayDog();
  displayEnemy();
  if (whoseMove==3){
    exit();
  }
  if (whoseMove==1) {
    currDog.setScared(current.attack());
    whoseMove=0;
  }
  if (whoseMove ==2) {
    println("You defeated an enemy!");
    next();
    //area for user input
  }
  if (whoseMove==0){ // b u t t o n s
    fill(color1);
    rect(250,175,250,175,10);
    fill(color2);
    rect(250,525,250,175,10);
    fill(color3);
    rect(750,175,250,175,10);
    fill(color4);
    rect(750,525,250,175,10);
  }
}

void mouseClicked() {
  if (whoseMove == 2) { //TOP LEFT: CUTE, TOP RIGHT:LOUD, BOTTOM LEFT: AGILE, BOTTOM RIGHT: POWER
     if(mouseX < 500 && mouseY < 350){
       currDog=cuteH.peekMin();
     }
     if(mouseX < 500 && mouseY > 350){
       currDog=agileH.peekMin();
     }
     if(mouseX > 500 && mouseY < 350){
       currDog=loudH.peekMin();
     }
     if(mouseX > 500 && mouseY > 350){
       currDog=powerH.peekMin();
     }
     whoseMove=0;
  }

  if (whoseMove == 0) { //TOP LEFT: BITE, TOP RIGHT:Bark, BOTTOM LEFT: POUNCE, BOTTOM RIGHT: CHARM
    if (currDog.isDefeated()){
      println("Your dog has been defeated! Try again!");
      delay(500);
      whoseMove=3;
    }
     if(mouseX < 500 && mouseY < 350){
       current.modifyHP(currDog.getPwr());
       current.modifyCute(-1*currDog.getPwr());
       current.modifyScared(currDog.getPwr());
     }
     if(mouseX < 500 && mouseY > 350){
       current.modifyHP(currDog.getAgility());
       current.modifyScared(currDog.getAgility());
     }
     if(mouseX > 500 && mouseY < 350){
       current.modifyCute(-1*currDog.getLoud());
       current.modifyScared(currDog.getLoud());
     }
     if(mouseX > 500 && mouseY > 350){
       current.modifyCute(currDog.getCuteness());
       current.modifyScared(-1*currDog.getCuteness());
     }
  }
}

public void displayEnemy(){
  fill(color(255,0,0));
  ellipse(750,350,100,100);

}
