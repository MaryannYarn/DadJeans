class Squirrel extends Enemy {

public Squirrel(){
HP = (int)random(150,200);
withstoodCuteness = (int)random(150,200);
name = "squirrel";
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
