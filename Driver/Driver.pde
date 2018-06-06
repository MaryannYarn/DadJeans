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


void setup() {
  size(1000, 700);
  println("Welcome to the Dangerous Dog Park, where your dogs come for a thriller....<more intro + directions>");
  cuteH = new ALHeap(0);
  agileH = new ALHeap(1);
  loudH =  new ALHeap(2);
  powerH = new ALHeap(3);
  ennemis.add(new Ball());
  ennemis.add(new Ball());
  ennemis.add(new Ball());
  ennemis.add(new Ball());
  Dog chub = new Dog(10, 10, 10, 10, "Charlie");
  cuteH.add(chub);
  agileH.add(chub);
  loudH.add(chub);
  powerH.add(chub);
  currDog=chub;
  whoseMove=0;
}

void next() {
  Enemy current= ennemis.pop();
  println("Here are the stats of your next enemy!");
  println("Health: " + current.getHP());
  println("Maximum cuteness tolerated: " + current.getWithstoodCute());
  println("Please pick which dog you would like: the most cute (0), agile (1), loud (2) or powerful (3)");
}

void draw() {
  if (whoseMove==1) {
    currDog.setScared(current.attack());
  }
  if (whoseMove ==2) {
    println("You defeated an enemy!");
    next();
    //area for user input
  }
}

void mouseClicked() {
  if (whoseMove == 2) { //TOP LEFT: CUTE, TOP RIGHT:LOUD, BOTTOM LEFT: AGILE, BOTTOM RIGHT: POWER
     if(mouseX < 500 && mouseY < 350){
       cuteH.removeMin();
     }
     if(mouseX < 500 && mouseY > 350){
       agileH.removeMin();
     }
     if(mouseX > 500 && mouseY < 350){
       loudH.removeMin();
     }
     if(mouseX > 500 && mouseY > 350){
       powerH.removeMin();
     }
  }
}
