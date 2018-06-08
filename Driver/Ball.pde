class Ball extends Enemy {

public Ball(){
HP = (int)random(50,100);
withstoodCuteness = (int)random(50,100);
attackStrength= (int)random(1,5);
name = "ball";
}

//methods

public String winMessage(){
String msg = "The ball defeated the dog!";
return msg;
}

public String loseMessage(){
String msg = "The dog defeated the ball!";
return msg;
}

} // end class Ball
