class Bird extends Enemy {

public Bird(){
HP = (int)random(400,450);
withstoodCuteness = (int)random(350,400);
name = "bird";
scared = (int)random(100,150);
attackStrength= (int)random(6,9);
}

//methods

public String winMessage(){
String msg = "The bird defeated the dog!";
return msg;
}

public String loseMessage(){
String msg = "The dog defeated the bird!";
return msg;
}

} // end class Bird
