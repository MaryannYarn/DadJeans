class Cat extends Enemy {

public Cat(){
HP = (int)random(250,300);
withstoodCuteness = (int)random(250,300);
name = "cat";
}

//methods

public String winMessage(){
String msg = "The cat defeated the dog!";
return msg;
}

public String loseMessage(){
String msg = "The dog defeated the cat!";
return msg;
}

} // end class Cat
