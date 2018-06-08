class DogCatcher extends Enemy {

public DogCatcher(){
HP = (int)random(300,500);
withstoodCuteness = (int)random(300,500);
name = "Dog catcher";
scared = (int)random(400,700);
}

//methods

public String winMessage(){
String msg = "The dog catcher defeated the dog!";
return msg;
}

public String loseMessage(){
String msg = "The dog defeated the dog catcher!";
return msg;
}

} // end class DogCatcher
