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

color color1; // colors for buttons
color color2;
color color3;
color color4;
int levelCounter;

  PImage img0; //will  be images
  PImage img1;
  PImage img2;
  PImage img3;
  PImage img4;
  PImage img5;

void setup() {
  size(1000, 700);
  background(color(0,255,0));
  ennemis=new Stack<Enemy>();
<<<<<<< HEAD
  println("You came to the Dog Park with your dog walker when suddenly you turn around and they are gone! You must go defeat those who stand in
  the way of you and your dog walker.  Along the way, you will meet more dogs who will help you on your quest. Good luck!");
=======
  println("Welcome to the Dangerous Dog Park, where your dogs come for a thriller.... As your dogs walk through the park, they encounter enemies with different strengths, including attack strength, health points and the amount of cuteness they can withstand. You will have to choose from one of four heaps of dogs to combat this enemy. Click anywhere to continue.");
>>>>>>> 83811195daf6d2ef29fea56b0d1cecef32120adb
  cuteH = new ALHeap(0);
  agileH = new ALHeap(1);
  loudH =  new ALHeap(2);
  powerH = new ALHeap(3);
  ennemis.push(new DogCatcher());
  ennemis.push(new Cat());
  ennemis.push(new Bird());
  ennemis.push(new Squirrel());
  ennemis.push(new Ball());
  Dog chub = new Dog("Charlie",1);// First dog is pre named
  levelCounter=1;
  cuteH.add(chub);
  agileH.add(chub);
  loudH.add(chub);
  powerH.add(chub);
  currDog=chub;
  whoseMove=0;
  current = ennemis.pop();
  color1= color(193, 81, 219);
  color2= color(107, 198, 198);
  color3= color(158, 193, 116);
  color4= color(255, 172, 48);
  img0 = loadImage("http://www.stickpng.com/assets/images/580b585b2edbce24c47b2b90.png");
  img1 = loadImage("http://www.stickpng.com/assets/images/580b57fbd9996e24bc43bcef.png");
  img2 = loadImage("http://webiconspng.com/wp-content/uploads/2017/09/Birds-PNG-Image-62677.png");
  img3 = loadImage("http://www.stickpng.com/assets/images/5a5a8bec14d8c4188e0b08ea.png");
  img4 = loadImage("https://openclipart.org/image/2400px/svg_to_png/252173/Woman-Walking-Dog-Silhouette.png");
  img5 = loadImage("https://data.whicdn.com/images/110263905/large.png");
}

void draw() {
  clear();
  background(color(65, 193, 149));
  currDog.displayDog();
  //displayEnemy();
  image(img5,104,200,img5.width/(1.5),img5.height/(1.5)); // images always there, only one enem at time
  if (current.getName().equals("ball")){
    image(img0,650,250,img0.width/10, img0.height/10);
  }
  else if (current.getName().equals("squirrel")){
    image(img1,650,195,img1.width/4, img1.height/4);
  }
  else if (current.getName().equals("bird")){
    image(img2,610,150,img2.width/7, img2.height/7);
  }
  else if (current.getName().equals("cat")){
    image(img3,600,170,img3.width/4,img3.height/4);
  }
  else if (current.getName().equals("DogCatcher")){
  image(img4,550,50,img4.width/5, img4.height/5);
  }

  if (whoseMove==3){
    exit();
  }
  if (whoseMove==1) {
    if (currDog.isDefeated()){
      println(currDog.loseMessage());
  //    delay(500);
      whoseMove=3;
    }
    if (isEnDefeated()){
      next();
      whoseMove=2;
      return;
    }
  //  println("PRE ENEMY ATTAACC");
//    println(current.stats());
  //  println(currDog.stats());
    currDog.setScared(current.attack());
    whoseMove=0;
    println("POST ENEMY ATTACK");
    println(current.stats());
    println(currDog.stats());
  }

  if (whoseMove==0 || whoseMove ==2){ // b u t t o n s
    fill(color1);
    rect(0,0,200,200,10);
    fill(color2);
    rect(0,500,200,200,10);
    fill(color3);
    rect(800,0,200,200,10);
    fill(color4);
    rect(800,500,200,200,10);
  }
}

void mouseClicked() {
  if (whoseMove == 2) { //TOP LEFT: CUTE, TOP RIGHT:LOUD, BOTTOM LEFT: AGILE, BOTTOM RIGHT: POWER
    println("MOuSE CLICKED 2");
     if(mouseX < 200 && mouseY < 200){
       currDog=cuteH.peekMin();
     }
     if(mouseX < 200 && mouseY > 500){
       currDog=agileH.peekMin();
     }
     if(mouseX > 800 && mouseY < 200){
       currDog=loudH.peekMin();
     }
     if(mouseX > 800 && mouseY > 500){
       currDog=powerH.peekMin();
     }
     whoseMove=0;
  }


  if (whoseMove == 0) { //TOP LEFT: BITE, TOP RIGHT:Bark, BOTTOM LEFT: POUNCE, BOTTOM RIGHT: CHARM
    println("PRE DOG ATTAACC");
    println(current.stats());
    println(currDog.stats());
    println("Press a button to pick your next move: ");
    println("PINK: Bite");
    println("GREEN: Bark");
    println("BLUE: Pounce");
    println("YELLOW: Charm");
    if (currDog.isDefeated()){
      println(currDog.loseMessage());
    //  delay(500);
      whoseMove=3;
    }
    if (isEnDefeated()){
    next();
    whoseMove=2;
    return;
    }
     if(mouseX < 500 && mouseY < 350){ //divides sections of screen
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
     println("STATS AFTER DOG ACTION:");
     println(current.stats());
     println(currDog.stats());
     whoseMove=1;
  }
}


public boolean isEnDefeated(){
  return (current.getHP()<=0 ||current.getWithstoodCute()<=0||current.getScared()<=0); //boolean wether the enemy has or has not died
}

void next() {
  currDog.resetScared();
  //println("UP TO NEXT()");
  if (ennemis.isEmpty()){
    println("You won!");
  //  delay(600);
    exit();
  }
  else{
  current= ennemis.pop();

  println(currDog.winMessage(current.getName()));
  println("Here are the stats of your next enemy!");
  println("Health: " + current.getHP());
  println("Maximum cuteness tolerated: " + current.getWithstoodCute());
  println("Please pick which dog you would like: the most cute (purple), agile (Dark green), loud (blue) or powerful (orange)");
  int randName = (int)random(0,20); //random names
  if (randName==0){
    Dog temp = new Dog("Buddie",levelCounter);
    cuteH.add(temp);
    agileH.add(temp);
    loudH.add(temp);
    powerH.add(temp);
  }
  if (randName==1){
    Dog temp = new Dog("Groth",levelCounter);
    cuteH.add(temp);
    agileH.add(temp);
    loudH.add(temp);
    powerH.add(temp);
  }
  if (randName==2){
    Dog temp = new Dog("Bort Sampson",levelCounter);
    cuteH.add(temp);
    agileH.add(temp);
    loudH.add(temp);
    powerH.add(temp);
  }
  if (randName==3){
    Dog temp = new Dog("Chester",levelCounter);
    cuteH.add(temp);
    agileH.add(temp);
    loudH.add(temp);
    powerH.add(temp);
  }
  if (randName==4){
    Dog temp = new Dog("Bailey",levelCounter);
    cuteH.add(temp);
    agileH.add(temp);
    loudH.add(temp);
    powerH.add(temp);
  }
  if (randName==5){
    Dog temp = new Dog("Luna",levelCounter);
    cuteH.add(temp);
    agileH.add(temp);
    loudH.add(temp);
    powerH.add(temp);
  }
  if (randName==6){
    Dog temp = new Dog("Apollo",levelCounter);
    cuteH.add(temp);
    agileH.add(temp);
    loudH.add(temp);
    powerH.add(temp);
  }
  if (randName==7){
    Dog temp = new Dog("Clifford",levelCounter);
    cuteH.add(temp);
    agileH.add(temp);
    loudH.add(temp);
    powerH.add(temp);
  }
  if (randName==8){
    Dog temp = new Dog("Ernie",levelCounter);
    cuteH.add(temp);
    agileH.add(temp);
    loudH.add(temp);
    powerH.add(temp);
  }
  if (randName==9){
    Dog temp = new Dog("Griffin",levelCounter);
    cuteH.add(temp);
    agileH.add(temp);
    loudH.add(temp);
    powerH.add(temp);
  }
  if (randName==10){
    Dog temp = new Dog("Haring",levelCounter);
    cuteH.add(temp);
    agileH.add(temp);
    loudH.add(temp);
    powerH.add(temp);
  }
  if (randName==11){
    Dog temp = new Dog("Grant",levelCounter);
    cuteH.add(temp);
    agileH.add(temp);
    loudH.add(temp);
    powerH.add(temp);
  }
  if (randName==12){
    Dog temp = new Dog("Dali",levelCounter);
    cuteH.add(temp);
    agileH.add(temp);
    loudH.add(temp);
    powerH.add(temp);
  }
  if (randName==13){
    Dog temp = new Dog("Valazquez",levelCounter);
    cuteH.add(temp);
    agileH.add(temp);
    loudH.add(temp);
    powerH.add(temp);
  }
  if (randName==14){
    Dog temp = new Dog("Pawcaso",levelCounter);
    cuteH.add(temp);
    agileH.add(temp);
    loudH.add(temp);
    powerH.add(temp);
  }
  if (randName==15){
    Dog temp = new Dog("JK Growling",levelCounter);
    cuteH.add(temp);
    agileH.add(temp);
    loudH.add(temp);
    powerH.add(temp);
  }
  if (randName==16){
    Dog temp = new Dog("Billie Howliday",levelCounter);
    cuteH.add(temp);
    agileH.add(temp);
    loudH.add(temp);
    powerH.add(temp);
  }
  if (randName==17){
    Dog temp = new Dog("Snoop Dog",levelCounter);
    cuteH.add(temp);
    agileH.add(temp);
    loudH.add(temp);
    powerH.add(temp);
  }
  if (randName==18){
    Dog temp = new Dog("bork master 9000",levelCounter);
    cuteH.add(temp);
    agileH.add(temp);
    loudH.add(temp);
    powerH.add(temp);
  }
  else{
    Dog temp = new Dog("Bert",levelCounter);
    cuteH.add(temp);
    agileH.add(temp);
    loudH.add(temp);
    powerH.add(temp);
  }

  levelCounter++;
  //println("Hi!");
  //println(cuteH);
}
}
//
