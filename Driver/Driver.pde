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

void setup() {
  size(1000, 1000);
  println("Welcome to the Dangerous Dog Park, where your dogs come for a thriller....<more intro + directions>");
  cuteH = new ALHeap(0);
  agileH = new ALHeap(1);
  loudH =  new ALHeap(2);
  powerH = new ALHeap(3);
  ennemis.add(new Ball());
  ennemis.add(new Ball());
  ennemis.add(new Ball());
  ennemis.add(new Ball());
  chub = new Dog()
}

void next() {
 Enemy en = ennemis.pop();
 println("Here are the stats of your next enemy!");
 println("Health: " + en.getHP());
 println("Maximum cuteness tolerated: " + en.getWithstoodCute());
 println("Please pick which dog you would like: the most cute (0), agile (1), loud (2) or powerful (3)");
}