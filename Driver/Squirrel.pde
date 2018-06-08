class Squirrel extends Enemy {

public Squirrel(){
HP = (int)random(300,400);
withstoodCuteness = (int)random(300,400);
name = "squirrel";
attackStrength= (int)random(3,10);
}

//methods

public String winMessage(){
String msg = "The squirrel defeated the dog!";
return msg;
}

public String loseMessage(){
String msg = "The dog defeated the squirrel!";
return msg;
}

} // end class Squirrel
