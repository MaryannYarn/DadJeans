class Ball extends Enemy {

public Ball(){
HP = (int)random(50,100);
withstoodCuteness = (int)random(50,100);
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
